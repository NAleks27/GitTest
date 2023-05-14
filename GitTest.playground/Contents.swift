import UIKit
// MARK: классические команды
// clear - oчистка терминала от команд
// esc -> wq - выход из странного окна

// MARK: Подготовка
// 1. Проверка наличия гита и его версии ------------------------------
/// git --version
// 2. Задать имя и почту пользователя в гите --------------------------
/// git config --global user.name "Aleksey Nosik"
/// git config --global user.email aleksey.dev27@gmail.com
// 3. Проверка имени и почты пользователя -----------------------------
/// git config --global user.name
/// git config --global user.email
// 4. Перезапись имя пользователя -------------------------------------
/// git config --global --replace-all user.name "Ivan Ivanov"

// MARK: Локальный репозиторий
// Открываем папку с проэктом в терминале и инициализируем его --------
// В папке проэкта должна появиться папка .git

// 1. Узнаем текущее состояние репозитория (ветки + коммиты, отслеживаемые и неотслеживаемые файлы)
/// git status

// 2. Добавляем файл в систему гит, чтобы он отслеживал его изменения
/// git add GitTest

// 3. Создаем точку отсчета для текущего состояния файла и всего проэкта в целом если это первый коммит (в кавычках пишем то, что мы сделали в файле, что изменили)
/// git commit -m "start project v0.1"

// 4. После каких-либо изменений в файле или проэете смотрим статус
/// git status

// 5. Можно создать файл .gitignore в который мы вписываем файлы и папки, которые не нужно или не хоти отслеживать

// 6. Подготовка измененных файлов к коммиту. Все модифицированные файлы и папки можно добавить в гит (подготовить для коммита) + затем сделать коммит
/// git add --all  или же git add .
/// git commit -m "v1.0"

// 7. Проверка истории коммитов (каждый коммит имеет уникальный идентификатор + имя и почту автора + дату и время + комментарий к коммиту)
/// git log
// Более читабельный вариант проверки истории коммитов
/// git log --oneline
// Персональный вывод параметров
/// git log --pretty=format:"%h %ad [%an] | %s %d" --graph --date=short

// 8. Если мы подготовили все файлы к коммиту, но потом нам нужно разделить их, чтобы одни файлы были одник коммитом а другие другим, то нужно вывести файл из состояния подготовленности к коммиту (но все изменения в самом файле останутся)
/// git restore --staged GitTest.playground

// 9. По умолчанию мы находимся на состоянии HEAD. Если при переходе например с версии 1.0 на 2.0 мы убрали какой-то функционал, так как заказчик сказал так. Но потом заказчик захотел вернуть этот функционал. Для этого, чтобы перейти в состояние версии 1.0 нужно (+ айди коммита):
/// git checkout a4fb47a

// 10. После перехода на другой коммит более свежие коммиты могут не отображаться, поэтому для этого нужно ввести.
/// git log --oneline --all

// 11. С состояния этого коммита мы создаем новую ветку
/// git branch new-feature
///

// 11. Для возврата на самую актуальную версию коммита
/// git checkout a4fb47a (тут айди последнего коммита)
/// git switch master
