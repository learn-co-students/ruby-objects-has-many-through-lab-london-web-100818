class Patient

    attr_reader :name, :appointments, :doctors

    @@all = []

    def initialize(name)
        @name = name
        @appointments = []
        @doctors = []
        @@all << self
    end

    def appointments=(appointment)
        self.appointments << appointment
    end

    def doctors=(doctor)
        self.doctors << doctor
    end

    def new_appointment(doctor, date)
        self.doctors = doctor
        self.appointments = Appointment.new(self, doctor, date)
    end

    def self.all
        @@all 
    end
end