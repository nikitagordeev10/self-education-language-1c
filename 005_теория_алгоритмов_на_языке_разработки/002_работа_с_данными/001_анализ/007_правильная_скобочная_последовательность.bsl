Процедура ПроверитьПоследовательностьСкобок(СтрокаДляПроверки)
	Счетчик = 0;
	Для Индекс = 1 По СтрДлина(СтрокаДляПроверки) Цикл
		Символ = Сред(СтрокаДляПроверки, Индекс, 1);
		Если Символ = "(" Тогда
			Счетчик = Счетчик + 1;
		ИначеЕсли Символ = ")" Тогда
			Счетчик = Счетчик - 1;
		КонецЕсли;

		Если Счетчик < 1 Тогда
			Прервать;
		КонецЕсли;
	КонецЦикла;

	Если Счетчик = 0 Тогда
		Сообщить("Последовательность корректна");
	Иначе
		Сообщить("Последовательность некорректна");
	КонецЕсли;

КонецПроцедуры

Процедура ПриНачалеРаботыСистемы()

	СтрокаДляПроверки = "";
	ВвестиСтроку(СтрокаДляПроверки);
	ПроверитьПоследовательностьСкобок(СтрокаДляПроверки);

КонецПроцедуры