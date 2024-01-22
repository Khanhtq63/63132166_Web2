import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/TinhBMI")
public class TinhBMI extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public TinhBMI() {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
        PrintWriter traVe = response.getWriter();
        traVe.append("Hãy nhập chỉ số cân nặng và chiều cao dưới đây ");
        String noiDungHTML = "<form method=\"post\" action=\"/Bai1.4BMI/TinhBMI\">"
                + "<label>Chiều cao:</label>"
                + "<input type=\"text\" name=\"height\"><br>\r\n"
                + "<label>Cân nặng:</label>"
                + "<input type=\"text\" name=\"weight\"><br>"
                + "<input type=\"submit\" value=\"Tính\">"
                + "</form>";
        traVe.append(noiDungHTML);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
        PrintWriter traVe = response.getWriter();

        String heightStr = request.getParameter("height");
        String weightStr = request.getParameter("weight");

        if (heightStr != null && weightStr != null && !heightStr.isEmpty() && !weightStr.isEmpty()) {
            try {
                double height = Double.parseDouble(heightStr);
                double weight = Double.parseDouble(weightStr);

                double bmi = weight / (height * height);

                traVe.append("<br>Chỉ số BMI của bạn là: " + bmi);
            } catch (NumberFormatException e) {
                traVe.append("Vui lòng nhập chiều cao và cân nặng là số hợp lệ.");
            }
        } else {
            traVe.append("Vui lòng nhập đầy đủ chiều cao và cân nặng.");
        }
    }
}
