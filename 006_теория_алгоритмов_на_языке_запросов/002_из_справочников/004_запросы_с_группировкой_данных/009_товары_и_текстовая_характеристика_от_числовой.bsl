ЗапросРасчетПитательности.Текст = 
	"
	|ВЫБРАТЬ
	|	Наименование,
	|	Калорийность,
	|	ВЫБОР
	|	КОГДА Калорийность < 100 ТОГДА
	|		""Легкая""
	|	КОГДА Калорийность < 300 ТОГДА
	|		""Средняя""
	|	ИНАЧЕ
	|		""Высокая""
	|	КОНЕЦ КАК Питательность
	|ИЗ
	|	Справочник.Еда
	|";