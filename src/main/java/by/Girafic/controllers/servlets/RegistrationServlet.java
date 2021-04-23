package by.Girafic.controllers.servlets;

import by.Girafic.controllers.util.GlobalValuesAccess;
import by.Girafic.controllers.util.RequestParser;
import by.Girafic.core.commonds.LoginData;
import by.Girafic.core.interactors.AdminInteractor;
import by.Girafic.core.interactors.InteractorAccess;
import by.Girafic.webview.AdminView;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "registrationServlet", value = "/registration")
public class RegistrationServlet extends HttpServlet
{
    private final InteractorAccess interactorAccess = GlobalValuesAccess.getValues().interactorAccess;

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    {
        RequestParser parser = new RequestParser(request);
        LoginData ald = parser.takeAdminLoginData();
        try
        {
            AdminInteractor interactor = interactorAccess.adminLogin(ald,new AdminView(request,response,this));
            switch (parser.takeUserType())
            {
                case Student -> interactor.createUser(parser.takeStudentData());
                case Teacher -> interactor.createUser(parser.takeTeacherData());
                case Admin -> interactor.createUser(parser.takeAdminData());
            }
        } catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}
