class Medico < ActiveRecord::Base
  belongs_to :pessoa
  attr_accessible :crm, :pessoa_id, :pessoa_attributes
  accepts_nested_attributes_for :pessoa, :update_only => true
  
  validates_presence_of :crm
  validates_length_of :crm, :maximum => 100 
  
  validates_inclusion_of :attribute, :in => %w( mov avi ), :on => :create, :message => "extension %s is not included in the list"
  
end
