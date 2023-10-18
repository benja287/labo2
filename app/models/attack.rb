class Attack < ApplicationRecord
  belongs_to :monster
  belongs_to :victim
  validate :validar_victima_por_edad

  def validar_victima_por_edad
     puts "++++ entre a validar victima"
     if ( monster.scare_level > 5) && ((Date.current.to_time.to_i - victim.birthdate.to_time.to_i)/31500000 < 18)
       puts " ++++ no se pudo  crear  este ataque+++"
       errors.add(:victims,"Los monstruos con un nivel  de susto superior a 5 no pueden tener victimas menores de 18 años")
     else
        puts "++++ si se pudo  crear este ataque +++"
     end
  end
end
