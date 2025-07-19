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
public class TranslationDto {
    private Long id;
    private String key;
    private String localeCode;
    private String localeName;
    private String content;
    private LocalDateTime updatedAt;
    private Set<String> tags;
}