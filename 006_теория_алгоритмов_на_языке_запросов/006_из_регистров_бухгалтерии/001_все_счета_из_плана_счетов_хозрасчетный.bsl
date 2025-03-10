// План счетов.
// 41.01 товары на складах (на нем учет еды).
// 50.01 учет денежных средств в кассе.
// 60.01 учет расчетов с поставщиками.
// 62.01 учет расчетов с клиентами.

// На 41.01 ведется количественный и суммовой учет в разрезе субконто Еда и Склад.
// На 50.01 ведется только суммовой учет.
// На 60.01 ведется только суммовой учет в разрезе субконто Поставщик.
// На 62.01 ведется только суммовой учет в разрезе субконто Клиент.

// Корреспонденция счетов.
// Дт 41 (Еда, Склад) Кт 60 (Поставщик) "Поступление еды на склад от поставщика"
// Дт 60 (Поставщик) Кт 50 "Оплатили поставщику за еду из кассы"
// Дт 62 (Клиент) Кт 41 (Еда, Склад) "Продажа еды со склада клиенту"
// Дт 50 Кт 62 (Клиент) "Поступили деньги в кассу от клиента за еду"

ЗапросВсеСчетаИзПланаСчетовХозрасчетный.Текст = 
	"
	|ВЫБРАТЬ
	|	Хозрасчетный.Код,
	|	Хозрасчетный.ИмяПредопределенныхДанных КАК Имя,
	|	Хозрасчетный.Вид,
	|	Хозрасчетный.Количественный,
	|	Хозрасчетный.Родитель
	|ИЗ
	|	ПланСчетов.Хозрасчетный КАК Хозрасчетный
	|УПОРЯДОЧИТЬ ПО 
	|	Код ВОЗР 
	|";