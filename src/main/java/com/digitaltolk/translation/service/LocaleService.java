package com.digitaltolk.translation.service;

import com.digitaltolk.translation.dto.*;
import com.digitaltolk.translation.entity.Locale;
import com.digitaltolk.translation.repository.LocaleRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional
public class LocaleService {
    
    private final LocaleRepository localeRepository;
    
    public List<LocaleDto> getAllLocales() {
        return localeRepository.findAll()
                .stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }
    
    public LocaleDto getLocaleById(Long id) {
        Locale locale = localeRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Locale not found with id: " + id));
        return toDto(locale);
    }
    
    public LocaleDto getLocaleByCode(String code) {
        Locale locale = localeRepository.findByCode(code)
                .orElseThrow(() -> new RuntimeException("Locale not found with code: " + code));
        return toDto(locale);
    }
    
    public LocaleDto createLocale(CreateLocaleRequest request) {
        if (localeRepository.existsByCode(request.getCode())) {
            throw new RuntimeException("Locale with code '" + request.getCode() + "' already exists");
        }
        
        Locale locale = Locale.builder()
                .code(request.getCode())
                .name(request.getName())
                .build();
        
        Locale savedLocale = localeRepository.save(locale);
        return toDto(savedLocale);
    }
    
    public LocaleDto updateLocale(Long id, CreateLocaleRequest request) {
        Locale locale = localeRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Locale not found with id: " + id));
        
        // Check if the new code conflicts with existing locale (if code is being changed)
        if (!locale.getCode().equals(request.getCode()) && localeRepository.existsByCode(request.getCode())) {
            throw new RuntimeException("Locale with code '" + request.getCode() + "' already exists");
        }
        
        locale.setCode(request.getCode());
        locale.setName(request.getName());
        
        Locale savedLocale = localeRepository.save(locale);
        return toDto(savedLocale);
    }
    
    public void deleteLocale(Long id) {
        if (!localeRepository.existsById(id)) {
            throw new RuntimeException("Locale not found with id: " + id);
        }
        localeRepository.deleteById(id);
    }
    
    private LocaleDto toDto(Locale locale) {
        return LocaleDto.builder()
                .id(locale.getId())
                .code(locale.getCode())
                .name(locale.getName())
                .createdAt(locale.getCreatedAt())
                .build();
    }
}