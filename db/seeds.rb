# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

melon = Foodstuff.create(name: 'Дыня')
pumpkin = Foodstuff.create(name: 'Тыква')
carrot = Foodstuff.create(name: 'Морковь')
potate = Foodstuff.create(name: 'Картошка')

green_hill = Provider.create(d_start_cooperation: DateTime.now - 1.day,
                             name: 'Зеленый Луг',
                             address: 'Зеленоград',
                             phone: '666-13',
                             payment_account: '')
sleeping_cow = Provider.create(d_start_cooperation: DateTime.now - 1.day,
                               name: 'Спящая корова',
                               address: 'Чернобыль',
                               phone: '10-000',
                               payment_account: '904578357860')

green_hill_supplie_melon = Supplie.create(provider_id: green_hill.id,
                                          foodstuff_id: melon.id,
                                          d_delivery: DateTime.now + 1.day,
                                          amount: 13)
sleeping_cow_supplie_pumpkin = Supplie.create(provider_id: sleeping_cow.id,
                                          foodstuff_id: pumpkin.id,
                                          d_delivery: DateTime.now + 3.day,
                                          amount: 10)

available_carrot = AvailableFoodstuff.create(date: DateTime.now, 
                                             foodstuff_id: carrot.id)
available_potate = AvailableFoodstuff.create(date: DateTime.now, 
                                             foodstuff_id: potate.id)

seller_appointment = Appointment.create(name: 'Продавец', salary: 7000)
cook_appointment = Appointment.create(name: 'Повар', salary: 10000)

cook_employee = Employee.create(last_name: 'Кашперовский', 
                                first_name: 'Вениамин', 
                                patronymic_name: '', 
                                d_hiring: DateTime.now - 1.month, 
                                appointment_id: cook_appointment.id)
first_seller_employee = Employee.create(last_name: 'Минский',
                                       first_name: 'Всеволод',
                                       patronymic_name: 'Арафатович',
                                       d_hiring: DateTime.now - 4.month,
                                       appointment_id: seller_appointment.id)
second_seller_employee = Employee.create(last_name: 'Арахманова',
                                       first_name: 'Анна',
                                       patronymic_name: 'Хаджимуратовна',
                                       d_hiring: DateTime.now - 10.month,
                                       appointment_id: seller_appointment.id)

cb_rec1 = Cashbox.create(employee_id: first_seller_employee.id, profit: 9000)
cb_rec2 = Cashbox.create(employee_id: second_seller_employee.id, profit: 10000)

salads = DishType.create(name: 'Салат')
drinks = DishType.create(name: 'Напитки')

compote = Dish.create(name: 'Компот', weight: 250, dish_type_id: drinks.id )
vegetable_salad = Dish.create(name: 'Овощной салат',
                              calories: 50, weight: 400,
                              dish_type_id: salads.id )

plan1_rec1 = ProductionPlan.create(d_execution: DateTime.now + 1.day,
                                   dish_id: compote.id,
                                   amount: 100)
plan1_rec2 = ProductionPlan.create(d_execution: DateTime.now + 1.day,
                                   dish_id: vegetable_salad.id,
                                   amount: 100)

menu1_rec1 = Menu.create(dish_id: vegetable_salad.id, date: DateTime.now, price: 45)
menu1_rec1 = Menu.create(dish_id: compote.id, date: DateTime.now, price: 10)
