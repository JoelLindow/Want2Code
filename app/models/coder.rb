class Coder < ApplicationRecord
  has_many :skillsets
  has_many :languages, through: :skillsets

  validates_presence_of :first_name, :last_name, :about, :looking_for, :img_url
end
