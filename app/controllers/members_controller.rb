class MembersController < ApplicationController

	def index
		@members = Member.all
	end

	def latest_news
		@member = get_member
	end

	def signups_home
		@member = Member.new
	end

	def create
		@member = Member.new(member_params)
		if @member.save!
			MemberMailer.welcome(@member).deliver_now!
			redirect_to signups_home_member_path(id: @member), notice: "Thanks #{@member.first_name}, you're all signed up!"
		else
			redirect_to signups_home_member_path(id: @member), error: "Error with signup"
		end
	end

	private
	def get_member
		Member.find(params[:id])
	end

	def member_params
		params.require(:member).permit(
			:first_name, :last_name, :age, :email, :student_id, :gender, :experience
		)
	end
end