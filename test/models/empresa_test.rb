# == Schema Information
#
# Table name: empresas
#
#  id              :integer          not null, primary key
#  nombre          :string(255)
#  descripcion     :string(255)
#  codigo_empresa  :integer
#  user_created_id :integer
#  user_updated_id :integer
#  estado          :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'test_helper'

class EmpresaTest < ActiveSupport::TestCase
  test "Prueba de ingreso" do
    test "the truth" do
      assert true
    end
  end
end
