class Doctor
    attr_accessor :name
 
    @@all = []
 
    def initialize(name)
      @name = name
      @@all << self
    end
 
    def self.all
      @@all
    end
 
    def new_appointment(patient, date)
      new_appt = Appointment.new(date, patient, self)
    end
 
    def appointments
      Appointment.all.select {|patient| patient.doctor == self}
    end
 
    def patients
      Patient.all
    end
 
  end