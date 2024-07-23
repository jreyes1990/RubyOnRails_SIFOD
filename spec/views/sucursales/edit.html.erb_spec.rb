require 'rails_helper'

RSpec.describe "sucursales/edit", type: :view do
  before(:each) do
    @sucursal = assign(:sucursal, Sucursal.create!(
      id_empresa: 1,
      descripcion: "MyString",
      ubicacion: "MyString",
      user_created_id: 1,
      user_updated_id: 1,
      estado_x_proceso: nil
    ))
  end

  it "renders the edit sucursal form" do
    render

    assert_select "form[action=?][method=?]", sucursal_path(@sucursal), "post" do

      assert_select "input[name=?]", "sucursal[id_empresa]"

      assert_select "input[name=?]", "sucursal[descripcion]"

      assert_select "input[name=?]", "sucursal[ubicacion]"

      assert_select "input[name=?]", "sucursal[user_created_id]"

      assert_select "input[name=?]", "sucursal[user_updated_id]"

      assert_select "input[name=?]", "sucursal[estado_x_proceso_id]"
    end
  end
end
