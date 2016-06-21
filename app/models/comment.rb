class Comment < ActiveRecord::Base
  belongs_to :voter
  belongs_to :candidate

  validates :content, presence: true

end
