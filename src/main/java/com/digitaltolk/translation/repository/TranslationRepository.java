package com.digitaltolk.translation.repository;

import com.digitaltolk.translation.entity.Translation;
import com.digitaltolk.translation.entity.TranslationKey;
import com.digitaltolk.translation.entity.Locale;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.List;

@Repository
public interface TranslationRepository extends JpaRepository<Translation, Long> {
    Optional<Translation> findByTranslationKeyAndLocale(TranslationKey translationKey, Locale locale);
    List<Translation> findByTranslationKey(TranslationKey translationKey);
    List<Translation> findByLocale(Locale locale);
}