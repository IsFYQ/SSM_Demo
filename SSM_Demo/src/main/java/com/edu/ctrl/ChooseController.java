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
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Controller
@RequestMapping("/choose")
public class ChooseController {
    @Autowired
    private IStudentService service;

    @Autowired
    private IChooseService chooseService;

    @Autowired
    private ICourseService courseService;

    @RequestMapping("/choose")
    public String queryChoose(HttpServletRequest request){

        List<Choose> chooses = chooseService.queryChoose();

        request.setAttribute("q_chooses", chooses);
        return "/choose.jsp";
    }

    @RequestMapping("/bycid")
    public String queryChooseByCname(HttpServletRequest request){
        String cname = request.getParameter("q_cname");
        List<Course> courses = courseService.getCourseByCname(cname);
        Iterator<Course> courseIterator = courses.iterator();
        List<Choose> chooses = new ArrayList<>();
        while (courseIterator.hasNext()){
            Course course = courseIterator.next();
            int cid = course.getCid();
            List<Choose> chooses1 = chooseService.queryChooseByCid(cid);
            chooses.addAll(chooses1);
        }
        request.setAttribute("q_chooses", chooses);
        return "/choose.jsp";
    }

    @RequestMapping("/bysid")
    public String queryChooseBySname(HttpServletRequest request){
        String sname = request.getParameter("q_sname");
        List<Student> students = service.selectStudentBySname(sname);
        Iterator<Student> studentIterator = students.iterator();
        List<Choose> chooses = new ArrayList<>();
        while (studentIterator.hasNext()){
            Student student = studentIterator.next();
            int id = student.getId();
            List<Choose> chooses1 = chooseService.queryChooseBySid(id);
            chooses.addAll(chooses1);
        }
        request.setAttribute("q_chooses", chooses);
        return "/choose.jsp";
    }

    @RequestMapping("/delete")
    public String deleteChoose(int cid){
        chooseService.deleteChoose(cid);
        return "/choose/choose";
    }

    @RequestMapping("/update")
    public String updateChoose(Choose choose, HttpServletRequest request){
        List<Course> courses = courseService.getCourse();
        request.getSession().setAttribute("c_courses", courses);
        for (Course c:
             courses) {
            System.out.println(c);
        }
        chooseService.updateChoose(choose);
//        courseService.addCount(choose.getCourse().getCid());

        List<Choose> chooses = chooseService.queryChoose();
        request.setAttribute("q_chooses", chooses);
        return "/choose/update.jsp";
    }
}
