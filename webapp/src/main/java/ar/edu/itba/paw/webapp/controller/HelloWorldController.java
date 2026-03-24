package ar.edu.itba.paw.webapp.controller;

import ar.edu.itba.paw.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestMethod;
import ar.edu.itba.paw.models.User;
import java.util.Optional;


@Controller
public class HelloWorldController {

    private final UserService userService;

    @Autowired
    public HelloWorldController(final UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("helloworld/index");
        mav.addObject("message", "Hello world from controller");
        return mav;
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public ModelAndView createUser(@RequestParam("email") final String email, @RequestParam("password") final String password, @RequestParam("username") final String username) {
        final ModelAndView mav = new ModelAndView("helloworld/index");
        User user = userService.createUser(email, password, username);
        mav.addObject("message", "Hello World " + user.getUsername());
        return mav;
    }

    @RequestMapping(value = "/profile/{id}", method = RequestMethod.GET)
    public ModelAndView index(@PathVariable("id") final long id) {
        ModelAndView mav = new ModelAndView("helloworld/index");
        Optional<User> user = userService.findById(id);
        mav.addObject("message", "This is the profile for " + user.get().getUsername());
        return mav;
    }
}
