class School

  attr_accessor :roster

  def initialize(arg)
    @roster = {}
    
  end

  def add_student(student, grade)
    @roster[grade] = [] unless @roster.has_key?(grade)

    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_hash = {}
  
    @roster.each do |key, value|
      sorted_hash[key] = value.sort { |a, b| a <=> b }
    end
  
    sorted_hash
  end

end