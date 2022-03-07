package com.example.BrokenPhone.repo;

import com.example.BrokenPhone.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDetailsRepo extends JpaRepository<User, String> {
}
