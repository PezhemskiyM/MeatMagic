package ru.isu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import ru.isu.springmvcstart.AutoUser;

public interface AutoUserRepository extends JpaRepository<AutoUser, Long> {

    public AutoUser findByUsername(String username);
}
