class Monster < ApplicationRecord
  validates :name, presence: true
  validates_uniqueness_of :name, case_sensitive:false
  has_many :attacks,dependent: :destroy # esta opcion eliminara todos los ataques asociados cuando se elimina el monstruo
  has_many :victims, through: :attacks
end
