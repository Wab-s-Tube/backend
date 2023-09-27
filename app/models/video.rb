class Video < ApplicationRecord
    belongs_to :user
    validates :file_name, :size, :duration, :mime_type, :user_id, presence: true
end
