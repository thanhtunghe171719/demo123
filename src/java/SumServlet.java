import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/sum")
public class SumServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve values of a, b, and c from request parameters
        int a = Integer.parseInt(request.getParameter("a"));
        int b = Integer.parseInt(request.getParameter("b"));
        int c = Integer.parseInt(request.getParameter("c"));

        // Calculate the value of d based on the value of c
        int d = 0;
        switch (c) {
            case 2:
                d = a - b;
                break;
            case 3:
                d = a + b;
                break;
            case 4:
                d = a * b;
                break;
        }

        // Set the value of d as an attribute in the request scope
        request.setAttribute("d", d);

        // Forward the request to the JSP to display the result
        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }
}
