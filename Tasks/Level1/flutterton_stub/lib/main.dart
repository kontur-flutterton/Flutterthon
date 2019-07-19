import 'package:flutter/material.dart';

//TODO: 1. Создать Stateless Widget c именем MyApp и заменить Container на наш виджет
void main() => runApp(Container());


//TODO: 2. В методе build виджета MyApp в качестве возвращаемого виджета использовать MaterialApp
//TODO: 2.1. Указать темную тему приложения и в качестве домашнего экрана (home property) указать Container


//TODO: 3. Создать StatelessWidget LoginScreen и в качестве домашнего экрана у MaterialApp указать наш виджет


//TODO: 4. В виджете LoginScreen в качестве возвращаемого виджета использовать Scaffold


//TODO: 5. Зайти в файл pubspec.yaml, расскоментить строки с ассетами (assets:) и указать путь до изображения (images/flutter.png)


//TODO: 6. Добавить в тело виджета Scaffold (body property) виджет Image.asset
//TODO: 6.1. В виджете Image указать путь до изображения, задать ширину и высоту изображения, равную 150 поинтам


//TODO: 7. Оберуть виджет изображения в SafeArea


//TODO: 8. Обернуть виджет изображения в Column


//TODO: 9. Добавить в Column виджет TextField
//TODO: 9.1. В качестве decoration указать InputDecoration
//TODO: 9.2. Внутри класса InputDecoration указать labelText со значением 'Email' и для border указать OutlineInputBorder
//TODO: 9.3. Внутри класса InputDecoration указать стиль для label, сделать ее серым цветом с оттенком 400 (использовать TextStyle)
//TODO: 9.4. Внутри класса InputDecoration убрать границу у TextField
//TODO: 9.5. Внутри класса InputDecoration добавить иконку (prefixIcon) со значением mail_outline и указать у нее светло-голубой цвет


//TODO: 10. Обернуть TextField в Container
//TODO: 10.1. В качестве decoration указать ShapeDecoration
//TODO: 10.2. В качестве фигуры ShapeDecoration указать RoundedRectangleBorder
//TODO: 10.3. Внутри класса RoundedRectangleBorder указать borderRadius со значением 8 поинтов для всех сторон прямоугольника (классы BorderRadius, Radius)
//TODO: 10.4. В качестве границы (side) указать BorderSide, и указать у этой границы серый цвет с оттенком 100


//TODO: 11. Внутри виджета TextField указать цвет курсора как белый и ширину курсора задать 1 поинт


//TODO: 12. Добавить отступы (padding) для виджета Column по горизонтали, равные 32 поинтам
//TODO: 12.1. Добавить отступы для виджета Image по вертикали, равные 32 поинтам


//TODO: 13. Скопировать наш инпут с вводом логина (начиная с виджета Container) и вставить его в конец Column
//TODO: 13.1. Заменить labelText на 'Password' и иконку на lock_open
//TODO: 13.2. В TextField добавить obscureText и указать значение true


//TODO: 14. Открыть вкладку 'Flutter Outline' (в Android Studio находится справа вверху)
//TODO: 14.1. Найти в иерархии виджетов наш инпут с паролем, вызвать контекстное меню, нажать Extract Widget, указать имя LoginField


//TODO 15. Перейти к виджету Login Field, убрать конструктор виджета, убрать ключевое слово new из его вызова (класс LoginScreen)
//TODO 15.1. Добавить три поля: икноку с типом IconData, label с типом String и флаг obscureText. Сделать поля final
//TODO 15.2. Добавить констркутор с именованными параметрами, указать там все наши поля


//TODO: 16. В виджете LoginScreen заменить инпут логина на класс LoginField, указать необходимые параметры
//TODO: 16.1. Добавить отступ по вертикали между инпутами равный 16 поинтам


//TODO: 17. В конец Column добавить виджет Checkbox. Указать его значение как false, указать анонимную функцию в колбэке onChanged


//TODO: 18. Заменить виджет LoginScreen со StatelessWidget на StatefulWidget
//TODO: 18.1. В классе _LoginScreenState добавить флаг _isRememberMeChecked и указать его значение как false


//TODO: 19. В виджете CheckBox в качестве значение указать переменную _isRememberMeChecked
//TODO: 19.1. В колбэке onChanged сменить значение _isRememberMeChecked на противоположное
//TODO: 19.2. Проверить что CheckBox не нажимается
//TODO: 19.3. В колбэк onChanged добавить метод setState, чтобы изменить стейт виджета


//TODO: 20. Обернуть CheckBox в виджет Row
//TODO: 20.1. В конец Row добавить текст 'Remember me'


//TODO: 21. В конец Row добавить кнопку(FlatButton)
//TODO: 21.1. В качестве child кнопки укзаать виджет Text со значением 'FORGOT PASSWORD?'
//TODO: 21.2. Задать стиль текста, указать светло-голубой цвет, установить размер шрифта, равный 12 поинтам
//TODO: 21.3. Определить колбэк onPressed у кнопки (иначе кнопка будет в выключенном состоянии)


//TODO: 22. Поиграться со значениями MainAxisAlignment у виджета Row
//TODO: 22.1. Удалить mainAxisAlignment
//TODO: 22.2. Добавить виджет Expanded между текстом и кнопкой, указать Container в качестве его потомка


//TODO: 23. Создать StatefulWidget с именем LoginButton
//TODO: 23.1. В методе build вернуть виджет Container
//TODO: 23.2. В качестве decoration указать BoxDecoration, и указать у него светло-голубой цвет
//TODO: 23.3. В качестве потомка у контейнера указать виджет текста
//TODO: 23.4. Указать значение текста как 'LOG IN' и задать ему белый цвет
//TODO: 23.5. В Container с помощью параметра padding задать отсупы ото всех краев, равные 16 поинтов
//TODO: 23.6. В BoxDecoration указать радиус для всех краев, равный 6 поинтам
//TODO: 23.6. В BoxDecoration определить boxShadow и в качестве его значения указать массив ([])
//TODO: 23.7. В этот массив добавить класс BoxShadow
//TODO: 23.8. Указать у класса BoxShadow цвет как светло-голубой с оттенком 800
//TODO: 23.9. Указать у класса BoxShadow оффсет по вертикальной оси, равный 8 поинтам
//TODO: 23.10. Добавить радиус блюра, равный 12 поинтам


//TODO: 24. Обернуть корневой виджет Container в классе _LoginButtonState в виджет GestureDetector
//TODO: 24.1. Определить у виджета GestureDetector следующие параметры: onTapDown, onTapUp, onTapCancel


//TODO: 25. В класс _LoginButtonState добавить приватные поля, отвечающие за оттенок кнопки и тени со значениями 500 и 800 соответственно
//TODO: 25.1 Определить приватный метод _setButtonState(bool isPressed), отвечающий за смену оттенков кнопки и тени
//TODO: 25.2. В методе для поля _buttonShade установить значение 600, если isPressed == true и 500 в другом случае
//TODO: 25.3. В методе для поля _shadowShade установить значение 900, если isPressed == true и 800 в другом случае
//TODO: 25.4. В метод _setButtonState добавить метод setState и обновлять поля там
//TODO: 25.5. Указать соответствующие значения полей в качестве оттенка для кнопки и тени


//TODO: 26. В колбэках виджета GestureDetector вызывать метод _setButtonState с соответствующим значением (нажата ли кнопка)


//TODO: 27. В класс LoginButton добавить final поля onPressed с типом VoidCallback и child с типом Widget
//TODO: 27.1. Добавить конструктор класса. Указать в конструкторе наши поля. Добавить аннотацию @required к каждому полю в конструкторе
//TODO: 27.2. В виджет GestureDetector добавить параметр onTap и указать его значение как widget.onPressed
//TODO: 27.3. Заменить виджет текста со значением 'LOG IN' на поле widget.child
//TODO: 27.4. Обновить виджет LoginButton в классе _LoginScreenState


//TODO: 28. Указать в виджете Column класса _LoginScreenState параметр crossAxisAlignment со значением stretch


//TODO: 29. В классе _LoginButtonState обернуть widget.child в виджет Center


//TODO: 30. Добавить в конец виджета Column класса _LoginScreenState виджет Text со значением 'or connect with'
//TODO: 30.1. Указать цвет текста как серый и задать размер шрифта, равный 12 поинтов
//TODO: 30.2. Сделать виджет текста по центру экрана
//TODO: 30.3. Добавить вертикальное расстояние от кнопки, равное 32 поинтам


//TODO: 31. Перейти на сайт https://pub.dev/flutter/
//TODO: 31.1. Найти библиотеку font_awesome_flutter
//TODO: 31.2. Добавить библиотеку в проект (pubspec.yaml)
//TODO: 31.3. Импортировать ее в файл main.dart
//TODO: 31.4. Пересобрать приложение


//TODO: 32. Добавить в конец виджета Column класса _LoginScreenState виджет LoginButton
//TODO: 32.1. Указать у кнопки в качестве child иконку Фейсбука из класса FontAwesomeIcons
//TODO: 32.2. Определить колбэк onPressed у кнопки
//TODO: 32.3. Добавить отступ сверху от кнопки со значением 16 поинтов и снизу от кнопки со значением 32 поинта

//TODO: 33. Обернуть кнопку в Row виджет
//TODO: 33.1. Скопировать еще 2 кнопки LoginButton в Row
//TODO: 33.3. Проставить соответствующие ионки соц. сетей
//TODO: 33.4. Сделать кнопки по центру экрана
//TODO: 33.5. Добавить отступы между кнопок, равные 16 поинтов


//TODO: 34. Обернуть виджеты экрана (после SafeArea) в виджет SingleChildScrollView
















