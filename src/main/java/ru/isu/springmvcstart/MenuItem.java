/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ru.isu.springmvcstart;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
//import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import lombok.ToString;




@Entity
@Getter
@Setter
@NoArgsConstructor
@ToString
@Table(name = "Menu")

public class MenuItem {
     @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
     @Column(name = "MI_ID")
    private Long id;
     @NotNull
     @Column(name = "MI_NAME")
    private String name;
    
     @Column(name = "MI_TYPE")
    private String type;
     @Min(value=50, message = "Chip")
     @Column(name = "MI_COST")
    private int cost;
     @NotNull
     @Column(name="MI_WEIGHT")
     @Min(value = 1, message="light")
     private int weight;
     @NotNull
     @Column(name="MI_DESCRIPTION")
     private String description;
     @NotNull
     @Column(name="MI_CALORIES")
     private int calories;

    public MenuItem(Long id, String name, String type, int cost, int weight, String description, int calories) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.cost = cost;
        this.weight = weight;
        this.description = description;
        this.calories = calories;
    }
    
     
     

    

  
    
    
    
}
