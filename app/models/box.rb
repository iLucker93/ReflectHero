class Box < ActiveRecord::Base

  belongs_to :item
  
  # Здесь пишем описание блока с шансами выбить съедобный предмет. (это пример. Нужно переписать)
    def self.chance(monster, user, etc, equip, consumable) # Метод дропа предметов
      if rand(0.01..100) < Monster.find(monster).item_chance # если рандом выбьет в диапазоне шанса дропа предмета
  
        if Box.where(user_id: user.id).where(item_id: consumable.id).present? # проверка на наличие Итема
          
          @count = Box.find_by(user_id: user.id, item_id: consumable.id).ea # Создаем переменную со счетчиком предметов (еа в БД )
  
          Box.find_by(user_id: user.id, item_id: consumable.id).update(ea: @count + 1) # Если предмет находится, то он прибавляется к существующему предмету
    
        else
    
          self.create( # Предмет создается со след данными : 
            user_id: user.id,
            item_id: consumable.id,
            ea:      1,
            format:  consumable.format,
            equip_locations: nil,
            price: consumable.price_sell)
      
        end
  
      end

# =============================================

    if rand(0.01..100) < Monster.find(monster).equip_chance # если рандом выбьет в диапазоне шанса дропа предмета

      if Box.where(user_id: user.id).where(item_id: equip.id).present? # проверка на наличие Итема
        
        @count = Box.find_by(user_id: user.id, item_id: equip.id).ea # Создаем переменную со счетчиком предметов (еа в БД )

        Box.find_by(user_id: user.id, item_id: equip.id).update(ea: @count + 1) # Если предмет находится, то он прибавляется к существующему предмету
  
      else # или 
  
        self.create( # Предмет создается со след данными : 
          user_id: user.id,
          item_id: equip.id,
          ea:      1,
          format:  equip.format,
          equip_locations: nil,
          price: equip.price_sell)
    
      end

    end

# =============================================
    if rand(0.01..100) < Monster.find(monster).quest_chance # если рандом выбьет в диапазоне шанса дропа предмета

      if Box.where(user_id: user.id).where(item_id: etc.id).present? # проверка на наличие Итема
        
        @count = Box.find_by(user_id: user.id, item_id: etc.id).ea # Создаем переменную со счетчиком предметов (еа в БД )

        Box.find_by(user_id: user.id, item_id: etc.id).update(ea: @count + 1) # Если предмет находится, то он прибавляется к существующему предмету
  
      else # или 
  
        self.create( # Предмет создается со след данными : 
          user_id: user.id,
          item_id: etc.id,
          ea:      1,
          format:  etc.format,
          equip_locations: nil,
          price: etc.price_sell)
    
      end

    end


# =============================================
  end



end