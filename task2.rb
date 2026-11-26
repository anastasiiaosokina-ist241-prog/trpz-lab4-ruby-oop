class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def info
    "Персона: #{@name}, вік: #{@age}"
  end
end

class Student < Person
  attr_accessor :group

  def initialize(name, age, group)
    super(name, age)
    @group = group
  end

  def info
    "Студент: #{@name}, вік: #{@age}, група: #{@group}"
  end
end

class Teacher < Person
  attr_accessor :subject

  def initialize(name, age, subject)
    super(name, age)
    @subject = subject
  end

  def info
    "Викладач: #{@name}, вік: #{@age}, предмет: #{@subject}"
  end
end

class HeadOfDepartment < Teacher
  attr_accessor :department

  def initialize(name, age, subject, department)
    super(name, age, subject)
    @department = department
  end

  def info
    "Завідувач кафедри: #{@name}, вік: #{@age}, кафедра: #{@department}"
  end
end

person = Person.new("Олександр", 35)
student = Student.new("Марія", 20, "ІСТ-21")
teacher = Teacher.new("Іван", 45, "Програмування")
head = HeadOfDepartment.new("Петро", 50, "Інформатика", "ІТ")

puts person.info
puts student.info
puts teacher.info
puts head.info
