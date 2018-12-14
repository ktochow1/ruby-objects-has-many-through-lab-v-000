class Doctor
attr_accessor :name, :appointments, :patients

@@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    @patient = patient
    @date = date 
    new_appointment = Appointment.new(date, patient, self)
    @appointments << new_appointment
    new_appointment
  end
  
  def patients
    @appointments.collect do |appointment|
      appointment.patient 
    end
  end 
  
    
  
  
  
end