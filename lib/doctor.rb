class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    appointment.all.select {|appointment| appointment.doctor == self}

  def self.all
    @@all
  end

end
