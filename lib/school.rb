class School
  attr_accessor :school_name
  attr_reader :roster
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]==nil
      @roster[grade] = []
    end
    @roster[grade] << name
    puts @roster
  end

  def grade(level)
    @roster[level]
  end

  def sort
    output = @roster.select do |k, v|
      v.sort!
    end
  end
end
