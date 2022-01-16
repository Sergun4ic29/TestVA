﻿#language: ru

@tree

Функционал: Проверка автоматического вычисления СУММЫ в табличной части 

Как Администратор я хочу
протестировать авто суммирование значений строк табличной части Товары "Количество" и "Цена" 
чтобы автоматический расчет был верный  
Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий
Сценарий: тестирование автоматического расчетта суммы в табличной части Товары
* Создание документа 
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Тестирование авто рассчета суммы	
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Торт '
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '32,00'
	И в таблице "Товары" я завершаю редактирование строки
	Тогда таблица "Товары" стала равной:
		| 'Товар' | 'Цена'  | 'Количество' | 'Сумма' |
		| 'Торт ' | '32,00' | '1'          | '32,00' |
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5'
	И в таблице "Товары" я завершаю редактирование строки
	Тогда таблица "Товары" стала равной:
		| 'Товар' | 'Цена'  | 'Количество' | 'Сумма'  |
		| 'Торт ' | '32,00' | '5'          | '160,00' |


