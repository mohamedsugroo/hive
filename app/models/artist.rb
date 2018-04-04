class Artist < ApplicationRecord
    is_impressionable
    
    has_attached_file :avatar, styles: { 
        large: "500x500>",
        medium: "300x300>", 
        small: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

    has_many :features, dependent: :delete_all

    def self.select
        Artist.order("stage_name").map { |s| 
            [
                s.stage_name,
                s.id
            ]
        }
    end

    def full_name
        "#{self.first_name + "  " +self.last_name}"
    end
end
