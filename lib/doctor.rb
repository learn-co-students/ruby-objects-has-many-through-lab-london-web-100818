class Doctor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select{|a| a.doctor == self}
    end

    def patients
        appointments.map{|a| a.patient}
    end

    def new_appointment(patient, date)
        Appointment.new(patient, self, date)
    end

    def self.all 
        @@all
    end
end