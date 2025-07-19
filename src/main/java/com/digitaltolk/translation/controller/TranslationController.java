package com.digitaltolk.translation.controller;

import com.digitaltolk.translation.dto.CreateTranslationRequest;
import com.digitaltolk.translation.dto.TranslationDto;
import com.digitaltolk.translation.dto.UpdateTranslationRequest;
import com.digitaltolk.translation.service.TranslationService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/translations")
@RequiredArgsConstructor
public class TranslationController {
    
    private final TranslationService translationService;
    
    @GetMapping
    public ResponseEntity<List<TranslationDto>> getAllTranslations() {
        List<TranslationDto> translations = translationService.getAllTranslations();
        return ResponseEntity.ok(translations);
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<TranslationDto> getTranslationById(@PathVariable Long id) {
        TranslationDto translation = translationService.getTranslationById(id);
        return ResponseEntity.ok(translation);
    }
    
    @GetMapping("/key/{key}/locale/{localeCode}")
    public ResponseEntity<TranslationDto> getTranslationByKeyAndLocale(
            @PathVariable String key, 
            @PathVariable String localeCode) {
        TranslationDto translation = translationService.getTranslationByKeyAndLocale(key, localeCode);
        return ResponseEntity.ok(translation);
    }
    
    @GetMapping("/locale/{localeCode}")
    public ResponseEntity<List<TranslationDto>> getTranslationsByLocale(@PathVariable String localeCode) {
        List<TranslationDto> translations = translationService.getTranslationsByLocale(localeCode);
        return ResponseEntity.ok(translations);
    }
    
    @GetMapping("/key/{key}")
    public ResponseEntity<List<TranslationDto>> getTranslationsByKey(@PathVariable String key) {
        List<TranslationDto> translations = translationService.getTranslationsByKey(key);
        return ResponseEntity.ok(translations);
    }
    
    @GetMapping("/by-tags")
    public ResponseEntity<List<TranslationDto>> getTranslationsByTags(@RequestParam List<String> tags) {
        List<TranslationDto> translations = translationService.getTranslationsByTags(tags);
        return ResponseEntity.ok(translations);
    }
    
    @GetMapping("/search")
    public ResponseEntity<List<TranslationDto>> searchTranslations(
            @RequestParam(required = false) String localeCode,
            @RequestParam(required = false) String key,
            @RequestParam(required = false) String content,
            @RequestParam(required = false) List<String> tags) {
        List<TranslationDto> translations = translationService.searchTranslations(localeCode, key, content, tags);
        return ResponseEntity.ok(translations);
    }
    
    @GetMapping("/search/content")
    public ResponseEntity<List<TranslationDto>> searchTranslationsByContent(@RequestParam String content) {
        List<TranslationDto> translations = translationService.searchTranslationsByContent(content);
        return ResponseEntity.ok(translations);
    }
    
    @PostMapping
    public ResponseEntity<TranslationDto> createTranslation(@Valid @RequestBody CreateTranslationRequest request) {
        TranslationDto translation = translationService.createTranslation(request);
        return ResponseEntity.status(HttpStatus.CREATED).body(translation);
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<TranslationDto> updateTranslation(@PathVariable Long id, @Valid @RequestBody UpdateTranslationRequest request) {
        TranslationDto translation = translationService.updateTranslation(id, request);
        return ResponseEntity.ok(translation);
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteTranslation(@PathVariable Long id) {
        translationService.deleteTranslation(id);
        return ResponseEntity.noContent().build();
    }
    
    // Export endpoints for frontend applications
    @GetMapping("/export")
    public ResponseEntity<Map<String, Object>> exportTranslations(@RequestParam(required = false) String locale) {
        Map<String, Object> export = translationService.exportTranslations(locale);
        return ResponseEntity.ok(export);
    }
    
    @GetMapping("/export/detailed")
    public ResponseEntity<Map<String, Object>> exportTranslationsWithTags(
            @RequestParam(required = false) String locale,
            @RequestParam(required = false) List<String> tags) {
        Map<String, Object> export = translationService.exportTranslationsWithTags(locale, tags);
        return ResponseEntity.ok(export);
    }
}