class Language < ApplicationRecord
  has_many :skillsets
  has_many :coders, through: :skillsets

  validates_presence_of :name
end
