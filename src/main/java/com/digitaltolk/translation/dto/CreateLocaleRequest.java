package com.digitaltolk.translation.dto;

import lombok.Data;
import lombok.Builder;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CreateLocaleRequest {
    @NotBlank(message = "Locale code is required")
    @Size(max = 10, message = "Locale code must not exceed 10 characters")
    private String code;
    
    @NotBlank(message = "Locale name is required")
    @Size(max = 50, message = "Locale name must not exceed 50 characters")
    private String name;
}