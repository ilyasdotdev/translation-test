package com.digitaltolk.translation.controller;

import com.digitaltolk.translation.dto.CreateTranslationKeyRequest;
import com.digitaltolk.translation.dto.TranslationKeyDto;
import com.digitaltolk.translation.service.TranslationKeyService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/translation-keys")
@RequiredArgsConstructor
public class TranslationKeyController {
    
    private final TranslationKeyService translationKeyService;
    
    @GetMapping
    public ResponseEntity<List<TranslationKeyDto>> getAllTranslationKeys() {
        List<TranslationKeyDto> translationKeys = translationKeyService.getAllTranslationKeys();
        return ResponseEntity.ok(translationKeys);
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<TranslationKeyDto> getTranslationKeyById(@PathVariable Long id) {
        TranslationKeyDto translationKey = translationKeyService.getTranslationKeyById(id);
        return ResponseEntity.ok(translationKey);
    }
    
    @GetMapping("/key/{key}")
    public ResponseEntity<TranslationKeyDto> getTranslationKeyByKey(@PathVariable String key) {
        TranslationKeyDto translationKey = translationKeyService.getTranslationKeyByKey(key);
        return ResponseEntity.ok(translationKey);
    }
    
    @GetMapping("/search")
    public ResponseEntity<List<TranslationKeyDto>> searchTranslationKeys(@RequestParam String keyword) {
        List<TranslationKeyDto> translationKeys = translationKeyService.searchTranslationKeys(keyword);
        return ResponseEntity.ok(translationKeys);
    }
    
    @GetMapping("/by-tags")
    public ResponseEntity<List<TranslationKeyDto>> getTranslationKeysByTags(@RequestParam List<String> tags) {
        List<TranslationKeyDto> translationKeys = translationKeyService.getTranslationKeysByTags(tags);
        return ResponseEntity.ok(translationKeys);
    }
    
    @PostMapping
    public ResponseEntity<TranslationKeyDto> createTranslationKey(@Valid @RequestBody CreateTranslationKeyRequest request) {
        TranslationKeyDto translationKey = translationKeyService.createTranslationKey(request);
        return ResponseEntity.status(HttpStatus.CREATED).body(translationKey);
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<TranslationKeyDto> updateTranslationKey(@PathVariable Long id, @Valid @RequestBody CreateTranslationKeyRequest request) {
        TranslationKeyDto translationKey = translationKeyService.updateTranslationKey(id, request);
        return ResponseEntity.ok(translationKey);
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteTranslationKey(@PathVariable Long id) {
        translationKeyService.deleteTranslationKey(id);
        return ResponseEntity.noContent().build();
    }
}