// Умножение двух чисел

Функция ПроизведениеДвухЧисел(Множитель1, Множитель2)
	Возврат Множитель1 * Множитель2;
КонецФункции


Процедура ПриНачалеРаботыСистемы()

	Множитель1 = 0;
	ВвестиМножитель(Множитель1);

	Множитель2 = 0;
	ВвестиМножитель(Множитель2);

	Результат = ПроизведениеДвухЧисел(Множитель1, Множитель2);
	ОткрытьЗначение(Результат);

КонецПроцедуры
