﻿#language: ru

@tree

Функционал: Проверка заполнения поля Количество

Как Администратор я хочу
проверить функционал заполнения и расчета поля количество (итог) в документе Заказ 
чтобы расчет был верным
Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий
Сценарий: Проверка заполнения поля Количество документ Заказ
* Создание документа
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Заполнение шапки документа
	И Создание шапки документа Заказ
* Заполнение табличной части документа 
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000018' | 'Bosch15'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '6'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000006' | 'Ботинки'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '9'
	И в таблице "Товары" я завершаю редактирование строки
* Проверка элемента формы Количество (итог)
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '15' 
	
		
			