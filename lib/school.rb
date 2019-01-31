# code here!
class School
  attr_accessor :name, :roster
  def initialize (name)
    @name = name
    @roster = {}
  end


def add_student(student_name,grade)
    if @roster[grade] != nil
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

   def grade(grade)
      @roster[grade]
  end
  def sort
      empty_hash = {}
      @roster.each do |k, v|
        empty_hash[k] = v.sort
      end
    return empty_hash
    end

end
