class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def appointments 
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
end
