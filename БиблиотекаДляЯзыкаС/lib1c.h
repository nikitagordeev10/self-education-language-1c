#ifndef LIB1C_H
#define LIB1C_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Макрос для переменных
#define Перем(type, name) type name
#define Новый(type) (type *)malloc(sizeof(type))

// Типы данных
typedef char *Строка;
typedef int ЦелоеЧисло;
typedef double ДробноеЧисло;
typedef struct {
    char value[11];
} Дата;

// Функции для работы с датой
Дата СоздатьДату(const char *str) {
    Дата date;
    strncpy(date.value, str, sizeof(date.value) - 1);
    date.value[sizeof(date.value) - 1] = '\0';
    return date;
}

// Массив
typedef struct {
    void **data;
    size_t size;
} Массив;

Массив *НовыйМассив(size_t size) {
    Массив *array = (Массив *)malloc(sizeof(Массив));
    array->data = (void **)calloc(size, sizeof(void *));
    array->size = size;
    return array;
}

void УстановитьЭлемент(Массив *array, size_t index, void *value) {
    if (index < array->size) {
        array->data[index] = value;
    }
}

void *ПолучитьЭлемент(Массив *array, size_t index) {
    return index < array->size ? array->data[index] : NULL;
}

void УдалитьМассив(Массив *array) {
    free(array->data);
    free(array);
}

// Условные операторы
#define Если(condition) if (condition)
#define Тогда {
#define Иначе } else {
#define ИначеЕсли(condition) } else if (condition) {
#define КонецЕсли }

// Циклы
#define Пока(condition) while (condition) {
#define КонецЦикла }

#define Для(start, end, var) for (int var = start; var <= end; var++) {
#define КонецЦиклаДля }

// Функции и процедуры
#define Функция(type, name, ...) type name(__VA_ARGS__) {
#define КонецФункции }

#define Процедура(name, ...) void name(__VA_ARGS__) {
#define КонецПроцедуры }

#endif // LIB1C_H
