class Appointment
    attr_accessor :date, :patient, :doctor 

    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor 
        @@all << self
    end

    def self.all
        @@all 
    end

    def patients
        Patient.all.select { |patient| patient.appointment == self}
    end
end