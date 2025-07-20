package com.digitaltolk.translation.controller;

import com.digitaltolk.translation.TestcontainersConfiguration;
import com.digitaltolk.translation.dto.TranslationRequest;
import com.digitaltolk.translation.entity.User;
import com.digitaltolk.translation.security.AuthService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Import;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.transaction.annotation.Transactional;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
@Import(TestcontainersConfiguration.class)
@Transactional
public class TranslationControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    @Autowired
    private AuthService authService;

    private String buildTestToken() {
        User user = new User();
        user.setId(1L);
        user.setName("Test User");
        return authService.generateToken(user);
    }

    @Test
    void shouldCreateTranslation() throws Exception {
        TranslationRequest request = new TranslationRequest();
        request.setKey("button.save");
        request.setLocaleCode("en");
        request.setContent("Save");

        mockMvc.perform(post("/api/translations")
                        .header("Authorization", "Bearer " + buildTestToken())
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(objectMapper.writeValueAsString(request)))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.key").value("button.save"))
                .andExpect(jsonPath("$.localeCode").value("en"))
                .andExpect(jsonPath("$.content").value("Save"));
    }

    @Test
    void shouldGetTranslation() throws Exception {
        // First create a translatio

        mockMvc.perform(get("/api/translations/button.save/en")
                        .header("Authorization", "Bearer " + buildTestToken()))
                .andExpect(status().isOk());
    }
}