class School
  attr_reader :name, :roster

  def initialize(name)
    @name =name
    @roster = {}
  end

  def add_student(name, grade_level)
    (self.roster[grade_level] ||= []) << name
  end

  def grade(grade_level)
    self.roster[grade_level]
  end

  def sort
    self.roster.each_value do |students|
      students.sort!
    end
  end
end
