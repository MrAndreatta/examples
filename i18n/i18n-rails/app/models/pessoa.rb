class Pessoa < ActiveRecord::Base
  has_one :medico
  
  attr_accessible :endereco, :idade, :nome
  
  validates_presence_of :nome
  
end
