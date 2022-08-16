class Classroom 
  attr_reader :subject,
              :capacity,
              :students

  def initialize(subject, capacity)
    @subject = subject
    @capacity = capacity
    @students = []
  end

  def add_student(name)
    @students << name
  end

  def yell_at_students
    students.map do |student|
      student.upcase
    end
  end

  def over_capacity?
    if students.count > capacity 
      true 
    else
      false
    end
  end

  def kick_out
    if over_capacity? 
      students.shift
    end
  end
end