class Student < ActiveRecord::Base

  #has_many :courses
  has_many :registrations
  has_many :courses, through: :registrations

  validates_presence_of :full_name, :email

  scope :renees, -> do
    where(full_name: 'Renee')
  end

  def self.teachers
    where(title: 'Teacher')
  end

  def self.full_name
    pluck(:full_name)
  end

  def combined_info
    "name: #{full_name} \n"+
    "age: #{age} \n"+
    "bio: #{bio}"
  end

  def age_in_60_years
    (age + 60).years
  end

end
