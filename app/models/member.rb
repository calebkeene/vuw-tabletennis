class Member < ActiveRecord::Base
	validates :first_name, :last_name, :email, presence: true
	validates :student_id, presence: true, uniqueness: true
end