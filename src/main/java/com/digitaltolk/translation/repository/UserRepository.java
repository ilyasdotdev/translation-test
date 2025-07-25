package com.digitaltolk.translation.repository;

import com.digitaltolk.translation.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    // add query methods if needed
}
