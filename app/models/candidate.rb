class Candidate < ActiveRecord::Base

  validates_presence_of :name, :email, :cell_phone, :semester, :course

end
