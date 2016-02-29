class MemberMailer < ActionMailer::Base
	default from: 'noreply@104.131.67.90'

	def welcome(member)
		@member = member
		mail(to: @member.email, subject: 'Welcome to the VUW Table Tennis Club!')
	end
end
