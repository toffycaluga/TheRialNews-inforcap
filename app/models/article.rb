# == Schema Information
#
# Table name: articles
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Article < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    has_many :comments, as: :commentable,dependent: :destroy
end
