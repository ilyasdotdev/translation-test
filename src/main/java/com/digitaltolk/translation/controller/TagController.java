package com.digitaltolk.translation.controller;

import com.digitaltolk.translation.dto.CreateTagRequest;
import com.digitaltolk.translation.dto.TagDto;
import com.digitaltolk.translation.service.TagService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/tags")
@RequiredArgsConstructor
public class TagController {
    
    private final TagService tagService;
    
    @GetMapping
    public ResponseEntity<List<TagDto>> getAllTags() {
        List<TagDto> tags = tagService.getAllTags();
        return ResponseEntity.ok(tags);
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<TagDto> getTagById(@PathVariable Long id) {
        TagDto tag = tagService.getTagById(id);
        return ResponseEntity.ok(tag);
    }
    
    @GetMapping("/name/{name}")
    public ResponseEntity<TagDto> getTagByName(@PathVariable String name) {
        TagDto tag = tagService.getTagByName(name);
        return ResponseEntity.ok(tag);
    }
    
    @PostMapping
    public ResponseEntity<TagDto> createTag(@Valid @RequestBody CreateTagRequest request) {
        TagDto tag = tagService.createTag(request);
        return ResponseEntity.status(HttpStatus.CREATED).body(tag);
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<TagDto> updateTag(@PathVariable Long id, @Valid @RequestBody CreateTagRequest request) {
        TagDto tag = tagService.updateTag(id, request);
        return ResponseEntity.ok(tag);
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteTag(@PathVariable Long id) {
        tagService.deleteTag(id);
        return ResponseEntity.noContent().build();
    }
}