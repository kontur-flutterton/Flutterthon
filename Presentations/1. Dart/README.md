# Dart
Основные конструкции языка для быстрого погружения. Полную документацию вы сможете на [официальном сайте](https://dart.dev/guides/language/language-tour).

## Переменные
```dart
var message = "Hello world!"; // Простая переменная типа String
final message = "Hello world!"; // Неизменяемая переменная типа String
const message = "Hello world!"; // Константа типа String
```

## Null-safety
Оператор `??` проверяет, равна ли переменная null и если да, то использует выражение в правой части
```dart
String message = null;
print(message ?? "message is null"); // Выведет message is null
```

Оператор `?` позволяет безопасно обращаться к переменной, которая может быть равна null.
```dart
String message = null;
print(message?.length); // Выведет null
```

## Числа
В dart есть два основных типа чисел `Integer` и `Double`, оба наследуются от `Number` и занимают в памяти 64 бита:
```dart
int integer = -42;
double doubled = 42.5;
num number = 42.5;

int.parse("42");
double.parse("42.0");
num.parse("42.6");

integer.abs();
doubled.ceil();
number.floor();
number.isNaN;
number.toInt();
number.toDouble();
```

Для дополнительных математических операций нужно импортировать пакет `math`:
```dart
import 'dart:math' as math;

math.sin(math.pi / 2);
math.cos(math.pi);
math.log(10);
math.pow(2, 28);
```

## Коллекции
Основные виды коллекций: список (list), набор (set), словарь (map):
```dart
var list = [1, 2, 3];
var set = {1, 2, 3};
var map = {'1': 1, '2': 2, '3': 3};

list.add(4);
list.addAll([5, 6]);
list.remove(6);
list.removeAt(4);
list.removeWhere((int a) => a > 3);

set.isEmpty;
map.isNotEmpty;

set.any((e) => e > 5);
set.every((e) => e > 4);
```

Для объединение коллекций можно использовать `spread (...)` или `+` операторы:
```dart
var list1 = [3, 2, 1];
var list2 = [0, ...list1];
print( list2 ); // 0, 3, 2, 1

var compositeList = [1, 2] + [3, 4] + [5];
print( compositeList ); // 1, 2, 3, 4, 5
```

Для создания неизменяемой коллекции нужно добавить ключевое слово `const` при создании коллекции:
```dart
var immutableMap = const {'1': 1, '2': 2, '3': 3};
immutableMap['4'] = 4; // Error
```

## Итераторы
Классические конструкции для обхода коллекций:
```dart
var list = [3, 2, 1];
for (int i = 0; i < list.length; i++) {
  print(list[i]);
}

for (e in list) {
  print(e);
}

int i = 0;
while(i < list.length) {
  print(list[i]);
  i++;
}

list.forEach((int value) => print(value));
```

## Анонимные функции
Для создания анонимной (лямбда) функции нужно указать блок аргументов, тело функции и arrow-оператор `=>`:
```dart
var list = [3, 2, 1];

var lambda1 = (int value) => print(value);
list.forEach(lambda1);

var lambda2 = (int value) => {
  print(value)
};
list.forEach(lambda2);

list.forEach((int value) => {
  print(value)
});
```

## Классы
Класс может содержать только один конструктор по-умолчанию, другие конструкторы должны быть именованными:
```dart
class Point {
  num x, y; // Поля классса
  String _name; // Приватное поле класса

  Point(num x, num y) { // Дефолтный конструктор
    this.x = x;
    this.y = y;
  }

  Point.named(this.x, this.y); // Именованный конструктор

  // Фабрика объектов
  static Point _instance;
  factory Point.defaults() {
    return _instance ?? (_instance = Point.empty());
  }
}
```

Для обращения к объекту и возвращения ссылки на него можно использвать каскадную нотацию с помощью оператора `..`:
```dart
var point = Point(0, 0)
    ..x = 1
    ..y = 2;
```

## Параметры методов
Именованные параметры:
```dart
void move({num x, num y}) {
}
```

Именованные параметры с дефолтными значениями:
```dart
void move({num x = 0, num y = 0}) {
}
```

Именованные параметр `y`, который обязательно должен быть указан:
```dart
import 'package:meta/meta.dart';

void move({num x, @required num y}) {
}
```

Опциональный параметр `device`:
```dart
String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}
```

## Наследование
Для наследования используется ключевое слово `extends`, все переопределенные члены класа помечаются аннотацией `@override`:
```dart
class View {
  void render() {
    // Do render stuff
  }
}

class TextView extends View {
  @override
  void render() {
    super.render();
    // Do render stuff
  }
}
```

В dart нет интерфейсов, но можно использовать ключевое слово `implements` и переопределить все методы и свойства родителя:
```dart
class Person {
  String greet(String who) => 'Hello!';
}

class Impostor implements Person {
  String greet(String who) => 'Hello again!';
}
```

## Миксины
Миксины в dart похожи на интерфейс с реализованным методом. Для применения миксина используется ключевое слово `with`:
```dart
mixin TypePrinter {
  void printType() {
    print(this.runtimeType);
  }
}

class Button with TypePrinter {
}

void main() {
  final button = Button();
  button.printType();
}
```

## Асинхронность
Для работы с асинхронностью dart предлагает два основных типа `Future` и `Stream`, а также ключевые слова async/await. Для того, чтобы превратить синхронный метод в асинхронный, достаточно просто добавить ключевое слово `async`, а возвращаемый тип поменять на `Future<T>`:
```dart
String getDartVersion() => '2.4.0';

Future<String> getDartVersionAsync() async => '2.4.0';
```

Несколько асинхронных вызовов можно объединять в цепочки и обрабатывать ошибки:
```dart
final result = await getDartVersionAsync()
  .then((_) => getDartVersionAsync())
  .catchError((e) => print(e));
```

Того же самого можно добиться, если писать вызовы друг за другом, обернув все это в `try-catch`:
```dart
try {
  await getDartVersionAsync();
  await getDartVersionAsync();
} catch (e) {
  print(e);
}
```