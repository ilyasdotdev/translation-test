package com.digitaltolk.translation.entity;

import lombok.*;
import jakarta.persistence.*;

@Entity
@Table(name = "translation_key_tags", uniqueConstraints = {
    @UniqueConstraint(name = "uk_translation_key_tags", columnNames = {"key_id", "tag_id"})
})
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class TranslationKeyTag {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "key_id", nullable = false)
    private TranslationKey translationKey;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tag_id", nullable = false)
    private Tag tag;
}