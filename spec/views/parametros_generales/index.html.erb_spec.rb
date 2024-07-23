require 'rails_helper'

RSpec.describe "parametros_generales/index", type: :view do
  before(:each) do
    assign(:parametros_generales, [
      ParametroGeneral.create!(
        id_empresa: 2,
        nombre: "Nombre",
        valor: "Valor",
        user_created_id: 3,
        user_updated_id: 4,
        estado_x_proceso: nil
      ),
      ParametroGeneral.create!(
        id_empresa: 2,
        nombre: "Nombre",
        valor: "Valor",
        user_created_id: 3,
        user_updated_id: 4,
        estado_x_proceso: nil
      )
    ])
  end

  it "renders a list of parametros_generales" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Nombre".to_s, count: 2
    assert_select "tr>td", text: "Valor".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
