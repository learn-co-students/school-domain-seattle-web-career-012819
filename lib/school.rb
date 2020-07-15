class School
attr_accessor :roster, :student, :grade

def initialize (roster)
  @roster = {}
end

def add_student(student, grade)
 @roster[grade] ||= []
 @roster[grade] << student
end

def grade(grade)
  @roster[grade]
end


def sort
  sorted_hash = {}
  @roster.sort.each do |grade, student|
  sorted_hash[grade] = (student.sort)
    # @roster[grade].sort!
end
sorted_hash
end


end #end class School
