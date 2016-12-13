package controller;

import demo.model.User;
import demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("user")
public class UserController extends BaseController {

    @Autowired
    private UserService userService;

    @RequestMapping("login")
    private String login(User user) {
        user = userService.login(user);
        if (user != null) {
            session.setAttribute("user", user);
            if (user.getRole().equals("系统管理员")) {
                return "redirect:/user/admin.jsp";
            }
//            if (user.getRole().equals("user")) {
//                session.setAttribute("list", salaryService.queryList("salary.queryByName", user.getUsername()));
//                return "redirect:/user.jsp";
//            }
        }
        request.setAttribute("message", "邮箱或密码错误");
        return "/index.jsp";
    }

    @RequestMapping("create")
    private String create(User user) {
        userService.create(user);
        return "redirect:list";
    }

//    @RequestMapping("list")
//    private String list() {
//        session.setAttribute("list", userService.list());
//        return "redirect:/user/list.jsp";
//    }
//
//    @RequestMapping("queryById/{id}")
//    private String search(@PathVariable("id") Integer id) {
//        session.setAttribute("user", userService.queryById(id));
//        return "redirect:/user/edit.jsp";
//    }
//
//    @RequestMapping("modify")
//    private String modify(User user) {
//        userService.modify(user);
//        return "redirect:list";
//    }
//
//    @RequestMapping("remove/{id}")
//    private String remove(@PathVariable("id") Integer id) {
//        userService.remove(id);
//        return "redirect:/user/list";
//    }
}