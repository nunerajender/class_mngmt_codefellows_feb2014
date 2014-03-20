class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable#, :confirmable

  #has_many :courses
  has_many :registrations
  has_many :courses, through: :registrations

  validates_presence_of :full_name, :email

  after_create :notify_admin

  mount_uploader :picture, PictureUploader

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

private

  def notify_admin
    AdminMailer.notify_admin_about_new_student(self).deliver #if Rails.env.production?
  end


end
