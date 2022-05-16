package by.bakhar.project.controller.command.impl;

import by.bakhar.project.controller.command.Command;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.IOException;

public class RegisterCommand implements Command {
    private static final Logger logger = LogManager.getLogger();
    private static final String USER_EMAIL = "email";
    private static final String USER_PASSWORD = "user_password";

    @Override
    public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        HttpSession session = req.getSession();

        String login = req.getParameter(USER_EMAIL);
        String user_password = req.getParameter(USER_PASSWORD);
        session.setAttribute("email", login);
        session.setAttribute("user_password", user_password);
        System.out.println(login);
        System.out.println(user_password);
        resp.sendRedirect("/web_war/pages/form.jsp");

    }
}
