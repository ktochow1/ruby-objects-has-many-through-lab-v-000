class Patient
attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    #appointment should know it belongs to patient
  end
  
  def appointments
    #iterates through appointment's array, returns appointment that belongs to patient (self?)
  end
  
  def doctors
    #iterates over patient's appointments collects doctor belonging to appointment
  end 
  
  
  
  
end