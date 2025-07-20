package com.digitaltolk.translation.controller;

import com.digitaltolk.translation.dto.TranslationRequest;
import com.digitaltolk.translation.dto.TranslationResponse;
import com.digitaltolk.translation.dto.SearchRequest;
import com.digitaltolk.translation.entity.Translation;
import com.digitaltolk.translation.entity.Locale;
import com.digitaltolk.translation.entity.Tag;
import com.digitaltolk.translation.entity.TranslationKey;
import com.digitaltolk.translation.service.TranslationService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import jakarta.validation.Valid;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/translations")
@RequiredArgsConstructor
public class TranslationController {

    private final TranslationService translationService;

    /**
     * Create or update a translation
     */
    @PostMapping
    public ResponseEntity<TranslationResponse> createOrUpdateTranslation(@Valid @RequestBody TranslationRequest request) {
        try {
            Translation translation = translationService.saveTranslation(
                request.getKey(), 
                request.getLocaleCode(), 
                request.getContent()
            );
            return ResponseEntity.ok(mapToResponse(translation));
        } catch (IllegalArgumentException e) {
            return ResponseEntity.badRequest().build();
        }
    }

    /**
     * Get a specific translation by key and locale
     */
    @GetMapping("/{key}/{localeCode}")
    public ResponseEntity<TranslationResponse> getTranslation(
            @PathVariable String key, 
            @PathVariable String localeCode) {
        Optional<Translation> translation = translationService.getTranslation(key, localeCode);
        return translation.map(t -> ResponseEntity.ok(mapToResponse(t)))
                         .orElse(ResponseEntity.notFound().build());
    }

    /**
     * Get all translations for a specific key
     */
    @GetMapping("/key/{key}")
    public ResponseEntity<List<TranslationResponse>> getTranslationsByKey(@PathVariable String key) {
        try {
            List<Translation> translations = translationService.getTranslationsByKey(key);
            List<TranslationResponse> responses = translations.stream()
                    .map(this::mapToResponse)
                    .collect(Collectors.toList());
            return ResponseEntity.ok(responses);
        } catch (IllegalArgumentException e) {
            return ResponseEntity.notFound().build();
        }
    }

    /**
     * Get all translations for a specific locale
     */
    @GetMapping("/locale/{localeCode}")
    public ResponseEntity<List<TranslationResponse>> getTranslationsByLocale(@PathVariable String localeCode) {
        try {
            List<Translation> translations = translationService.getTranslationsByLocale(localeCode);
            List<TranslationResponse> responses = translations.stream()
                    .map(this::mapToResponse)
                    .collect(Collectors.toList());
            return ResponseEntity.ok(responses);
        } catch (IllegalArgumentException e) {
            return ResponseEntity.notFound().build();
        }
    }

    /**
     * Get all translations
     */
    @GetMapping
    public ResponseEntity<List<TranslationResponse>> getAllTranslations() {
        List<Translation> translations = translationService.getAllTranslations();
        List<TranslationResponse> responses = translations.stream()
                .map(this::mapToResponse)
                .collect(Collectors.toList());
        return ResponseEntity.ok(responses);
    }

    /**
     * Search translations by content
     */
    @GetMapping("/search/content")
    public ResponseEntity<List<TranslationResponse>> searchByContent(@RequestParam String query) {
        List<Translation> translations = translationService.searchByContent(query);
        List<TranslationResponse> responses = translations.stream()
                .map(this::mapToResponse)
                .collect(Collectors.toList());
        return ResponseEntity.ok(responses);
    }

    /**
     * Search translations by key pattern
     */
    @GetMapping("/search/key")
    public ResponseEntity<List<TranslationResponse>> searchByKey(@RequestParam String query) {
        List<Translation> translations = translationService.searchByKey(query);
        List<TranslationResponse> responses = translations.stream()
                .map(this::mapToResponse)
                .collect(Collectors.toList());
        return ResponseEntity.ok(responses);
    }

    /**
     * Search translations by tags
     */
    @GetMapping("/search/tags")
    public ResponseEntity<List<TranslationResponse>> searchByTags(@RequestParam String tags) {
        List<String> tagList = Arrays.asList(tags.split(","))
                .stream()
                .map(String::trim)
                .collect(Collectors.toList());
        List<Translation> translations = translationService.searchByTags(tagList);
        List<TranslationResponse> responses = translations.stream()
                .map(this::mapToResponse)
                .collect(Collectors.toList());
        return ResponseEntity.ok(responses);
    }

    /**
     * Generic search endpoint
     */
    @PostMapping("/search")
    public ResponseEntity<List<TranslationResponse>> search(@RequestBody SearchRequest searchRequest) {
        List<Translation> translations;
        
        switch (searchRequest.getSearchType().toLowerCase()) {
            case "content":
                translations = translationService.searchByContent(searchRequest.getQuery());
                break;
            case "key":
                translations = translationService.searchByKey(searchRequest.getQuery());
                break;
            case "tag":
                List<String> tagList = Arrays.asList(searchRequest.getQuery().split(","))
                        .stream()
                        .map(String::trim)
                        .collect(Collectors.toList());
                translations = translationService.searchByTags(tagList);
                break;
            default:
                return ResponseEntity.badRequest().build();
        }
        
        List<TranslationResponse> responses = translations.stream()
                .map(this::mapToResponse)
                .collect(Collectors.toList());
        return ResponseEntity.ok(responses);
    }

    /**
     * Update an existing translation
     */
    @PutMapping("/{key}/{localeCode}")
    public ResponseEntity<TranslationResponse> updateTranslation(
            @PathVariable String key,
            @PathVariable String localeCode,
            @RequestBody String content) {
        try {
            Translation translation = translationService.saveTranslation(key, localeCode, content);
            return ResponseEntity.ok(mapToResponse(translation));
        } catch (IllegalArgumentException e) {
            return ResponseEntity.notFound().build();
        }
    }

    /**
     * Delete a translation
     */
    @DeleteMapping("/{key}/{localeCode}")
    public ResponseEntity<Void> deleteTranslation(
            @PathVariable String key, 
            @PathVariable String localeCode) {
        translationService.deleteTranslation(key, localeCode);
        return ResponseEntity.noContent().build();
    }

    /**
     * Get all locales
     */
    @GetMapping("/locales")
    public ResponseEntity<List<Locale>> getAllLocales() {
        return ResponseEntity.ok(translationService.getAllLocales());
    }

    /**
     * Get all tags
     */
    @GetMapping("/tags")
    public ResponseEntity<List<Tag>> getAllTags() {
        return ResponseEntity.ok(translationService.getAllTags());
    }

    /**
     * Get all translation keys
     */
    @GetMapping("/keys")
    public ResponseEntity<List<TranslationKey>> getAllKeys() {
        return ResponseEntity.ok(translationService.getAllTranslationKeys());
    }

    /**
     * Helper method to map Translation entity to TranslationResponse DTO
     */
    private TranslationResponse mapToResponse(Translation translation) {
        return TranslationResponse.builder()
                .id(translation.getId())
                .key(translation.getTranslationKey().getKey())
                .localeCode(translation.getLocale().getCode())
                .localeName(translation.getLocale().getName())
                .content(translation.getContent())
                .updatedAt(translation.getUpdatedAt())
                .build();
    }
}