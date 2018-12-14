require 'pry'
class Doctor
attr_accessor :name, :patients

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    # @patient = patient
    # @date = date 
    new_appointment = Appointment.new(date, self, patient)
    # @appointments << new_appointment
    new_appointment
  end
  
  def appointments 
      Appointment.all.select do |appointment|
      appointment.doctor == self
      end
  end
  
  def patients
    appointments.collect do |appointment|
      appointment.patient 
    end
  end 
  
    
  
  
  
end