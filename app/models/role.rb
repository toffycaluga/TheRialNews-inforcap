class Role < ApplicationRecord
  has_and_belongs_to_many :users, :join_table => :users_roles
  
  belongs_to :resource,
             :polymorphic => true,
             :optional => true
  
  validates :name, presence: true, uniqueness: true
  
  validates :resource_type,
            :inclusion => { :in => Rolify.resource_types },
            :allow_nil => true

  scopify

  # Definir los roles disponibles
  ROLES = %[guest registered_user admin].freeze
end