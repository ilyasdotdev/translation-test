package com.digitaltolk.translation.service;

import com.digitaltolk.translation.dto.*;
import com.digitaltolk.translation.entity.Locale;
import com.digitaltolk.translation.entity.Tag;
import com.digitaltolk.translation.entity.Translation;
import com.digitaltolk.translation.entity.TranslationKey;
import com.digitaltolk.translation.repository.LocaleRepository;
import com.digitaltolk.translation.repository.TranslationKeyRepository;
import com.digitaltolk.translation.repository.TranslationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional
public class TranslationService {
    
    private final TranslationRepository translationRepository;
    private final TranslationKeyRepository translationKeyRepository;
    private final LocaleRepository localeRepository;
    
    public List<TranslationDto> getAllTranslations() {
        return translationRepository.findAll()
                .stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }
    
    public TranslationDto getTranslationById(Long id) {
        Translation translation = translationRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Translation not found with id: " + id));
        return toDto(translation);
    }
    
    public TranslationDto getTranslationByKeyAndLocale(String key, String localeCode) {
        Translation translation = translationRepository.findByTranslationKeyKeyAndLocaleCode(key, localeCode)
                .orElseThrow(() -> new RuntimeException("Translation not found for key: " + key + " and locale: " + localeCode));
        return toDto(translation);
    }
    
    public List<TranslationDto> getTranslationsByLocale(String localeCode) {
        return translationRepository.findByLocaleCode(localeCode)
                .stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }
    
    public List<TranslationDto> getTranslationsByKey(String key) {
        return translationRepository.findByTranslationKeyKey(key)
                .stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }
    
    public List<TranslationDto> getTranslationsByTags(List<String> tagNames) {
        return translationRepository.findByTagNames(tagNames)
                .stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }
    
    public List<TranslationDto> searchTranslationsByContent(String content) {
        return translationRepository.findByContentContaining(content)
                .stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }
    
    public List<TranslationDto> searchTranslations(String localeCode, String key, String content, List<String> tagNames) {
        List<Translation> translations;
        
        if (tagNames != null && !tagNames.isEmpty()) {
            translations = translationRepository.findByLocaleAndTags(localeCode, tagNames);
        } else {
            translations = translationRepository.findByFilters(localeCode, key, content);
        }
        
        return translations.stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }
    
    public TranslationDto createTranslation(CreateTranslationRequest request) {
        // Check if translation already exists for this key and locale
        Optional<Translation> existingTranslation = translationRepository
                .findByTranslationKeyKeyAndLocaleCode(request.getKey(), request.getLocaleCode());
        
        if (existingTranslation.isPresent()) {
            throw new RuntimeException("Translation already exists for key '" + request.getKey() + 
                    "' and locale '" + request.getLocaleCode() + "'");
        }
        
        // Get or create translation key
        TranslationKey translationKey = translationKeyRepository.findByKey(request.getKey())
                .orElseGet(() -> {
                    TranslationKey newKey = TranslationKey.builder()
                            .key(request.getKey())
                            .build();
                    return translationKeyRepository.save(newKey);
                });
        
        // Get locale
        Locale locale = localeRepository.findByCode(request.getLocaleCode())
                .orElseThrow(() -> new RuntimeException("Locale not found with code: " + request.getLocaleCode()));
        
        Translation translation = Translation.builder()
                .translationKey(translationKey)
                .locale(locale)
                .content(request.getContent())
                .build();
        
        Translation savedTranslation = translationRepository.save(translation);
        return toDto(savedTranslation);
    }
    
    public TranslationDto updateTranslation(Long id, UpdateTranslationRequest request) {
        Translation translation = translationRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Translation not found with id: " + id));
        
        translation.setContent(request.getContent());
        Translation savedTranslation = translationRepository.save(translation);
        return toDto(savedTranslation);
    }
    
    public void deleteTranslation(Long id) {
        if (!translationRepository.existsById(id)) {
            throw new RuntimeException("Translation not found with id: " + id);
        }
        translationRepository.deleteById(id);
    }
    
    // Export translations for frontend consumption
    public Map<String, Object> exportTranslations(String localeCode) {
        List<Translation> translations;
        
        if (localeCode != null) {
            translations = translationRepository.findByLocaleCode(localeCode);
        } else {
            translations = translationRepository.findAll();
        }
        
        Map<String, Object> result = new HashMap<>();
        
        // Group by locale
        Map<String, Map<String, String>> groupedByLocale = translations.stream()
                .collect(Collectors.groupingBy(
                        t -> t.getLocale().getCode(),
                        Collectors.toMap(
                                t -> t.getTranslationKey().getKey(),
                                Translation::getContent,
                                (existing, replacement) -> replacement
                        )
                ));
        
        result.put("translations", groupedByLocale);
        result.put("lastUpdated", new Date());
        
        return result;
    }
    
    // Export translations with tags for more detailed consumption
    public Map<String, Object> exportTranslationsWithTags(String localeCode, List<String> tagNames) {
        List<Translation> translations;
        
        if (tagNames != null && !tagNames.isEmpty()) {
            translations = translationRepository.findByLocaleAndTags(localeCode, tagNames);
        } else if (localeCode != null) {
            translations = translationRepository.findByLocaleCode(localeCode);
        } else {
            translations = translationRepository.findAll();
        }
        
        Map<String, Object> result = new HashMap<>();
        
        // Create detailed structure with tags
        List<Map<String, Object>> detailedTranslations = translations.stream()
                .map(t -> {
                    Map<String, Object> item = new HashMap<>();
                    item.put("key", t.getTranslationKey().getKey());
                    item.put("locale", t.getLocale().getCode());
                    item.put("content", t.getContent());
                    item.put("tags", t.getTranslationKey().getTags().stream()
                            .map(Tag::getName)
                            .collect(Collectors.toSet()));
                    item.put("updatedAt", t.getUpdatedAt());
                    return item;
                })
                .collect(Collectors.toList());
        
        result.put("translations", detailedTranslations);
        result.put("lastUpdated", new Date());
        
        return result;
    }
    
    private TranslationDto toDto(Translation translation) {
        Set<String> tagNames = translation.getTranslationKey().getTags() != null ?
                translation.getTranslationKey().getTags().stream()
                        .map(Tag::getName)
                        .collect(Collectors.toSet()) :
                new HashSet<>();
        
        return TranslationDto.builder()
                .id(translation.getId())
                .key(translation.getTranslationKey().getKey())
                .localeCode(translation.getLocale().getCode())
                .localeName(translation.getLocale().getName())
                .content(translation.getContent())
                .updatedAt(translation.getUpdatedAt())
                .tags(tagNames)
                .build();
    }
}