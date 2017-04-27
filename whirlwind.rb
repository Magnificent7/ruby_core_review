#1
favorite_foods = []
5.times do
  puts "What is your favorite food?"  
  user_input = gets.chomp
  favorite_foods << user_input
end
p favorite_foods

counter = 1
favorite_foods.each do |food|
  puts "counter.to_s + ". " "+ food
  counter += 1
end

#2
count = 0
11.times do
  puts count
  count += 1
end

sam = {:recipes => 11, :can_make_crepes => true}
sally = {:known_languages => 5, :french => false}

if sam[:recipes] > 10 && sally[:known_languages] > 5
  puts "Sam and Sally are dataing."
end
if ((sally[:french]) || (sam[:can_make_crepes]))
  puts "Sam and Sally are getting married, I guess."
end

no_sam_recipes = 12
no_sally_languages = 5
if no_sam_recipes > 10 && no_sally_languages > 5
  puts "They should date"
end
sam_crepes = true
sally_french = true
if sam_crepes || sally_french
  puts "They should marry"
end

# 3
accounts = []
5.times do
  puts "First Name"
  first_name = gets.chomp
  puts "Last Name"
  last_name = gets.chomp
  puts "Email"
  email = gets.chomp
  account_no = rand(10 ** 10)
  accounts << {first: first_name, last: last_name, email: email, account: account_no}
end

accounts.each do |user|
  puts "first name: " + user[:first]
  puts "last name: " + user[:last]
  puts "email: " + user[:email]
  puts "account number: " + user[:account].to_s
end

#4
#pseudocode
#ask user for number of students
#assign that number to a variable
#number of students times do ask user for a name
#create an empty array of students
#put each name into students array

#put students into groups of two:
#use .shift to remove and return 2 students from array at a time

#if odd no_students:
#shift 3 out the first time, then shift out the reamining students by 2

puts "How many students are in your class?"
no_students = gets.to_i

students = []
no_students.times do
  puts "Enter students name"
  students << gets.chomp
end

students.shuffle!

if no_students.even?
  (no_students/2).times do
    p students.shift(2)
  end
else
  p students.shift(3)
  (students.length/2).times do
    p students.shift(2)
  end
end









