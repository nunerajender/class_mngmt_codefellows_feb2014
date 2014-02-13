class Student < ActiveRecord::Base

  def combined_info
    "name: #{full_name} \n"+
    "age: #{age} \n"+
    "bio: #{bio}"
  end

  def age_in_60_years
    (age + 60).years
  end

end
