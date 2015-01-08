class MainController < ApplicationController

  # Требуем авторизоваться для любого действия
    before_action :authenticate_user!
  
  # Основная страница проекта. По сути это одностраничный проект, поскольку большая часть логики будет на главной странице.
    def index
      # Ищем все съестные припасы игрока
      @consumable = Box.where(user_id: current_user.id).where(format: 'consumable') # => ToDo: Нужно будет переписать под любого пользователя, а не только под текущего
      @equip      = Box.where(user_id: current_user.id).where(format: 'equip')
      @etc        = Box.where(user_id: current_user.id).where(format: 'etc')
    end

  # Специальный тестовый экшен для Лиса =D
    def fox
      current_user.update(str: 250, exp: 640)
      redirect_to root_path
    end

end