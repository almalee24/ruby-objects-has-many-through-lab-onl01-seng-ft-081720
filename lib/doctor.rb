require 'pry'
class Doctor
    attr_accessor :name, :appointments

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select {|appointments| appointments.doctor == self}
    end

    def new_appointment(date, patient)
        appointment = Appointment.new(date, patient, self)
    end

    def patients
        self.appointments.map {|appointment| appointment.patient}
    end

    def self.all
        @@all
    end
end