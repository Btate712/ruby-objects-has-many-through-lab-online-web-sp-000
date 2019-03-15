class Patient
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments 
    Appointment.all.select { |appointment| appointment.patient == self }
  end
end
