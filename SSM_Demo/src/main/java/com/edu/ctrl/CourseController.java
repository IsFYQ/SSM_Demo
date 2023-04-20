package com.edu.ctrl;

import com.edu.beans.Course;
import com.edu.service.IChooseService;
import com.edu.service.ICourseService;
import com.edu.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/course")
public class CourseController {
    @Autowired
    private IStudentService service;

    @Autowired
    private IChooseService chooseService;

    @Autowired
    private ICourseService courseService;

    @RequestMapping("/course")
    public String course(HttpServletRequest request){
        List<Course> courses = courseService.getCourse();
        request.setAttribute("c_courses", courses);
        return "/course.jsp";
    }
    
    @RequestMapping("/delete")
    public String deleteCourse(HttpServletRequest request){
        String sid = request.getParameter("cid");
        int cid = -1;
        if(!sid.equals(""))
            cid = Integer.parseInt(sid);
        chooseService.deleteChooseByCid(cid);
        courseService.deleteCourse(cid);
        return "/course/course";
    }

    @RequestMapping("/update")
    public String updateCourse(Course course, HttpServletRequest request){
        courseService.updateCourse(course);
        return "/course/course";
    }

    @RequestMapping("/insert")
    private String insertCourse(Course course){
        courseService.insertCourse(course);
        return "/insertCourse.jsp";
    }

    @RequestMapping("/query")
    public String queryCourse(String cname, HttpServletRequest request){
        List<Course> courses = courseService.getCourseByCname(cname);
        request.setAttribute("q_courses", courses);
        return "/course.jsp";
    }
}
