class Patient
attr_accessor :name, :doctor, :appointment

@@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end 
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    @doctor = doctor 
    @date = date 
    new_appointment = Appointment.new(date, self, doctor)
    @appointments << new_appointment
    new_appointment
  end
  
  def appointments
    @appointments.collect do |appointment|
      appointment
    end
  end
  
  def doctors
   @appointments.collect do |doctor|
     doctor.appointment
   end
  end 
  
  
  
  
end