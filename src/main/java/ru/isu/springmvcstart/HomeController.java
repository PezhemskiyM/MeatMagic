package ru.isu.springmvcstart;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.isu.repository.MenuRepository;
import ru.isu.repository.AutoUserRepository;
import ru.isu.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ru.isu.repository.MOTRepository;
import ru.isu.service.MenuService;
@Controller
@RequestMapping("/")
public class HomeController {
      @Autowired
    private MenuRepository menuRepository;
  
  @Autowired
  private OrderRepository orderRepository;

    @Autowired
    private AutoUserRepository userRepository;
    
   @Autowired
   private MenuService menuService;
   
   @Autowired
   private MOTRepository mOTRepository;
    
@RequestMapping("/")
    public String goHome(){
        return "home";
    }
   
 @RequestMapping("/index")
    public String goHomes(){
        return "home";
    }   
     @RequestMapping(value = "/makeorder", method = RequestMethod.GET)
    public String addOrder(Model model) {
        model.addAttribute("order", new Order());
        
        return "makeorder";
    }
    
    
 @RequestMapping(value="/itemtypes")
   public @ResponseBody List<String> getBookTypes(){
        return new ArrayList(Arrays.asList("pizza", "drink", "sauce" , "burger", "snack", "tea", "coffee", "dessert"));
    }
    
    @RequestMapping(value="/seeorder")
    public String goSeeOrder(Model model, Pageable page, Sort sort){
  model.addAttribute("page", mOTRepository.findAll(page));
  
   //model.addAttribute("filter", menuRepository.findByTypeContaining(type));
    model.addAttribute("orders", new MenuOrderTable());
   return "seeorder";
   
   }
    
    @RequestMapping(value="/additem",method=RequestMethod.GET)
    public String addItem(Model model){
        model.addAttribute("item",new MenuItem());
    return "additem";
    }
    
     @RequestMapping(value="/additem",method=RequestMethod.POST)
    public String saveItem(
            @Valid @ModelAttribute MenuItem item,
            Errors error, Model model, RedirectAttributes attr){
        model.addAttribute("item", item);
        if(error.hasErrors()){
        return "additem";
        }else{
        menuRepository.save(item);
        attr.addFlashAttribute("item",item);
        return "home";
        }
    }
    
      @InitBinder
   public void bindValidator(WebDataBinder binder){
      // binder.addValidators(new InputValidator());
       
   }
   
    
    @ResponseBody
    @RequestMapping(value="/all")
   public List<MenuItem> getAllMenu(){
  return this.menuRepository.findAll();
   }
   
    @RequestMapping(value="/menu" , method = RequestMethod.GET)
   public String getAllBooks(Model model, Pageable page, Sort sort,String type){
   model.addAttribute("page", menuRepository.findAll(page));
   model.addAttribute("sort",(sort!=null)?sort.iterator().next().getProperty():"");
   //model.addAttribute("filter", menuRepository.findByTypeContaining(type));
    model.addAttribute("menut", new MenuItem());
   return "menu";
   
   }
   
     @RequestMapping(value = "/menu", method = RequestMethod.POST)
    public String selectContinentss(@ModelAttribute String itemt, Errors error, Model model, RedirectAttributes attr) {

        model.addAttribute("itemt", new String());
       
        if (error.hasErrors()) {
            return "menu";
        } else {
            attr.addFlashAttribute("itemf", menuRepository.findByTypeContaining("Burger"));
            return "redirect:/menu";
        }
    }

   @RequestMapping("/menu/{itemId}")
    public String getOneItem(@PathVariable("itemId") Long itemId, Model model) {
        MenuItem item = menuRepository.findOne(itemId);
        model.addAttribute("item", item);
        menuService.saveMenuInfile(item);
        return "item";
    }
}

 
