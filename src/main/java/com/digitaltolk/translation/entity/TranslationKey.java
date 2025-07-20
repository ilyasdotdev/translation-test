package com.digitaltolk.translation.entity;

import lombok.*;
import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.Set;

@Entity
@Table(name = "translation_keys")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class TranslationKey {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "`key`", nullable = false, unique = true)
    private String key;

    @Column(columnDefinition = "TEXT")
    private String description;

    @Column(name = "created_at", nullable = false, updatable = false, insertable = false)
    private LocalDateTime createdAt;

    @OneToMany(mappedBy = "translationKey", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Set<Translation> translations;

    @OneToMany(mappedBy = "translationKey", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Set<TranslationKeyTag> translationKeyTags;
}