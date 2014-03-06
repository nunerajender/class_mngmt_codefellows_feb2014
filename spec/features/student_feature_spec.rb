require 'spec_helper'

describe Student, type: :feature do

  context "Creating new" do

    it "should let the user know about missing full name" do

      visit '/students/new'
      click_button "Create Student"
      page.should have_content "Full name can't be blank"

    end

    it "allow creation with a full name and email" do
      visit '/students/new'
      fill_in 'Email', with: 'test@test.com'
      fill_in 'Full name', with: 'T. Tester'
      click_button "Create Student"
      page.should have_content "Student was successfully created."
      page.should have_content "T. Tester"
    end


  end

end

