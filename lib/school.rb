require 'pry'

class School

  def initialize (school)
    @school = school
    @roster = {}
  end

  attr_accessor :school, :roster


  def add_student (name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade (grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade].sort!
    end
  end

end
