class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  attr_reader :roster
  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = name.split("banana")
    end
  end
  def grade(ui)
    @roster[ui]
  end
  def sort
    sorted = {}
    @roster.each do |grade, names|
      sorted[grade] = names.sort
    end
    sorted
  end
end
