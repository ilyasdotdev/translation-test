package com.digitaltolk.translation.dto;

import lombok.Data;
import lombok.Builder;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import java.time.LocalDateTime;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class LocaleDto {
    private Long id;
    private String code;
    private String name;
    private LocalDateTime createdAt;
}