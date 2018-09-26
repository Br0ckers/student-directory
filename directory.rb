def input_students
  puts "Please enter the name of the student follwed there cohort"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  cohort = gets.chomp

  # while the name is not empty, repeat this code
  while !name.empty? && name.start_with?("b") && name.length < 12 do

    # add the student hash to the array
    students << {name: name, cohort: cohort, hobbie: :fishing, county_of_birth: :UK, height: :"1.78"}
    # puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
    #end
  end
  # return the array of students
  students
end

def print_header
    puts "The students of my cohort at Makers Academy"
  puts "-------------"
end
def print(students)
  # modified for while loop
  current_index = 0
  while current_index < students.length do
    student = students[current_index]
    current_index += 1
    puts "#{current_index}. #{student[:name].center(12)} (#{student[:cohort].to_s.center(10)} cohort) (hobbie #{student[:hobbie].to_s.center(12)}) (country of birth #{student[:county_of_birth].to_s.center(12)}) (height #{student[:height].to_s.center(4)})"
    #current_index += 1
  end
  # original code start
  #students.each_with_index{|student, index|
  #indexplusone = index + 1
  #puts "#{indexplusone}. #{student[:name]} (#{student[:cohort]} cohort)"}
  # original code end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
students = input_students
print_header
print(students)
print_footer(students)
