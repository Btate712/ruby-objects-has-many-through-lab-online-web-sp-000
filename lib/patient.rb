class Patient
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient == self }
  end

  def doctors
    doctors_array = []
    Appointment.all.each do |appointment|
      if appointment.patient == self
        doctors_array << appointment.doctor
      end
    end
    doctors_array
  end

  def self.all
    @@all
  end
end
