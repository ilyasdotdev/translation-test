package com.digitaltolk.translation.controller;

import com.digitaltolk.translation.TestcontainersConfiguration;
import com.digitaltolk.translation.dto.TranslationRequest;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureWebMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Import;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.transaction.annotation.Transactional;

import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.csrf;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureWebMvc
@Import(TestcontainersConfiguration.class)
@Transactional
public class TranslationControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    @Test
    @WithMockUser
    void shouldCreateTranslation() throws Exception {
        TranslationRequest request = new TranslationRequest();
        request.setKey("test.button.save");
        request.setLocaleCode("en");
        request.setContent("Save");

        mockMvc.perform(post("/api/translations")
                        .with(csrf())
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.key").value("test.button.save"))
                .andExpect(jsonPath("$.localeCode").value("en"))
                .andExpect(jsonPath("$.content").value("Save"));
    }

    @Test
    @WithMockUser
    void shouldGetTranslation() throws Exception {
        // First create a translation
        TranslationRequest request = new TranslationRequest();
        request.setKey("test.button.get");
        request.setLocaleCode("en");
        request.setContent("Get Test");

        mockMvc.perform(post("/api/translations")
                        .with(csrf())
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isOk());

        // Then retrieve it
        mockMvc.perform(get("/api/translations/test.button.get/en"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.key").value("test.button.get"))
                .andExpect(jsonPath("$.content").value("Get Test"));
    }

    @Test
    @WithMockUser
    void shouldReturnNotFoundForNonExistentTranslation() throws Exception {
        mockMvc.perform(get("/api/translations/nonexistent.key/en"))
                .andExpect(status().isNotFound());
    }

    @Test
    @WithMockUser
    void shouldSearchByContent() throws Exception {
        // Create a translation to search for
        TranslationRequest request = new TranslationRequest();
        request.setKey("test.search.content");
        request.setLocaleCode("en");
        request.setContent("Search Test Content");

        mockMvc.perform(post("/api/translations")
                        .with(csrf())
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isOk());

        // Search for it
        mockMvc.perform(get("/api/translations/search/content")
                        .param("query", "Search Test"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[?(@.content == 'Search Test Content')]").exists());
    }

    @Test
    @WithMockUser
    void shouldSearchByKey() throws Exception {
        // Create a translation to search for
        TranslationRequest request = new TranslationRequest();
        request.setKey("test.search.key.example");
        request.setLocaleCode("en");
        request.setContent("Key Search Content");

        mockMvc.perform(post("/api/translations")
                        .with(csrf())
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isOk());

        // Search for it by key pattern
        mockMvc.perform(get("/api/translations/search/key")
                        .param("query", "search.key"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[?(@.key == 'test.search.key.example')]").exists());
    }

    @Test
    @WithMockUser
    void shouldGetAllTranslations() throws Exception {
        mockMvc.perform(get("/api/translations"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray());
    }

    @Test
    @WithMockUser
    void shouldGetAllLocales() throws Exception {
        mockMvc.perform(get("/api/translations/locales"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray());
    }

    @Test
    @WithMockUser
    void shouldUpdateTranslation() throws Exception {
        // First create a translation
        TranslationRequest request = new TranslationRequest();
        request.setKey("test.update.key");
        request.setLocaleCode("en");
        request.setContent("Original Content");

        mockMvc.perform(post("/api/translations")
                        .with(csrf())
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isOk());

        // Then update it
        mockMvc.perform(put("/api/translations/test.update.key/en")
                        .with(csrf())
                        .contentType(MediaType.TEXT_PLAIN)
                        .content("Updated Content"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.content").value("Updated Content"));
    }

    @Test
    @WithMockUser
    void shouldDeleteTranslation() throws Exception {
        // First create a translation
        TranslationRequest request = new TranslationRequest();
        request.setKey("test.delete.key");
        request.setLocaleCode("en");
        request.setContent("To Be Deleted");

        mockMvc.perform(post("/api/translations")
                        .with(csrf())
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isOk());

        // Then delete it
        mockMvc.perform(delete("/api/translations/test.delete.key/en")
                        .with(csrf()))
                .andExpect(status().isNoContent());

        // Verify it's deleted
        mockMvc.perform(get("/api/translations/test.delete.key/en"))
                .andExpect(status().isNotFound());
    }
}