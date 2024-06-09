# practRuby
Как можно работать с таблицами в MySQL на Ruby

Внешний вид страницы:

![image](https://github.com/Nadya-Karandasheva/practRuby/assets/55376506/1eaf9748-9d3c-4db9-ba17-732ca78ec4d5)



Сайт на Ruby будет работать с Apache, если добавить в httpd.conf параметры:
1) Options Indexes FollowSymLinks ExecCGI
2) AddHandler cgi-script .cgi .rb
3) DirectoryIndex index.rb

Далее, необходимо установить поддержку MySQL2 для Ruby с помощью команды:
C:\Ruby32-x64\bin>gem install mysql2 --platform=ruby -- '--with-mysql-lib="C:\Ruby32-x64\mysql-8.0.32-winx64\lib" --with-mysql-include="C:\Ruby32-x64\mysql-8.0.32-winx64\include" --with-mysql-dir="C:\Ruby32-x64\mysql-8.0.32-winx64"'

Пример гарантированно работает:
1) Операционная система: Windows 11 Home, Version: 22H2, Build: 22621.1485;
2) Версия Ruby: 3.2.2 (2023-03-30 revision e51014f9c0) [x64-mingw-ucrt];
3) Поддержка MySQL2 для Ruby устанавливается из пакета mysql-8.0.32-winx64.zip;
4) Установленная версия XAMPP: 7.4.27 (Apache 2.4.52, MariaDB 10.4.22);
5) Выполнить скрипт import_test.sql для создания тестовой базы в phpMyAdmin.
