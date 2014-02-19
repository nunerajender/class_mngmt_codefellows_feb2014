class Course < ActiveRecord::Base

  #belongs_to :student
  has_many :registrations, class_name: Registration, foriegn_key: :course_id
  has_many :students, through: :registrations

end
