# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
build_categories = ['Шпаклювальні роботи','Малярні роботи','Гипсокартоні роботи']
dressing_categories = ['Покраска стелі','Покраска стін']
other_categories = ['Інші']

parent_build_categories = Module::AdminManage::Category.new({title: 'Будівельні роботи',alias: 'build'})
parent_dress_category = Module::AdminManage::Category.new({title: 'Оздоблювальні роботи',alias: 'dress'})
parent_other_category = Module::AdminManage::Category.new({title: 'Додаткові роботи',alias: 'other'})

parent_build_categories.save
parent_dress_category.save
parent_other_category.save

build_categories.each do |build_category|

  test = Module::AdminManage::Category.new({title: build_category,p_id: parent_build_categories.id})
  test.save
end
dressing_categories.each do |dress_category|
  Module::AdminManage::Category.new({title: dress_category,p_id: parent_dress_category.id}).save
end
other_categories.each do |other_category|
  Module::AdminManage::Category.new({title: other_category,p_id: parent_other_category.id}).save
end