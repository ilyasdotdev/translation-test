package com.digitaltolk.translation.controller;

import com.digitaltolk.translation.dto.TranslationRequest;
import com.digitaltolk.translation.entity.Locale;
import com.digitaltolk.translation.entity.Translation;
import com.digitaltolk.translation.entity.TranslationKey;
import com.digitaltolk.translation.service.TranslationService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.when;
import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.csrf;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(TranslationController.class)
public class TranslationControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private TranslationService translationService;

    @Autowired
    private ObjectMapper objectMapper;

    private Translation testTranslation;
    private TranslationKey testKey;
    private Locale testLocale;

    @BeforeEach
    void setUp() {
        testLocale = Locale.builder()
                .id(1L)
                .code("en")
                .name("English")
                .build();

        testKey = TranslationKey.builder()
                .id(1L)
                .key("button.save")
                .description("Save button text")
                .build();

        testTranslation = Translation.builder()
                .id(1L)
                .translationKey(testKey)
                .locale(testLocale)
                .content("Save")
                .updatedAt(LocalDateTime.now())
                .build();
    }

    @Test
    @WithMockUser
    void shouldCreateTranslation() throws Exception {
        TranslationRequest request = new TranslationRequest();
        request.setKey("button.save");
        request.setLocaleCode("en");
        request.setContent("Save");

        when(translationService.saveTranslation("button.save", "en", "Save"))
                .thenReturn(testTranslation);

        mockMvc.perform(post("/api/translations")
                        .with(csrf())
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.key").value("button.save"))
                .andExpect(jsonPath("$.localeCode").value("en"))
                .andExpect(jsonPath("$.content").value("Save"));
    }

    @Test
    @WithMockUser
    void shouldGetTranslation() throws Exception {
        when(translationService.getTranslation("button.save", "en"))
                .thenReturn(Optional.of(testTranslation));

        mockMvc.perform(get("/api/translations/button.save/en"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.key").value("button.save"))
                .andExpect(jsonPath("$.content").value("Save"));
    }

    @Test
    @WithMockUser
    void shouldReturnNotFoundForNonExistentTranslation() throws Exception {
        when(translationService.getTranslation("nonexistent", "en"))
                .thenReturn(Optional.empty());

        mockMvc.perform(get("/api/translations/nonexistent/en"))
                .andExpect(status().isNotFound());
    }

    @Test
    @WithMockUser
    void shouldSearchByContent() throws Exception {
        List<Translation> translations = Arrays.asList(testTranslation);
        when(translationService.searchByContent("Save")).thenReturn(translations);

        mockMvc.perform(get("/api/translations/search/content")
                        .param("query", "Save"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].content").value("Save"));
    }

    @Test
    @WithMockUser
    void shouldSearchByKey() throws Exception {
        List<Translation> translations = Arrays.asList(testTranslation);
        when(translationService.searchByKey("button")).thenReturn(translations);

        mockMvc.perform(get("/api/translations/search/key")
                        .param("query", "button"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].key").value("button.save"));
    }

    @Test
    @WithMockUser
    void shouldSearchByTags() throws Exception {
        List<Translation> translations = Arrays.asList(testTranslation);
        when(translationService.searchByTags(Arrays.asList("ui", "button")))
                .thenReturn(translations);

        mockMvc.perform(get("/api/translations/search/tags")
                        .param("tags", "ui,button"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].key").value("button.save"));
    }

    @Test
    @WithMockUser
    void shouldGetAllTranslations() throws Exception {
        List<Translation> translations = Arrays.asList(testTranslation);
        when(translationService.getAllTranslations()).thenReturn(translations);

        mockMvc.perform(get("/api/translations"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].key").value("button.save"));
    }
}