package ru.isu.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.isu.springmvcstart.MenuOrderTable;

@Repository
public interface MOTRepository extends JpaRepository<MenuOrderTable, Long>{
    
}
