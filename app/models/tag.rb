class Tag < ApplicationRecord
  has_many :taggings
  has_many :articles, through: :taggings, dependent: :destroy, foreign_key: :trackable_id

  def to_s
    name
  end
end
