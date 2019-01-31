class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {} # creates empty roster when initialized
  end

  # method adds a student, adds multiple students to a grade and different grades
  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  # method retreives students from a grade
  def grade(student_grade)
    roster[student_grade]
  end

  # method sorts the students, arranges students in each grade by alphabetical order
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

end
