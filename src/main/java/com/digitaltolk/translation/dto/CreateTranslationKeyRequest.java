package com.digitaltolk.translation.dto;

import lombok.Data;
import lombok.Builder;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import java.util.Set;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CreateTranslationKeyRequest {
    @NotBlank(message = "Translation key is required")
    @Size(max = 255, message = "Translation key must not exceed 255 characters")
    private String key;
    
    private String description;
    
    private Set<String> tags;
}