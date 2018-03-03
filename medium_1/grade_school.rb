class School

  attr_accessor :grade, :grades_hash

  def initialize
    @grades_hash = {} #Hash[1, [], 2, [], 3, [], 4, [], 5, [], 6, []]
  end

  def add(student, grade)
    @grades_hash[grade] = [] if @grades_hash.key?(grade) == false
    @grades_hash[grade] << student
  end

  def grade(grade)
    if @grades_hash.key?(grade)
      @grades_hash[grade]
    else
      []
    end
  end

  def to_h
    new_hash = @grades_hash.sort.map do |key, value|
      p [key, value.sort]
    end
    new_hash.to_h
  end

end

school = School.new
school.add("fluffy", 2)
school.add("tina", 1)
school.add("ricky", 1)
school.add("sam", 3)
school.to_h
