Процедура ПриНачалеРаботыСистемы()
	
	// без циклов
	Сообщить ("5 * 1 = " + 5 * 1);
	Сообщить ("5 * 2 = " + 5 * 2);
	Сообщить ("5 * 3 = " + 5 * 3);
	Сообщить ("5 * 4 = " + 5 * 4);
	Сообщить ("5 * 5 = " + 5 * 5);
	Сообщить ("5 * 6 = " + 5 * 6);
	Сообщить ("5 * 7 = " + 5 * 7);
	Сообщить ("5 * 8 = " + 5 * 8);
	Сообщить ("5 * 9 = " + 5 * 9);
	Сообщить ("5 * 10 = " + 5 * 10);

	// с циклом для
	Для Множитель = 1 По 10 Цикл
		Сообщить("5 * " + Множитель + " = " + 5 * Множитель);
	КонецЦикла;

	// с циклом пока
	Множитель = 1; 
	Пока Множитель <= 10 Цикл
		Сообщить("5 * " + Множитель + " = " + 5 * Множитель);
		Множитель = Множитель + 1;
	КонецЦикла;

	// с циклом пока
	Множитель = 10; 
	Пока Множитель >= 1 Цикл
		Сообщить("5 * " + Множитель + " = " + 5 * Множитель);
		Множитель = Множитель - 1;
	КонецЦикла;

КонецПроцедуры