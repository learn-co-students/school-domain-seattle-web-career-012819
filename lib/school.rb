class School
  attr_accessor :roster, :student_name, :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new{ |key, value| key[value] = [] }
  end

  def add_student(student_name, grade)
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_hash = {}
    @roster.sort.each do |grade, name_array|
      sorted_hash[grade] = (name_array.sort)
    end
    sorted_hash
  end

end
