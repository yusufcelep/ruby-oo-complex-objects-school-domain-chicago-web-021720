class School
  # attr_accessor :new, :roster, :add_student, :grade
  
  # def initialize(new)
  #   @new = new
  # end
  
  # def roster
  #   hash = {}
  # end
  
  # def add_student(name, grade)
  #   self.roster = hash[grade] = []
  #   self.roster = hash[grade] << name
  # end
    def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster[grade] != nil
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end

