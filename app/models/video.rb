class Video < ApplicationRecord
    is_impressionable
    has_attached_file :media, :styles => {
        :medium => { :geometry => "640x480", :format => 'flv' },
        :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 }
      }, :processors => [:transcoder]
    
    validates_attachment_content_type :media, :content_type => /\Avideo\/.*\Z/      

    has_many :features
end
