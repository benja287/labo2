class Victim < ApplicationRecord
  validates :name, presence: true # validacion para que el nombre sea obligatorio
  has_many :attacks, dependent: :destroy #esta opcion eliminara todos los ataques asociados cuando se elimina  una victima
  has_many :monsters, through: :attacks
end
