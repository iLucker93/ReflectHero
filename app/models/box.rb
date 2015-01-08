class Box < ActiveRecord::Base

  belongs_to :item

  def self.chance(monster, user, item)  # Метод дропа предметов
    if rand(0.01..100) < Monster.find(monster).item_chance # если рандом выбьет в диапазоне шанса дропа предмета

      
      


      if Box.where(user_id: user.id).where(item_id: item.id).present? # проверка на наличие Итема
        
        @count = Box.find_by(user_id: user.id, item_id: item.id).ea # Создаем переменную со счетчиком предметов (еа в БД )

        Box.find_by(user_id: user.id, item_id: item.id).update(ea: @count + 1) # Если предмет находится, то он прибавляется к существующему предмету
  
      else # или 
  
        self.create( # Предмет создается со след данными : 
          user_id: user.id,
          item_id: item.id,
          ea:      1,
          format:  item.format,
          equip_locations: nil,
          price: item.price_sell)
    
      end

    end
  end



end