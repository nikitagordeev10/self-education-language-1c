# Компилятор и флаги
CC = gcc
CFLAGS = -g -O0 -I. -finput-charset=UTF-8   # -I. указывает компилятору искать заголовочные файлы в текущем каталоге

# Главная цель (по умолчанию)
all: main

# Сборка исполняемого файла из объектного файла main.o
main: main.o
	$(CC) $(CFLAGS) -o main main.o

# Компиляция main.c в объектный файл
main.o: main.c lib1c.h
	$(CC) $(CFLAGS) -c main.c

# Автоформатирование исходного кода
indent:
	indent -kr -nut -ts4 main.c

# Очистка скомпилированных файлов
clean:
	rm -f main main.o
