def input_students
  puts "Please enter the names of the students".center(80)
  puts "To finish, just hit return twice".center(80)
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp

  puts "Please enter the cohort".center(80)
  puts "To finish, just hit return twice".center(80)
  #get the first cohort
  cohort = gets.chomp

  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students".center(80)
    # get another name from the user
    puts "Please enter the names of the students".center(80)
    name = gets.chomp
    puts "Please enter the cohort".center(80)
    cohort = gets.chomp

  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy".center(80)
  puts "-------------".center(80)
end

def print(students)
  i = 0
  while i < students.size
    i += 1
  end
  puts students.group_by { |x| x[:cohort]}.each{ |_, i| i.replace(i.map{ |h| h[:name]})}
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(80)
end

students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
