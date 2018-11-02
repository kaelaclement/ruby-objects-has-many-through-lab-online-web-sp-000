require 'pry'

class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def appointments
    @appointments
  end

  def new_appointment(date, patient)
    Appointment.new(patient, self, date)
    binding.pry
  end

end
