require 'pry'

class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    student_hash.each do |key, value|
      self.send("#{key}=", value)
    end
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_from_collection(students_array)
    # iterates through each element of the array
    students_array.each do |student|
      # iterates through hash key/value pairs
      student.each do |key, value|
        # creates a new student, then runs the code block to mass assign attributes
        self.new.tap do |s|
          s.send("#{key}=", value)
        end
      end
    end
  end

  def add_student_attributes(attributes_hash)

  end

end

#stud_hash = {:name => "Jimmers", :location => "Round Lake", :profile_quote => "'Pikachu' - Pikachu"}

#stud = Student.new(stud_hash)
