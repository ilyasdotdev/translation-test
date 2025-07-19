package com.digitaltolk.translation.repository;

import com.digitaltolk.translation.entity.Translation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface TranslationRepository extends JpaRepository<Translation, Long> {
    
    Optional<Translation> findByTranslationKeyKeyAndLocaleCode(String key, String localeCode);
    
    List<Translation> findByLocaleCode(String localeCode);
    
    List<Translation> findByTranslationKeyKey(String key);
    
    @Query("SELECT t FROM Translation t JOIN t.translationKey.tags tag WHERE tag.name IN :tagNames")
    List<Translation> findByTagNames(@Param("tagNames") List<String> tagNames);
    
    @Query("SELECT t FROM Translation t WHERE t.content LIKE %:content%")
    List<Translation> findByContentContaining(@Param("content") String content);
    
    @Query("SELECT t FROM Translation t JOIN t.translationKey tk WHERE " +
           "(:localeCode IS NULL OR t.locale.code = :localeCode) AND " +
           "(:key IS NULL OR tk.key LIKE %:key%) AND " +
           "(:content IS NULL OR t.content LIKE %:content%)")
    List<Translation> findByFilters(
        @Param("localeCode") String localeCode,
        @Param("key") String key,
        @Param("content") String content
    );
    
    @Query("SELECT t FROM Translation t JOIN t.translationKey tk JOIN tk.tags tag WHERE " +
           "(:localeCode IS NULL OR t.locale.code = :localeCode) AND " +
           "(:tagNames IS NULL OR tag.name IN :tagNames)")
    List<Translation> findByLocaleAndTags(
        @Param("localeCode") String localeCode,
        @Param("tagNames") List<String> tagNames
    );
}