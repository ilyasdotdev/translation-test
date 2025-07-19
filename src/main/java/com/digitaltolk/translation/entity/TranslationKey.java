package com.digitaltolk.translation.entity;

import lombok.*;
import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.List;
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

    @Column(nullable = false, unique = true, name = "key_name")
    private String key;

    @Column(columnDefinition = "TEXT")
    private String description;

    @Column(name = "created_at", nullable = false, updatable = false, insertable = false)
    private LocalDateTime createdAt;

    @OneToMany(mappedBy = "translationKey", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Translation> translations;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "translation_key_tags",
        joinColumns = @JoinColumn(name = "key_id"),
        inverseJoinColumns = @JoinColumn(name = "tag_id")
    )
    private Set<Tag> tags;
}