package com.digitaltolk.translation.service;

import com.digitaltolk.translation.dto.*;
import com.digitaltolk.translation.entity.Tag;
import com.digitaltolk.translation.repository.TagRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional
public class TagService {
    
    private final TagRepository tagRepository;
    
    public List<TagDto> getAllTags() {
        return tagRepository.findAll()
                .stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }
    
    public TagDto getTagById(Long id) {
        Tag tag = tagRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Tag not found with id: " + id));
        return toDto(tag);
    }
    
    public TagDto getTagByName(String name) {
        Tag tag = tagRepository.findByName(name)
                .orElseThrow(() -> new RuntimeException("Tag not found with name: " + name));
        return toDto(tag);
    }
    
    public TagDto createTag(CreateTagRequest request) {
        if (tagRepository.existsByName(request.getName())) {
            throw new RuntimeException("Tag with name '" + request.getName() + "' already exists");
        }
        
        Tag tag = Tag.builder()
                .name(request.getName())
                .build();
        
        Tag savedTag = tagRepository.save(tag);
        return toDto(savedTag);
    }
    
    public TagDto updateTag(Long id, CreateTagRequest request) {
        Tag tag = tagRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Tag not found with id: " + id));
        
        // Check if the new name conflicts with existing tag (if name is being changed)
        if (!tag.getName().equals(request.getName()) && tagRepository.existsByName(request.getName())) {
            throw new RuntimeException("Tag with name '" + request.getName() + "' already exists");
        }
        
        tag.setName(request.getName());
        
        Tag savedTag = tagRepository.save(tag);
        return toDto(savedTag);
    }
    
    public void deleteTag(Long id) {
        if (!tagRepository.existsById(id)) {
            throw new RuntimeException("Tag not found with id: " + id);
        }
        tagRepository.deleteById(id);
    }
    
    private TagDto toDto(Tag tag) {
        return TagDto.builder()
                .id(tag.getId())
                .name(tag.getName())
                .createdAt(tag.getCreatedAt())
                .build();
    }
}