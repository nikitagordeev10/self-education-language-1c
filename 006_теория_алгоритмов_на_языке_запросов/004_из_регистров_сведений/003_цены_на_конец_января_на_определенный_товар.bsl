ЗапросЦеныНаБананыНаКонецЯнваря.Текст = 
	"
	|ВЫБРАТЬ
	|	ЦеныСрезПоследних.Клиент.Наименование КАК Клиент,
	|	ЦеныСрезПоследних.Еда.Наименование КАК Еда,
	|	ЦеныСрезПоследних.Цена
	|ИЗ
	|	РегистрСведений.ЦенаНаЕдуДляКлиентов.СрезПоследних(ДАТАВРЕМЯ(2014, 01, 31), Еда.Наименование = ""Банан"") КАК ЦеныСрезПоследних
	|УПОРЯДОЧИТЬ ПО
	|	Клиент ВОЗР,
	|	Еда ВОЗР
	|ИТОГИ ПО
	|	ЦеныСрезПоследних.Клиент
	|";