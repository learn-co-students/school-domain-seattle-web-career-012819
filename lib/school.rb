class School

  attr_accessor :schoolName, :roster


  def initialize(schoolName)
    @name = schoolName
    @roster = {}
  end

  def add_student(name, grade)
    #puts "#{name} & #{grade}"
    if ((roster.keys).include? grade) == false
      roster[grade] = []
      roster[grade] << name
    else
      roster[grade] << name
    end

  end

  def grade(studentGrade)
    roster[studentGrade]
  end

  def sort
    roster.each do |grade, students|
      #puts "#{grade} & #{students}"
      sorted_students = students.sort
      roster[grade] = sorted_students
    end
    roster
  end

end# code here!
