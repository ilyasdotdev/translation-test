package com.digitaltolk.translation.service;

import com.digitaltolk.translation.entity.*;
import com.digitaltolk.translation.repository.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
@Transactional
public class TranslationService {

    private final TranslationRepository translationRepository;
    private final TranslationKeyRepository translationKeyRepository;
    private final LocaleRepository localeRepository;
    private final TagRepository tagRepository;
    private final TranslationKeyTagRepository translationKeyTagRepository;

    /**
     * Create or update a translation for a specific key and locale
     */
    public Translation saveTranslation(String key, String localeCode, String content) {
        TranslationKey translationKey = translationKeyRepository.findByKey(key)
                .orElseThrow(() -> new IllegalArgumentException("Translation key not found: " + key));
        
        Locale locale = localeRepository.findByCode(localeCode)
                .orElseThrow(() -> new IllegalArgumentException("Locale not found: " + localeCode));

        Optional<Translation> existingTranslation = translationRepository
                .findByTranslationKeyAndLocale(translationKey, locale);

        if (existingTranslation.isPresent()) {
            // Update existing translation
            Translation translation = existingTranslation.get();
            translation.setContent(content);
            translation.setUpdatedAt(LocalDateTime.now());
            return translationRepository.save(translation);
        } else {
            // Create new translation
            Translation translation = Translation.builder()
                    .translationKey(translationKey)
                    .locale(locale)
                    .content(content)
                    .updatedAt(LocalDateTime.now())
                    .build();
            return translationRepository.save(translation);
        }
    }

    /**
     * Get translation by key and locale code
     */
    @Transactional(readOnly = true)
    public Optional<Translation> getTranslation(String key, String localeCode) {
        Optional<TranslationKey> translationKey = translationKeyRepository.findByKey(key);
        Optional<Locale> locale = localeRepository.findByCode(localeCode);

        if (translationKey.isPresent() && locale.isPresent()) {
            return translationRepository.findByTranslationKeyAndLocale(translationKey.get(), locale.get());
        }
        return Optional.empty();
    }

    /**
     * Get all translations for a specific key
     */
    @Transactional(readOnly = true)
    public List<Translation> getTranslationsByKey(String key) {
        TranslationKey translationKey = translationKeyRepository.findByKey(key)
                .orElseThrow(() -> new IllegalArgumentException("Translation key not found: " + key));
        
        return translationRepository.findByTranslationKey(translationKey);
    }

    /**
     * Get all translations for a specific locale
     */
    @Transactional(readOnly = true)
    public List<Translation> getTranslationsByLocale(String localeCode) {
        Locale locale = localeRepository.findByCode(localeCode)
                .orElseThrow(() -> new IllegalArgumentException("Locale not found: " + localeCode));
        
        return translationRepository.findByLocale(locale);
    }

    /**
     * Create a new translation key
     */
    public TranslationKey createTranslationKey(String key, String description) {
        if (translationKeyRepository.findByKey(key).isPresent()) {
            throw new IllegalArgumentException("Translation key already exists: " + key);
        }

        TranslationKey translationKey = TranslationKey.builder()
                .key(key)
                .description(description)
                .build();
        
        return translationKeyRepository.save(translationKey);
    }

    /**
     * Create a new locale
     */
    public Locale createLocale(String code, String name) {
        if (localeRepository.findByCode(code).isPresent()) {
            throw new IllegalArgumentException("Locale already exists: " + code);
        }

        Locale locale = Locale.builder()
                .code(code)
                .name(name)
                .build();
        
        return localeRepository.save(locale);
    }

    /**
     * Create a new tag
     */
    public Tag createTag(String name) {
        if (tagRepository.findByName(name).isPresent()) {
            throw new IllegalArgumentException("Tag already exists: " + name);
        }

        Tag tag = Tag.builder()
                .name(name)
                .build();
        
        return tagRepository.save(tag);
    }

    /**
     * Add a tag to a translation key
     */
    public TranslationKeyTag addTagToTranslationKey(String key, String tagName) {
        TranslationKey translationKey = translationKeyRepository.findByKey(key)
                .orElseThrow(() -> new IllegalArgumentException("Translation key not found: " + key));
        
        Tag tag = tagRepository.findByName(tagName)
                .orElseThrow(() -> new IllegalArgumentException("Tag not found: " + tagName));

        TranslationKeyTag translationKeyTag = TranslationKeyTag.builder()
                .translationKey(translationKey)
                .tag(tag)
                .build();
        
        return translationKeyTagRepository.save(translationKeyTag);
    }

    /**
     * Remove a tag from a translation key
     */
    public void removeTagFromTranslationKey(String key, String tagName) {
        TranslationKey translationKey = translationKeyRepository.findByKey(key)
                .orElseThrow(() -> new IllegalArgumentException("Translation key not found: " + key));
        
        Tag tag = tagRepository.findByName(tagName)
                .orElseThrow(() -> new IllegalArgumentException("Tag not found: " + tagName));

        translationKeyTagRepository.deleteByTranslationKeyAndTag(translationKey, tag);
    }

    /**
     * Delete a translation
     */
    public void deleteTranslation(String key, String localeCode) {
        Optional<Translation> translation = getTranslation(key, localeCode);
        if (translation.isPresent()) {
            translationRepository.delete(translation.get());
        }
    }
}