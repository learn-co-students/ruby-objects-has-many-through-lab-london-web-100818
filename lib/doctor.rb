class Doctor

    attr_reader :name, :appointments, :patients

    @@all = []

    def initialize(name)
        @name = name
        @appointments = []
        @patients = []
        @@all << self
    end

    def appointments=(appointment)
        self.appointments << appointment
    end

    def patients=(patient)
        @patients << patient
    end

    def new_appointment(patient, date)
        self.patients = patient
        self.appointments = Appointment.new(patient, self, date)
    end

    def self.all 
        @@all
    end
end