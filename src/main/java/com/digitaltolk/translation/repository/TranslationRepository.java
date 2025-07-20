package com.digitaltolk.translation.repository;

import com.digitaltolk.translation.entity.Translation;
import com.digitaltolk.translation.entity.TranslationKey;
import com.digitaltolk.translation.entity.Locale;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.List;

@Repository
public interface TranslationRepository extends JpaRepository<Translation, Long> {
    Optional<Translation> findByTranslationKeyAndLocale(TranslationKey translationKey, Locale locale);
    List<Translation> findByTranslationKey(TranslationKey translationKey);
    List<Translation> findByLocale(Locale locale);
    
    // Search by content
    List<Translation> findByContentContainingIgnoreCase(String content);
    
    // Search by translation key
    @Query("SELECT t FROM Translation t WHERE t.translationKey.key LIKE %:key%")
    List<Translation> findByTranslationKeyKeyContaining(@Param("key") String key);
    
    // Search by tags
    @Query("SELECT t FROM Translation t JOIN t.translationKey.translationKeyTags tkt JOIN tkt.tag tag WHERE tag.name IN :tagNames")
    List<Translation> findByTagNames(@Param("tagNames") List<String> tagNames);
}