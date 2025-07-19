package com.digitaltolk.translation.dto;

import lombok.Data;
import lombok.Builder;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import java.time.LocalDateTime;
import java.util.Set;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class TranslationKeyDto {
    private Long id;
    private String key;
    private String description;
    private LocalDateTime createdAt;
    private Set<String> tags;
}