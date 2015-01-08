class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable



  scope :lvl, order(:lvl => :desc)

  before_create do

    # self.lvl = rand(40..60)
    self.lvl = 1
    # self.job = [
    #   "blacksmith",
    #   "monk",
    #   "knight",
    #   "wizard",
    #   "hunter",
    #   "priest",
    #   "assassin",
    #   "crusader",
    #   "sage",
    #   "alchemist",
    #   "rogue",
    #   "bard",
    #   "dancer"].sample
    self.job    = "novice"
    self.gender = ["male", "female"].sample
    # self.hp     = rand(6000..8000)
    self.hp = 40



  end



end