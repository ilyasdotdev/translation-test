package com.digitaltolk.translation.dto;

import lombok.Data;
import lombok.Builder;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import jakarta.validation.constraints.NotBlank;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CreateTranslationRequest {
    @NotBlank(message = "Translation key is required")
    private String key;
    
    @NotBlank(message = "Locale code is required")
    private String localeCode;
    
    @NotBlank(message = "Content is required")
    private String content;
}