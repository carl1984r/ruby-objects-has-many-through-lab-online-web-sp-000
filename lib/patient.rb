class Patient

  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    appointment.all.select {|appointment| appointment.patient == self}
  end

  def self.all
    @@all
  end
end
