class Patient

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all{|a| a.patient == self}
    end

    def doctors
       appointments.map{|a| a.doctor}
      
    end

    def new_appointment(doctor, date)
        Appointment.new(self, doctor, date)
    end

    def self.all
        @@all 
    end
end