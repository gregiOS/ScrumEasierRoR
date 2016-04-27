class Task < ActiveRecord::Base
	DONE = 1
	IN_TRACK = 2

	def is_done?
		self.status == DONE
	end

	def is_in_track?
		self.status == IN_TRACK
	end
end
