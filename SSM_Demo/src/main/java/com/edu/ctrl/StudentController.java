package com.edu.ctrl;

import com.edu.beans.Choose;
import com.edu.beans.Course;
import com.edu.beans.Student;
import com.edu.service.IChooseService;
import com.edu.service.ICourseService;
import com.edu.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Autowired
    private IStudentService service;

    @Autowired
    private IChooseService chooseService;

    @Autowired
    private ICourseService courseService;

    @RequestMapping("/student")
    public String select(HttpServletRequest request){
        List<Student> students = service.select();
        request.setAttribute("s_students", students);
        return "/student.jsp";
    }

    @RequestMapping("delete")
    public String delete(HttpServletRequest request){
        String sid = request.getParameter("sid");
        int id = Integer.parseInt(sid);
        chooseService.deleteChooseBySid(id);
        service.delete(id);

        List<Student> students = service.select();
        request.setAttribute("s_students", students);
        return "/student.jsp";
    }

    @RequestMapping("update")
    public String update(Student student, HttpServletRequest request){
        service.update(student);

        List<Student> students = service.select();
        request.setAttribute("s_students", students);
        return "/student.jsp";
    }

    @RequestMapping("/insert")
    public String insert(Student student){
        service.register(student);
        return "/student/studentInsert.jsp";
    }

    @RequestMapping("/query")
    public String queryStudentBySname(String sname, HttpServletRequest request){
        List<Student> students = service.selectStudentBySname(sname);
        request.setAttribute("s_students", students);
        return "/student.jsp";
    }

    @RequestMapping("/choose")
    public String chooseCourse(Choose choose, HttpServletRequest request){
        List<Course> courses = courseService.getCourse();
        request.getSession().setAttribute("c_courses", courses);
        for (Course c:
             courses) {
            System.out.println(c);
        }
        chooseService.addChoose(choose);
        return "/student/studentChoose.jsp";
    }
}
