class Project < ApplicationRecord

  validates :title, presence: true

  has_many :prouse
  has_many :bugs, dependent: :destroy
  has_many :users, through: :prouse, dependent: :destroy

end
