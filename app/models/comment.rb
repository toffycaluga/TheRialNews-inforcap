# == Schema Information
#
# Table name: comments
#
#  id               :bigint           not null, primary key
#  content          :text
#  user_id          :bigint           not null
#  commentable_type :string
#  commentable_id   :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Comment < ApplicationRecord
  validates :content , presence: true
  belongs_to :user
  belongs_to :commentable, polymorphic: true
end
