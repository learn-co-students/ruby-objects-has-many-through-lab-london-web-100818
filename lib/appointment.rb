class Appointment

  attr_accessor :doctor, :patient, :date

  @@all = []

  def initialize(patient, doctor, date)

    @doctor = doctor
    @patient = patient
    @date = "Monday, August 1st"
    @@all << self
  end

  def self.all
    @@all
  end
end
