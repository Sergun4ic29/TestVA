﻿#language: ru

@tree

Функционал: создание документа продажи

Как Менеджер по закупкам я хочу
протестировать создание документа 
чтобы все было ОК
Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий
Сценарий: Создание документа
* открытие формы документа
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Закупки' 'Поступления товаров'
	Тогда открылось окно 'Поступления товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Поступление товара (создание)'
* заполнение шапки документа	
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
	Тогда элемент формы с именем "Склад" стал равен 'Склад отдела продаж'	
	И я нажимаю кнопку выбора у поля с именем "Поставщик"
	Тогда открылось окно 'Контрагенты'
* заполнение доварной части	
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'              |
		| '000000014' | 'Магазин "Бытовая техника"' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Поступление товара (создание) *'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Босоножки'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10,00'
	И в таблице "Товары" я завершаю редактирование строки
* проверка заполнения табличной части
	Тогда таблица "Товары" содержит строки:
		| 'Товар'     | 'Артикул' | 'Цена'     | 'Количество' | 'Сумма'     |
		| 'Босоножки' | '*' | '1 500,00' | '11,00'      | '15 000,00' |
	
		
	И я нажимаю на кнопку "Записать" 
* проверка по номеру
	И я запоминаю значение поля "Номер" как "$Номер$"
	
* сохранение документа	
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Поступление товара (создание) *' в течение 20 секунд
* проверка по номеру
	И таблица "Список" содержит строки:
		| 'Номер'     |
		| '$Номер$' |
	
сценарий: Проверка наличия номенклатуры Туфли
И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Товарные запасы' 'Товары'
Тогда открылось окно 'Товары'
И таблица "Список" содержит строки:
	| 'Наименование' |
	| 'Туфли'    |


