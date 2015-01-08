class MainController < ApplicationController

  # Требуем авторизоваться для любого действия
    before_action :authenticate_user!
  
  # Основная страница проекта. По сути это одностраничный проект, поскольку большая часть логики будет на главной странице.
    def index
    end


  # Специальный тестовый экшен для Лиса =D
    def fox
      current_user.update(str: 250, exp: 640)
      redirect_to root_path
    end

end