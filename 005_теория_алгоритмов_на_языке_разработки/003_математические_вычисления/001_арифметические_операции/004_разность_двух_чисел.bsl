
Функция РазностьДвухЧисел(Делимое, Делитель)
	Возврат Строка("" + Делимое / Делитель + "," + Делимое % Делитель);
КонецФункции


Процедура ПриНачалеРаботыСистемы()

	Делимое = 0;
	ВвестиМножитель(Делимое);

	Делитель = 0;
	ВвестиМножитель(Делитель);

	Результат = РазностьДвухЧисел(Делимое, Делитель);
	ОткрытьЗначение(Результат);

КонецПроцедуры
