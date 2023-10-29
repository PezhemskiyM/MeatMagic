/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ru.isu.repository;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.isu.springmvcstart.MenuItem;

@Repository
public interface MenuRepository extends JpaRepository<MenuItem, Long>{
   // public List<MenuItem> findByNameContaining(String title);
    
    //public List<MenuItem> findByCostGreaterThan(int s);
    
    //public List<MenuItem> findByNameLikeAndCostGreaterThan(String title,int s);
    public List<MenuItem> findByTypeContaining(String type);
    
   // @Query("select b from MenuItem as b where b.cost<=:cost")
    //public List<MenuItem> getChipItem(@Param("cost") Integer cost);
}
