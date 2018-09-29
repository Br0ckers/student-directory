def input_students
  puts "Please enter the name of the student follwed there cohort"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  cohort = gets.chomp

  # while the name is not empty, repeat this code
  while true do#!name.empty? && !cohort.empty?
    #if name[0..-1].include?(0..9)
      #puts "name cannot contain numbers"
    if name.empty? && cohort.empty?
      break
    elsif !name.empty? && !name.start_with?("b") || name.length > 12 || name.count("a-zA-Z") == 0 && !cohort.empty? && !cohort.start_with?("jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec")
      puts "ensure name is blank or in text and starts with b and is less than 12 chars, also ensure cohort is blank or starts with month, jan, feb.."
    elsif !name.empty? && name.start_with?("b") && name.length < 12 && name.count("a-zA-Z") > 0 && !cohort.empty? && cohort.start_with?("jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec")
      # add the student hash to the array
      students << {name: name, cohort: cohort, hobbie: :fishing, county_of_birth: :UK, height: :"1.78"}
    elsif !name.empty? && name.start_with?("b") && name.length < 12 && name.count("a-zA-Z") > 0 && cohort.empty?
      students << {name: name, cohort: :no_cohort, hobbie: :fishing, county_of_birth: :UK, height: :"1.78"}
    elsif
      name.empty? && !cohort.empty? && cohort.start_with?("jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec")
        # add the student hash to the array
        name = :no_name
        students << {name: name, cohort: cohort, hobbie: :fishing, county_of_birth: :UK, height: :"1.78"}
    end
    # puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
    cohort = gets.chomp
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
    puts "#{current_index}. #{student[:name].to_s.center(4).to_sym} (#{student[:cohort].to_s.center(4).to_sym} cohort) (hobbie #{student[:hobbie].to_s.center(12)}) (country of birth #{student[:county_of_birth].to_s.center(12)}) (height #{student[:height].to_s.center(4)})"
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
