package com.kgisl.controller;

import com.kgisl.model.Employee;
import com.kgisl.service.EmployeeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
@Controller
@RequestMapping(value = "/")
public class EmployeeController {
//    int employee;
    @Autowired
    private EmployeeService employeeService;
 
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String listemployees(Model model) {
        
        model.addAttribute("employeeList", employeeService.listEmployees());
        System.out.println("*********************");
        // System.out.println(employeeService.listEmployees());
        return "employee";
    }
 
    // Same method For both Add and Update Employee
    @ResponseBody
    @RequestMapping(value = "/employee/add", method = RequestMethod.GET)
    public String addemployee(@ModelAttribute("employee") Employee employee) {
        if (employee.getEmployeeId() ==null || employee.getEmployeeId() == 0) {
            System.out.println("insert called"+employee.getEmployeeId());
System.out.println(employee);
            // new employee, add it
            employeeService.addEmployee(employee);
        } else {
            System.out.println("update called="+employee.getEmployeeId());
            System.out.println(employee);

            // existing employee, call update
            employeeService.updateEmployee(employee);
        }
 
        return "employee";
 
    }
 
    @RequestMapping("/employee/remove/id={id}")
    public String removeemployee(@RequestParam("id") int id) {
 
        employeeService.removeEmployee(id);
        return "redirect:/";
    }
 
    @RequestMapping("/employee/edit/id={id}")
    public String editemployee(@RequestParam("id") int id, Model model) {

        model.addAttribute("employee", employeeService.getEmployeeById(id));
        // System.out.println("employee="+employeeService.getEmployeeById(id));

        model.addAttribute("employeeList", employeeService.listEmployees());
        return "user";
    }
}