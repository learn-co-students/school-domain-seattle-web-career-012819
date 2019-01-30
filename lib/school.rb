class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if self.roster[grade]
      self.roster[grade] << student_name
    else
      self.roster[grade] = [student_name]
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.transform_values { |students| students.sort! }
  end

  # def sort
  #   new_hash = {}
  #   self.roster.each do |k, v|
  #     new_hash[k] = v.sort!
  #   end
  #   new_hash
  # end
end
