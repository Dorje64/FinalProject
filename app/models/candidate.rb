class Candidate < ActiveRecord::Base
	has_many :voters
	has_many :comments


	max_paginates_per 100

	has_attached_file :image
	
	validates :name, presence: true, uniqueness: true
	validates :plan, presence: true
	validates :loaction, presence: true

	validates_attachment :image,
                  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
