class Doctor
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
  end

  def appointments
    Appointments.all.select { |appointment| appointment.doctor == self }
  end

  def self.all
    @@all
  end
end
