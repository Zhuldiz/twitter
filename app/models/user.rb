class User < ActiveRecord::Base
  has_many :microposts
  
  before_save {self.email=email.downcase}                   #перед сохранением переводит е-майл в нижний регистр
  
  validates :name, presence: true, 
                   length: {maximum: 50}
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i  #регулярные выражения
  
  validates :email, presence: true, 
                    length: {maximum: 50},
                    format: { with: VALID_EMAIL_REGEX }, 
                    uniqueness:  {case_sensitive: false}
  
  has_secure_password                                       #виртуальные поля пароля и подтверждения
  validates :password, length: { minimum: 6 }
end
