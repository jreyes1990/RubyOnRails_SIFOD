# == Schema Information
#
# Table name: roles
#
#  id              :integer          not null, primary key
#  nombre          :string(255)
#  descripcion     :string(255)
#  user_created_id :integer
#  user_updated_id :integer
#  estado          :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Rol < ApplicationRecord
    has_many :menu_rol
    validates_presence_of :nombre, :descripcion, message: ": este campo es obligatorio"  
    validates :nombre, uniqueness: {case_sensitive: false, scope: :estado, message: "El nombre que intenta registrar ya existe" } 
    
end
