package controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import dao.EmployeeDao;
import entity.Employee;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeDao dao;
	
	@GetMapping
	public String showForm(Model m) {
		m.addAttribute("addEmployee",new Employee());
		return "registerform";
	}
	
	@PostMapping("/save")
	public String save(@RequestParam("name") String name, @RequestParam("dob") String dob,@RequestParam("gender") String gender, @RequestParam("address") String address, @RequestParam("city") String city,
            @RequestParam("state") String state, @RequestParam("loginid") String loginid, @RequestParam("password") String password, Model m) {
		Employee emp = new Employee();
        emp.setName(name);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date dateOfBirth = (Date) sdf.parse(dob);
            emp.setDateOfBirth(dateOfBirth);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        emp.setGender(gender);
        emp.setAddress(address);
        emp.setCity(city);
        emp.setState(state);
        emp.setLoginID(loginid);
        emp.setPassword(password);

        int status = dao.save(emp);
        if (status > 0) {
            m.addAttribute("msg", "Record saved successfully!");
        } else {
            m.addAttribute("msg", "Sorry! Unable to save record");
        } 
        return "loginform";
		
	}
	
	@GetMapping("/viewemp")  
    public String viewemp(Model m){  
        List<Employee> list=dao.getEmployees();  
        m.addAttribute("list",list);
        return "viewemp";  
    }
	
	@GetMapping("/employeelist")  
    public String viewemplist(Model m){  
        List<Employee> list=dao.getEmployees();  
        m.addAttribute("list",list);
        return "employeelist";  
    }
	
	@GetMapping("/editemp/{id}")  
    public String edit(@PathVariable int id, Model m){  
		Employee emp=dao.getEmpById(id);  
        m.addAttribute("command",emp);
        return "editform";  
    }
	
	@PostMapping("editemp/update")  
    public String update(@RequestParam("id") int id,@RequestParam("name") String name,@RequestParam("gender") String gender, @RequestParam("address") String address, @RequestParam("city") String city,
            @RequestParam("state") String state, @RequestParam("password") String password, Model m) {  
		Employee emp = dao.getEmpById(id);
        emp.setName(name);
        emp.setGender(gender);
        emp.setAddress(address);
        emp.setCity(city);
        emp.setState(state);
        emp.setPassword(password);

        int status = dao.update(emp);
        if (status > 0) {
            m.addAttribute("msg", "Record saved successfully!");
        } else {
            m.addAttribute("msg", "Sorry! Unable to save record");
        } 
        return "redirect:/viewemp";  
    }
	
	@GetMapping("/deleteemp/{id}")  
    public String delete(@PathVariable int id){  
        dao.delete(id);  
        return "redirect:/viewemp";  
    }
	
	@GetMapping("/loginform")
    public String loginpage() {
    		return "loginform";
    }
	@PostMapping("/logincheck")
    public String logincheck(@RequestParam("username") String loginid,@RequestParam("password") String password, HttpServletRequest request,Model m) {
		Employee emp=dao.getEmpByLoginId(loginid);
    	if(emp != null && emp.getPassword().equals(password)) {
    		HttpSession session = request.getSession();
    		session.setAttribute("username", emp.getLoginID());
    		session.removeAttribute("error");
    		return "redirect:/viewemp";
    	}
    	else {
    		HttpSession session = request.getSession();
    		session.setAttribute("error", "Username/Password Incorrect");
    		return "redirect:/loginform";
    	}
    }
	@GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("username");
        return "redirect:/loginform";
    }
	
}
