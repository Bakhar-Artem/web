package by.bakhar.project.controller.command.impl;

import by.bakhar.project.controller.command.Command;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class FormCommand implements Command {
    private static final String FIRST_NAME = "firstname";
    private static final String LAST_NAME = "lastname";
    private static final String USERNAME = "username";
    private static final String ADDRESS = "address";
    private static final String COUNTRY = "country";
    private static final String CARD_NAME = "cardname";
    private static final String CARD_NUMBER = "cardnumber";
    private static final String CARD_EXPR = "cardexpr";
    private static final String CARD_CVV = "cardcvv";

    @Override
    public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        HttpSession session = req.getSession();

        String fName = req.getParameter(FIRST_NAME);
        String lName = req.getParameter(LAST_NAME);
        String username = req.getParameter(USERNAME);
        String address = req.getParameter(ADDRESS);
        String country = req.getParameter(COUNTRY);
        String cardName = req.getParameter(CARD_NAME);
        String cardNumber = req.getParameter(CARD_NUMBER);
        String cardExpr = req.getParameter(CARD_EXPR);
        String cardCVV = req.getParameter(CARD_CVV);
        session.setAttribute("firstname", fName);
        session.setAttribute("lastname", lName);
        session.setAttribute("username", username);
        session.setAttribute("address", address);
        session.setAttribute("country", country);
        session.setAttribute("cardname", cardName);
        session.setAttribute("cardnumber", cardNumber);
        session.setAttribute("cardexpr", cardExpr);
        session.setAttribute("cardcvv", cardCVV);
        resp.sendRedirect("/web_war/pages/result.jsp");
    }
}
