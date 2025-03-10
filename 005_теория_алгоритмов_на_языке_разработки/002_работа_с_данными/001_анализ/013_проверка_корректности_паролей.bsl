// Проверка корректности паролей 
// Автор: Гордеев Никита, 2024


// Функция проверки пароля по условиям
Функция ПроверитьПароль(Пароль)

    Если ПустаяСтрока(Пароль) Тогда
        Возврат Ложь;
    КонецЕсли;

    // Минимальная длина пароля
    Если СтрДлина(Пароль) < 12 Тогда
        Возврат Ложь;
    КонецЕсли;

    // Проверяем наличие символов разных типов
    НайденМаленькаяБуква = Ложь;
    НайденБольшаяБуква = Ложь;
    НайденЧисло = Ложь;
    НайденСпецСимвол = Ложь;

    СпецСимволы = "@$!%*#?&~+-_:";

    Для Индекс = 1 По СтрДлина(Пароль) Цикл
        Символ = Сред(Пароль, Индекс, 1);

        Если СтрНайти("abcdefghijklmnopqrstuvwxyz", Символ) > 0 Тогда
            НайденМаленькаяБуква = Истина;
        КонецЕсли;

        Если СтрНайти("ABCDEFGHIJKLMNOPQRSTUVWXYZ", Символ) > 0 Тогда
            НайденБольшаяБуква = Истина;
        КонецЕсли;

        Если СтрНайти("0123456789", Символ) > 0 Тогда
            НайденЧисло = Истина;
        КонецЕсли;

        Если СтрНайти(СпецСимволы, Символ) > 0 Тогда
            НайденСпецСимвол = Истина;
        КонецЕсли;
    КонецЦикла;

    // Проверяем базовые требования
    Если НЕ НайденМаленькаяБуква ИЛИ НЕ НайденБольшаяБуква ИЛИ НЕ НайденЧисло ИЛИ НЕ НайденСпецСимвол Тогда
        Возврат Ложь;
    КонецЕсли;

    Возврат Истина;

КонецФункции

Процедура ПриНачалеРаботыСистемы()
    Пароль1 = "qWer5%ty";
    Пароль2 = "5qWerty5";       
	Пароль3 = "c=TB8My)2-.?IU";   
	Пароль4 = "XPE94-EL^n_774";  
	Пароль5 = "+y%f#8Gn&D_kWP";  
	Пароль6 = "ShDSYY3ymDIb";

    РезультатПроверки =  ПроверитьПароль(Пароль1);
    Сообщить("Пароль1 сложный: " + Строка(РезультатПроверки));

    РезультатПроверки =  ПроверитьПароль(Пароль2);
    Сообщить("Пароль2 сложный: " + Строка(РезультатПроверки));  
	
	РезультатПроверки =  ПроверитьПароль(Пароль3);
    Сообщить("Пароль3 сложный: " + Строка(РезультатПроверки));

	РезультатПроверки =  ПроверитьПароль(Пароль4);
    Сообщить("Пароль4 сложный: " + Строка(РезультатПроверки));

	РезультатПроверки =  ПроверитьПароль(Пароль5);
    Сообщить("Пароль5 сложный: " + Строка(РезультатПроверки));

	РезультатПроверки =  ПроверитьПароль(Пароль6);
    Сообщить("Пароль6 сложный: " + Строка(РезультатПроверки));

КонецПроцедуры

