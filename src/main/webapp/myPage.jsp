<%--
  Created by IntelliJ IDEA.
  User: Алина
  Date: 31.10.18
  Time: 12:35
  To change this template use File | Settings | File Templates.
--%>

<!-- Основная (и единственная в нашем случае) web-страница -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>                                                       <!-- page: на данной странице, contentType: тип передаваемого контента (является приоритетным)
                                                                                                                        текст: html, кодировка: UTF-8, язык: java -->

<html>                                                                                                                  <!-- Основной тэг страницы: открытие -->

    <head>                                                                                                              <!-- Глава (верхний), в html то что прописывается в названии вкладки: открытие -->

        <title>Площадь круга</title>                                                                                    <!-- Название -->

    </head>                                                                                                             <!-- Глава (верхний): закрытие -->

    <body>

    <!-- Yandex.Metrika informer -->

    <a href="https://metrika.yandex.ru/stat/?id=51171974&amp;from=informer"
       target="_blank" rel="nofollow"><img src="https://informer.yandex.ru/informer/51171974/3_1_FFFFFFFF_EFEFEFFF_0_pageviews"
                                           style="width:88px; height:31px; border:0;" alt="Яндекс.Метрика" title="Яндекс.Метрика: данные за сегодня (просмотры, визиты и уникальные посетители)" class="ym-advanced-informer" data-cid="51171974" data-lang="ru" /></a>

    <!-- /Yandex.Metrika informer -->

    <!-- Yandex.Metrika counter -->

    <script type="text/javascript" >
        (function (d, w, c) {
            (w[c] = w[c] || []).push(function() {
                try {
                    w.yaCounter51171974 = new Ya.Metrika2({
                        id:51171974,
                        clickmap:true,
                        trackLinks:true,
                        accurateTrackBounce:true
                    });
                } catch(e) { }
            });

            var n = d.getElementsByTagName("script")[0],
                s = d.createElement("script"),
                f = function () { n.parentNode.insertBefore(s, n); };
            s.type = "text/javascript";
            s.async = true;
            s.src = "https://mc.yandex.ru/metrika/tag.js";

            if (w.opera == "[object Opera]") {
                d.addEventListener("DOMContentLoaded", f, false);
            } else { f(); }
        })(document, window, "yandex_metrika_callbacks2");
    </script>
    <noscript><div><img src="https://mc.yandex.ru/watch/51171974" style="position:absolute; left:-9999px;" alt="" /></div></noscript>

    <!-- /Yandex.Metrika counter -->

        <div style="width: 600px; margin: 0 auto; text-align: center;">                                                 <!-- Элемент: открытие тэга, с его настройками -->

            <br>                                                                                                        <!-- Перевод строки -->
            <label style="font-size: 20pt; font-family: Arial; font-weight:bold;">Площадь круга</label>                 <!-- Обычный лейбл - текст, с настройками форматирования -->
            <br>                                                                                                        <!-- Перевод строки -->
            <br>                                                                                                        <!-- Перевод строки -->
            <br>                                                                                                        <!-- Перевод строки -->

            <form action="" method="post">                                                                              <!-- Форма web-страницы, action: определяет адрес, куда
                                                                                                                             отправляется форма (по умолчанию действие установлено на
                                                                                                                             текущую страницу), method: определяет используемый метод
                                                                                                                             "post" или "get". Так же открывает тэг -->
                <label style="font-size: 14pt; fond-family: Arial;">Радиус</label>                                                                       <!-- Обычный лейбл - текст, с настройками форматирования -->
                <br>                                                                                                    <!-- Перевод строки -->

                <input type="number" step="any" max="2147483647" min="0"
                       value="${radius}" name="radius" style="height: 30px; width: 500px; font-size: 12pt;" required/>                                           <!-- Пользовательсткое поле ввода (число) со своими настройками -->

                <br>                                                                                                    <!-- Перевод строки -->
                <br>                                                                                                    <!-- Перевод строки -->

                <input type="submit" style="height: 30px; width: 200px; font-size: 12pt;" value="Вычислить площадь">                                             <!-- Пользовательсткое поле ввода (кнопка) со своими настройками -->

                <br>                                                                                                    <!-- Перевод строки -->
                <br>                                                                                                    <!-- Перевод строки -->
                <br>                                                                                                    <!-- Перевод строки -->

                <label style="font-size: 14pt; fond-family: Arial;">Результат</label>                                   <!-- Обычный лейбл - текст, с настройками форматирования -->

                <br>                                                                                                    <!-- Перевод строки -->

                <input type="text" value="${result}" name="result" style="height: 30px; width: 500px; font-size: 12pt;">                                         <!-- Пользовательсткое поле ввода (текст) со своими настройками -->

            </form>                                                                                                     <!-- Форма: закрытие тэга -->

        </div>                                                                                                          <!-- Элемент: закрытие тэга -->

    </body>                                                                                                             <!-- Освное тело страницы: закрытие тэга -->

</html>                                                                                                                 <!-- Основной тэг страницы: открытие -->
