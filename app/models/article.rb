# == Schema Information
#
# Table name: articles
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
class Article < ApplicationRecord
    # Validaciones
    validates :title, presence: true
    validates :description, presence: true
    # Relaciones 
    belongs_to :user
    # Relaciones a muchos
    has_many :comments, as: :commentable,dependent: :destroy
end
