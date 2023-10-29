/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ru.isu.springmvcstart;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class InputValidator implements Validator{

    public InputValidator() {
    }
    
    @Override
    public boolean supports(Class<?> type) {
        return MenuItem.class.equals(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
       MenuItem mi = (MenuItem) o;
       
       if(mi.getName().length()<3){
       errors.rejectValue("name", "item.name","Too short");       
       }
       
       if(!mi.getName().matches("[A-Z].*")){
       errors.rejectValue("name", "item.name","Capital first letter");       
       }
       
       if(mi.getCost()==0){
       errors.rejectValue("cost", "item.cost","Cost too small");       
       }
       
    }
    
}
