require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

store1 = Store.create do |u|
  u.name = "Surrey"
  u.annual_revenue = 224000
  u.mens_apparel = false
  u.womens_apparel = true
end
store2 = Store.create do |u|
  u.name = "Whistler"
  u.annual_revenue = 1900000
  u.mens_apparel = true
  u.womens_apparel = false
end
store2 = Store.create do |u|
  u.name = "Yaletown"
  u.annual_revenue = 430000
  u.mens_apparel = true
  u.womens_apparel = true
end

men_stores = Store.where(mens_apparel: true, womens_apparel: false)

men_stores.each { |store| puts "NAME: #{store.name}, REVENUE: #{store.annual_revenue}" }

women_stores = Store.where(mens_apparel: false, womens_apparel: true).where('annual_revenue > ?', 1000000)

women_stores.each { |store| puts "NAME: #{store.name}, REVENUE: #{store.annual_revenue}" }