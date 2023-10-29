
package ru.isu.springmvcstart;

import java.util.ArrayList;
import java.util.Date;
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
import javax.persistence.Table;
import javax.validation.constraints.Min;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Entity
@Getter
@Setter
@NoArgsConstructor
@ToString
@Table(name = "MENU_ORDER_TABL")

public class MenuOrderTable {
       @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
     @Column(name = "MOT_ID")
    private Long id;
     
        @Column(name = "MI_ID")
    private String miId;
        
         @Min(value=1, message = "Small")
         @Column(name = "COUNT")
    private String count;
       
     @Column(name = "ORDER_ID")
    private String orderId;
     
    
//    @ManyToMany(fetch = FetchType.EAGER)
//    @JoinTable(name = "BOOKS_KEYS",
//            joinColumns = @JoinColumn(name = "BOOK_ID"),
//            inverseJoinColumns = @JoinColumn(name = "KEY_ID"))
//    private List<Keyword> keywords = new ArrayList();
    
}
