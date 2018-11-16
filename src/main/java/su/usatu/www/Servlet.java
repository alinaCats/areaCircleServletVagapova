package su.usatu.www;                                                                                                   // Репозиторий

/** Подключаемые библиотеки **/
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.DecimalFormat;

/**
 * Объявляем класс Servlet наследующийся от HttpServlet и переопределяющий два него два метода:
 * doGet(HttpServletRequest req, HttpServletResponse resp)
 * doPost(HttpServletRequest req, HttpServletResponse resp)
 **/
public class Servlet extends HttpServlet {

    final BigDecimal PI = new BigDecimal(Math.PI);                                                                      // Объект-константа класса "BigDecimal" со значением равным "Pi"

    /**
     * Метод считающий произведение введенных чисел и выводящий результат на экран
     * Метод срабатывает при запросе на url /
     * Тип запроса "post"
     *
     * @param req объект-запрос
     * @param resp объект-ответ
     * @throws ServletException исключение типа ServletException
     * @throws IOException исключение типа IOException
     **/
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("myPage.jsp").forward(req, resp);                                                   // Загрузка страницы myPage.jsp
    }

    /**
     * Метод считающий произведение введенных чисел и выводящий результат на экран
     * Метод срабатывает при запросе на url /
     * Тип запроса "post"
     *
     * @param req объект-запрос
     * @param resp объект-ответ
     * @throws ServletException исключение типа ServletException
     * @throws IOException исключение типа IOException
     **/
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String radiusText = req.getParameter("radius").replace(",", ".");                         // Получаем строковое значение радиуса (из объекта запроса req) и сразу же заменяем "," на "." (при необходимости)
        BigDecimal radiusValue = new BigDecimal(radiusText);                                                            // Создаем объект класса "BigDecimal" со значением полученного параметра (парсим)

        BigDecimal result = radiusValue.multiply(radiusValue);                                                          // Создаем объект класса "BigDecimal", который равен полученному радиусу в квадрате
        result = result.multiply(PI);                                                                                   // Домножаем наш радиус на константу ("Pi")
        DecimalFormat bdf = new DecimalFormat("#.######");                                                      // Задаем формат вывода класса "BigDecimal" (5 знаков после запятой)

        req.setAttribute("radius", req.getParameter("radius"));                                                   /** Кладем в объект-запрос атрибут и присваеваем атрибуту значение, в кратце
                                                                                                                            отправляем обратно на форму первое число [для сохранения введенного числа]) **/
        req.setAttribute("result", bdf.format(result).toString().replace(".", ","));               /** Кладем в объект-запрос атрибут результата и присваиваем атрбуту значение, попутно применяем формат вывода и заменяем "." на ",",
                                                                                                                         в кратце (отправляем результат на форму для вывода) **/

        req.getRequestDispatcher("myPage.jsp").forward(req, resp);                                                   // Загрузка страницы myPage.jsp
    }
}
