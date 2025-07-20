package com.digitaltolk.translation.dto;

import lombok.Data;
import jakarta.validation.constraints.NotBlank;

@Data
public class TranslationRequest {
    @NotBlank(message = "Key is required")
    private String key;
    
    @NotBlank(message = "Locale code is required")
    private String localeCode;
    
    @NotBlank(message = "Content is required")
    private String content;
}