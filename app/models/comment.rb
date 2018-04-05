class Comment < ApplicationRecord
	is_impressionable
	belongs_to :video
	belongs_to :user
	has_many :replies

	def count
    	"#{self.impressionist_count + self.video.impressionist_count }".length
    end

    def impression
    	(self.impressionist_count + self.video.impressionist_count).to_s
    end
end
