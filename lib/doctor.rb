class Doctor
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient, doctor)
    appointment = Appointment.new(date, patient, doctor)
  end

  def self.all
    @@all
  end
end
