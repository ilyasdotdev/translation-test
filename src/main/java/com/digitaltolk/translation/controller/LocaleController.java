package com.digitaltolk.translation.controller;

import com.digitaltolk.translation.dto.CreateLocaleRequest;
import com.digitaltolk.translation.dto.LocaleDto;
import com.digitaltolk.translation.service.LocaleService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/locales")
@RequiredArgsConstructor
public class LocaleController {
    
    private final LocaleService localeService;
    
    @GetMapping
    public ResponseEntity<List<LocaleDto>> getAllLocales() {
        List<LocaleDto> locales = localeService.getAllLocales();
        return ResponseEntity.ok(locales);
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<LocaleDto> getLocaleById(@PathVariable Long id) {
        LocaleDto locale = localeService.getLocaleById(id);
        return ResponseEntity.ok(locale);
    }
    
    @GetMapping("/code/{code}")
    public ResponseEntity<LocaleDto> getLocaleByCode(@PathVariable String code) {
        LocaleDto locale = localeService.getLocaleByCode(code);
        return ResponseEntity.ok(locale);
    }
    
    @PostMapping
    public ResponseEntity<LocaleDto> createLocale(@Valid @RequestBody CreateLocaleRequest request) {
        LocaleDto locale = localeService.createLocale(request);
        return ResponseEntity.status(HttpStatus.CREATED).body(locale);
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<LocaleDto> updateLocale(@PathVariable Long id, @Valid @RequestBody CreateLocaleRequest request) {
        LocaleDto locale = localeService.updateLocale(id, request);
        return ResponseEntity.ok(locale);
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteLocale(@PathVariable Long id) {
        localeService.deleteLocale(id);
        return ResponseEntity.noContent().build();
    }
}