class MembersController < ActionController::Base

	def index
		@members = Member.all
	end

	def latest_news
		@member = get_member
	end

	def new
		@member = Member.new
	end

	def create
		@member = get_member
		if @member.save!
			redirect_to signups_home_member_path(member: @member), notice: "Thanks #{@member.name}, you're all signed up!"
		else
			redirect_to signups_home_member_path, error: "Error with signup"
		end
	end

	private
	def get_member
		Member.find(params[:id])
	end

	def member_params
		params.require(:member).permit(
			:first_name, :last_name, :age, :email, :gender, :experience
		)
	end
end