Процедуа ПриНачалеРабоыСистемы()
	Люди = Новый Массив(4);

	Для СтрМассива = 0 По 3 Цикл
		Люди[СтрМассива] = Новый Структура("Имя, Вес");
		ВвестиСтроку(Люди[СтрМассива].Имя);
		ВвестиСтроку(Люди[СтрМассива].Вес);
	КонецЦикла;

	ИмяСамогоСЛегкогоЧеловека = Люди[0].Имя;
	НаименьшийВес = Люди[0].Вес;

	Для СтрМассива = 1 По 3 Цикл
		Если Люди[СтрМассива].Вес < НаименьшийВес Тогда
			НаименьшийВес = Люди[СтрМассива].Вес;
			ИмяСамогоСЛегкогоЧеловека = Люди[СтрМассива].Имя;
		КонецЕсли;
	КонецЦикла;

	ОткрытьЗначение(
		"Самый легкий человек - " + ИмяСамогоСЛегкогоЧеловека + 
		". Он весит " + НаименьшийВес + " кг."
	);
КонецПроцедуры
