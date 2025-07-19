package com.digitaltolk.translation.service;

import com.digitaltolk.translation.dto.*;
import com.digitaltolk.translation.entity.Tag;
import com.digitaltolk.translation.entity.TranslationKey;
import com.digitaltolk.translation.repository.TagRepository;
import com.digitaltolk.translation.repository.TranslationKeyRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional
public class TranslationKeyService {
    
    private final TranslationKeyRepository translationKeyRepository;
    private final TagRepository tagRepository;
    
    public List<TranslationKeyDto> getAllTranslationKeys() {
        return translationKeyRepository.findAll()
                .stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }
    
    public TranslationKeyDto getTranslationKeyById(Long id) {
        TranslationKey translationKey = translationKeyRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Translation key not found with id: " + id));
        return toDto(translationKey);
    }
    
    public TranslationKeyDto getTranslationKeyByKey(String key) {
        TranslationKey translationKey = translationKeyRepository.findByKey(key)
                .orElseThrow(() -> new RuntimeException("Translation key not found with key: " + key));
        return toDto(translationKey);
    }
    
    public List<TranslationKeyDto> getTranslationKeysByTags(List<String> tagNames) {
        return translationKeyRepository.findByTagNames(tagNames)
                .stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }
    
    public List<TranslationKeyDto> searchTranslationKeys(String keyword) {
        return translationKeyRepository.findByKeywordInKeyOrDescription(keyword)
                .stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }
    
    public TranslationKeyDto createTranslationKey(CreateTranslationKeyRequest request) {
        if (translationKeyRepository.existsByKey(request.getKey())) {
            throw new RuntimeException("Translation key with key '" + request.getKey() + "' already exists");
        }
        
        TranslationKey translationKey = TranslationKey.builder()
                .key(request.getKey())
                .description(request.getDescription())
                .build();
        
        // Handle tags if provided
        if (request.getTags() != null && !request.getTags().isEmpty()) {
            Set<Tag> tags = new HashSet<>();
            for (String tagName : request.getTags()) {
                Tag tag = tagRepository.findByName(tagName)
                        .orElseGet(() -> {
                            // Create tag if it doesn't exist
                            Tag newTag = Tag.builder().name(tagName).build();
                            return tagRepository.save(newTag);
                        });
                tags.add(tag);
            }
            translationKey.setTags(tags);
        }
        
        TranslationKey savedTranslationKey = translationKeyRepository.save(translationKey);
        return toDto(savedTranslationKey);
    }
    
    public TranslationKeyDto updateTranslationKey(Long id, CreateTranslationKeyRequest request) {
        TranslationKey translationKey = translationKeyRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Translation key not found with id: " + id));
        
        // Check if the new key conflicts with existing translation key (if key is being changed)
        if (!translationKey.getKey().equals(request.getKey()) && translationKeyRepository.existsByKey(request.getKey())) {
            throw new RuntimeException("Translation key with key '" + request.getKey() + "' already exists");
        }
        
        translationKey.setKey(request.getKey());
        translationKey.setDescription(request.getDescription());
        
        // Handle tags update
        if (request.getTags() != null) {
            Set<Tag> tags = new HashSet<>();
            for (String tagName : request.getTags()) {
                Tag tag = tagRepository.findByName(tagName)
                        .orElseGet(() -> {
                            // Create tag if it doesn't exist
                            Tag newTag = Tag.builder().name(tagName).build();
                            return tagRepository.save(newTag);
                        });
                tags.add(tag);
            }
            translationKey.setTags(tags);
        }
        
        TranslationKey savedTranslationKey = translationKeyRepository.save(translationKey);
        return toDto(savedTranslationKey);
    }
    
    public void deleteTranslationKey(Long id) {
        if (!translationKeyRepository.existsById(id)) {
            throw new RuntimeException("Translation key not found with id: " + id);
        }
        translationKeyRepository.deleteById(id);
    }
    
    private TranslationKeyDto toDto(TranslationKey translationKey) {
        Set<String> tagNames = translationKey.getTags() != null ?
                translationKey.getTags().stream()
                        .map(Tag::getName)
                        .collect(Collectors.toSet()) :
                new HashSet<>();
        
        return TranslationKeyDto.builder()
                .id(translationKey.getId())
                .key(translationKey.getKey())
                .description(translationKey.getDescription())
                .createdAt(translationKey.getCreatedAt())
                .tags(tagNames)
                .build();
    }
}