package com.digitaltolk.translation.repository;

import com.digitaltolk.translation.entity.TranslationKeyTag;
import com.digitaltolk.translation.entity.TranslationKey;
import com.digitaltolk.translation.entity.Tag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TranslationKeyTagRepository extends JpaRepository<TranslationKeyTag, Long> {
    List<TranslationKeyTag> findByTranslationKey(TranslationKey translationKey);
    List<TranslationKeyTag> findByTag(Tag tag);
    void deleteByTranslationKeyAndTag(TranslationKey translationKey, Tag tag);
}