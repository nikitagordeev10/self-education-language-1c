// Идеальное число (равно сумме своих делителей)

Функция ЯвляетсяЛиЧислоИдеальным(Число)

	СуммаДелителей = 0;

    // Цикл для поиска делителей
    Для Сч = 1 По Число - 1 Цикл
        Если Число % Сч = 0 Тогда
            СуммаДелителей = СуммаДелителей + Сч;
            // Сообщить(Строка(Сч) + " ");
        КонецЕсли;
    КонецЦикла;

    // Сообщить("");
    // Сообщить("Сумма делителей: " + Строка(СуммаДелителей));

    // Проверка на совершенное число
    Если СуммаДелителей = Число Тогда
        Возврат Истина;
	КонецЕсли;
    
	Возврат Ложь;
КонецФункции


Процедура ПриНачалеРаботыСистемы()

	Число1 = 6;
	Число2 = 28;
	Число3 = 496;
	Число4 = 8128;
	Число5 = 123;

	Сообщить("Является ли число " + Число1 + " идеальным? " + ЯвляетсяЛиЧислоИдеальным(Число1));
	Сообщить("Является ли число " + Число2 + " идеальным? " + ЯвляетсяЛиЧислоИдеальным(Число2));
	Сообщить("Является ли число " + Число3 + " идеальным? " + ЯвляетсяЛиЧислоИдеальным(Число3));
	Сообщить("Является ли число " + Число4 + " идеальным? " + ЯвляетсяЛиЧислоИдеальным(Число4));
	Сообщить("Является ли число " + Число5 + " идеальным? " + ЯвляетсяЛиЧислоИдеальным(Число5));
	
КонецПроцедуры