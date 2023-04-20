package com.edu.ctrl;

import com.edu.beans.Student;
import com.edu.service.IChooseService;
import com.edu.service.ICourseService;
import com.edu.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MainController {
    @Autowired
    private IStudentService service;

    @Autowired
    private IChooseService chooseService;

    @Autowired
    private ICourseService courseService;

    @RequestMapping("/register")
    public String register(Student student){
        service.register(student);
        return "login.jsp";
    }

    @RequestMapping("/login")
    public String login(Student student, HttpServletRequest request){
        service.login(student);
        request.setAttribute("lname", student.getName());
        return "index.jsp";
    }
}
