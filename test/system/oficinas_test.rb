require "application_system_test_case"

class OficinasTest < ApplicationSystemTestCase
  setup do
    @oficina = oficinas(:one)
  end

  test "visiting the index" do
    visit oficinas_url
    assert_selector "h1", text: "Oficinas"
  end

  test "should create oficina" do
    visit oficinas_url
    click_on "New oficina"

    fill_in "Cliente", with: @oficina.cliente
    check "Concluido" if @oficina.concluido
    fill_in "Data entrada", with: @oficina.data_entrada
    fill_in "Data saida", with: @oficina.data_saida
    fill_in "Endereco", with: @oficina.endereco
    fill_in "Telefone", with: @oficina.telefone
    fill_in "Valor servico", with: @oficina.valor_servico
    click_on "Create Oficina"

    assert_text "Oficina was successfully created"
    click_on "Back"
  end

  test "should update Oficina" do
    visit oficina_url(@oficina)
    click_on "Edit this oficina", match: :first

    fill_in "Cliente", with: @oficina.cliente
    check "Concluido" if @oficina.concluido
    fill_in "Data entrada", with: @oficina.data_entrada
    fill_in "Data saida", with: @oficina.data_saida
    fill_in "Endereco", with: @oficina.endereco
    fill_in "Telefone", with: @oficina.telefone
    fill_in "Valor servico", with: @oficina.valor_servico
    click_on "Update Oficina"

    assert_text "Oficina was successfully updated"
    click_on "Back"
  end

  test "should destroy Oficina" do
    visit oficina_url(@oficina)
    click_on "Destroy this oficina", match: :first

    assert_text "Oficina was successfully destroyed"
  end
end
