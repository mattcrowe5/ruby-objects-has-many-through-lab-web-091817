class Doctor
  attr_reader :name
  attr_accessor :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appt)
    @appointments << appt
    appt.doctor = self
  end

  def patients
    @appointments.map {|appt| appt.patient}
  end

end
