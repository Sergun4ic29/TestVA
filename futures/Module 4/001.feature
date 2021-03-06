#language: ru
@Модуль4
Функционал: провекра заполнения полей документа Заказ покупателя 

Как Тестировщик я хочу
проверить заполнение полей документа Заказ покупателя 
чтобы проверить работоспособность и логику работы документа 
Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий
Сценарий: заполнение тестовых данных
	Когда экспорт основных данных
Сценарий: заполнение полей документа Заказ покупателя
*Создание документа
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	Когда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Заказ покупателя (создание)'
*Проверка доступности поля Контрагент без заполнения поля Партнер
	Когда Проверяю шаги на Исключение:
	|'Если элемент формы 'Контрагент' доступен для редактирования Тогда'|
*Заполнение поля Партнер 
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'       |
		| '5'   | 'Клиент и поставщик' |
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я выбираю текущую строку
*Проверка заполнения поля Партнер	
	Тогда элемент формы с именем "Partner" стал равен 'Клиент и поставщик'
	Тогда элемент формы с именем "Agreement" стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)'	
*Проверка заполнения поля Соглашение
	Тогда элемент формы с именем "Agreement" стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)'
*Перезаполнение поля Соглашение при выборе друго партнера
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'         |
		| '10'  | 'Розничный покупатель' |
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Табличная часть товаров будет обновлена'
	И я нажимаю на кнопку с именем 'FormOK'
	Тогда элемент формы с именем "Agreement" стал равен 'Розничное'


		
		

		
		
			