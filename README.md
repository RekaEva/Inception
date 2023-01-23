# Inception

[Как подключить VSCode через SSH](https://www.digitalocean.com/community/tutorials/how-to-use-visual-studio-code-for-remote-development-via-the-remote-ssh-plugin-ru)

[Суперполезная статья] (https://habr.com/ru/company/ruvds/blog/439980/)
Каждому образу Docker соответствует файл, который называется Dockerfile. Его имя записывается именно так — без расширения. При запуске команды docker build для создания нового образа подразумевается, что Dockerfile находится в текущей рабочей директории. Если этот файл находится в каком-то другом месте, его расположение можно указать с использованием флага -f.

Файлы Dockerfile

Слои в итоговом образе создают только инструкции FROM, RUN, COPY, и ADD. Другие инструкции что-то настраивают, описывают метаданные, или сообщают Docker о том, что во время выполнения контейнера нужно что-то сделать, например — открыть какой-то порт или выполнить какую-то команду.


Настройка Mariadb.
Что это: MariaDB — это система управления базами данных, которая является преемницей, ответвлением или улучшенной копией MySQL. MySQL — это одна из самых популярных СУБД на сегодняшний день, которая регулируется и лицензируется компанией Оракл. 

Вот список того, что нам нужно для настройки контейнера:

установленные mariadb + mariadb-client
файл конфигурации mysql
изменение конфигурации mriadb.
файл для запуска sql-скрипта
sql-скрипт для создания базы worpdress
