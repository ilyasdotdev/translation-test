package com.digitaltolk.translation.repository;

import com.digitaltolk.translation.entity.TranslationKey;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface TranslationKeyRepository extends JpaRepository<TranslationKey, Long> {
    Optional<TranslationKey> findByKey(String key);
    boolean existsByKey(String key);
    
    @Query("SELECT tk FROM TranslationKey tk JOIN tk.tags t WHERE t.name IN :tagNames")
    List<TranslationKey> findByTagNames(@Param("tagNames") List<String> tagNames);
    
    @Query("SELECT tk FROM TranslationKey tk WHERE tk.key LIKE %:keyword% OR tk.description LIKE %:keyword%")
    List<TranslationKey> findByKeywordInKeyOrDescription(@Param("keyword") String keyword);
}