class Tweet < ActiveRecord::Base
  validates :message, presence:true, length: { maximum: 140, too_long: "A tweet can only be 140 characters, max. Everybody knows that! " }
  belongs_to :user
end
