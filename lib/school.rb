class School

  def initialize(student_name)
    @student_name = student_name 
    @roster = {}
  end 
  
  def roster
    @roster
  end 
  
  def add_student(student_name, grade)
    if @roster[grade] != nil 
      @roster[grade] << student_name
    else
      @roster[grade] = [student_name] 
    end 
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort
    @roster.each do |k,v|
      v.sort!
    end
  end 
end 