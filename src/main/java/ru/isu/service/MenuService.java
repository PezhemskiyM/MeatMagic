
package ru.isu.service;

//import ru.isu.repository.MenuRepository;
//import ru.isu.entity.Book;
//import java.util.List;
//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.isu.repository.MenuRepository;
//import ru.isu.repository.OrderRepository;
import ru.isu.springmvcstart.MenuItem;
import ru.isu.repository.WriteXML;
//import ru.isu.springmvcstart.Order;

@Service
public class MenuService {
    
    @Autowired
    WriteXML writeXML;
    
 @Autowired
   public void setWriteRepository(WriteXML writeXML) {
        this.writeXML = writeXML;
   }
     
    public void saveMenuInfile(MenuItem mi){
        //System.out.println("test");
           this.writeXML.saveMenuInFile(mi); 
   }
 
    
            
}
