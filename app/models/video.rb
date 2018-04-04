class Video < ApplicationRecord
    is_impressionable
    has_attached_file :media, :styles => {
        # :medium => { :geometry => "640x480", :format => 'flv' },
        :thumb => { :geometry => "300x300>", :format => 'jpg', :time => 10 }
      }, :processors => [:transcoder]
    
    validates_attachment_content_type :media, :content_type => /\Avideo\/.*\Z/      

    has_many :features, dependent: :delete_all


    def count
    	"#{self.impressionist_count}".length
    end

    def impression
    	(self.impressionist_count).to_s
    end
end
