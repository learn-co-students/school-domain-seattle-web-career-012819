require "pry"

class School
 attr_reader :name, :roster
 #attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = [student]
      #binding.pry
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name_array|
      @roster[grade] = name_array.sort
    end

  end

end
