class Patient
    attr_accessor :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def new_appointment(doctor, date)
      appointment = Appointment.new(self, doctor, date)
    end
  
    def appointments
      Appointment.all.select { |a| a.patient == self }
    end
  
    def doctors
      appointments.map { |a| a.doctor }
    end
  
    def self.all
      @@all
    end
  
  end
  