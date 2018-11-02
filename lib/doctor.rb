class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(patient, self, date)
  end

  def appointments
    appointments = Appointment.all.map{|appointment| appointment.doctor == self}
    appointments
  end
end
