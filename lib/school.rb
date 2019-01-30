require 'pry'
class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

school = School.new("Bayside High School")

  def add_student(sname, grade)
    if self.roster[grade]
      self.roster[grade] << sname
    else self.roster[grade] = [sname]
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each { |grades, students| self.roster[grades] = students.sort!}
  end



end
