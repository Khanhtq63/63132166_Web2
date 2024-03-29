import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/AboutMe")
public class AboutMe extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter traVe = response.getWriter();
        String contextPath = request.getContextPath();

        // Background image URL
        String backgroundImageUrl = contextPath + "https://s.elib.vn/images/doc/2020/20200724//thumb/600x254/phan-mem-eclipse813.jpg";
        traVe.append("<style>" +
                "    body {" +
                "        background-image: url('" + backgroundImageUrl + "');" +
                "        background-size: cover;" +
                "        background-position: center;" +
                "        height: 100vh; /* 100% of the viewport height */" +
                "        margin: 0; /* Remove default margin */" +
                "        display: flex;" +
                "        align-items: center;" +
                "        justify-content: center;" +
                "    }" +
                "</style>");

        traVe.append("<img src='https://static-00.iconduck.com/assets.00/user-icon-1024x1024-dtzturco.png' alt='Avatar' class='mb-4 rounded-circle' style='width: 150px;'>");
        String noiDungHTML = "<!DOCTYPE html>" +
                "<html lang=\"en\">" +
                "<head>" +
                "    <meta charset=\"UTF-8\">" +
                "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">" +
                "    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\">" +
                "    <title>About Me</title>" +
                "</head>" +
                "<body class=\"text-center\">" +
                "    <form class=\"form-signin\" method=\"post\" action=\"" + contextPath + "/Bai1.3AboutMe/AboutMe\">" +
                "        <h1 class=\"h3 mb-3 font-weight-normal\">Giới thiệu</h1>" +
                "        <label class=\"sr-only\">Trần Quốc Khánh</label>" +
                "        <p class=\"lead\">Trần Quốc Khánh</p>" +
                "        <label class=\"sr-only\">Công nghệ thông tin</label>" +
                "        <p class=\"lead\">Công nghệ thông tin</p>" +
                "        <label class=\"sr-only\">63CNTT-CLC2</label>" +
                "        <p class=\"lead\">63CNTT-CLC2</p>" +
                "        <label class=\"sr-only\">63132166</label>" +
                "        <p class=\"lead\">63132166</p>" +
                "    </form>" +
                "</body>" +
                "</html>";
        traVe.append(noiDungHTML);
    }
}
