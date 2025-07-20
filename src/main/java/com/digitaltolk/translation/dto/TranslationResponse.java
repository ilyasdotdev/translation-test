package com.digitaltolk.translation.dto;

import lombok.Data;
import lombok.Builder;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import java.time.LocalDateTime;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class TranslationResponse {
    private Long id;
    private String key;
    private String localeCode;
    private String localeName;
    private String content;
    private LocalDateTime updatedAt;
}