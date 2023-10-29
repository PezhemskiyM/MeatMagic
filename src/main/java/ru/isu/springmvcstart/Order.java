/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ru.isu.springmvcstart;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.MapKey;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Entity
@Getter
@Setter
@NoArgsConstructor
@ToString
@Table(name = "Orders")
/**
 *
 * @author Макс
 */
public class Order {
     @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
     @Column(name = "ORDER_ID")
    private Long id;
     
    // private Map<MenuItem,Integer> listOrder;
//     @ElementCollection(fetch = FetchType.EAGER)
//    @CollectionTable(name = "order_mi", joinColumns = @JoinColumn(name = "ORDER_ID"))
//    @Column(name = "ITEMS")
//    private Map<MenuItem,Integer> MapOrder;
     
     @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "MENU_ORDER_TABLE",
            joinColumns = @JoinColumn(name = "ORDER_ID"),
            inverseJoinColumns = @JoinColumn(name = "MI_ID"))
    private List<MenuItem> menuItem = new ArrayList();
     
     
//     @OneToMany(fetch = FetchType.EAGER)
//     @JoinTable(
//		name = "menu_list",
//		joinColumns = @JoinColumn(name = "menuitem_id"),
//		inverseJoinColumns = @JoinColumn(name = "order_id"))
//     @MapKey(name="count")
//     private Map<MenuItem, Integer> menuitems =new HashMap<>();
//     
     @Column(name = "DATE_ORDER")
    private Date dateOrder;
    
     @Column(name = "ISCOMPLETE")
    private boolean isComplete;
     
    @Column(name = "DATE_COMPLETE")
    private Date dateComplete;

    

  
    
    
    
}