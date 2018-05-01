require 'test_helper'

class BoletimsControllerTest < ActionController::TestCase
  setup do
    @boletim = boletims(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boletims)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boletim" do
    assert_difference('Boletim.count') do
      post :create, boletim: { aprovado: @boletim.aprovado, email: @boletim.email, faltas: @boletim.faltas, feminino: @boletim.feminino, idade: @boletim.idade, masculino: @boletim.masculino, nome: @boletim.nome, reprovado: @boletim.reprovado, turma: @boletim.turma, turno: @boletim.turno }
    end

    assert_redirected_to boletim_path(assigns(:boletim))
  end

  test "should show boletim" do
    get :show, id: @boletim
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boletim
    assert_response :success
  end

  test "should update boletim" do
    patch :update, id: @boletim, boletim: { aprovado: @boletim.aprovado, email: @boletim.email, faltas: @boletim.faltas, feminino: @boletim.feminino, idade: @boletim.idade, masculino: @boletim.masculino, nome: @boletim.nome, reprovado: @boletim.reprovado, turma: @boletim.turma, turno: @boletim.turno }
    assert_redirected_to boletim_path(assigns(:boletim))
  end

  test "should destroy boletim" do
    assert_difference('Boletim.count', -1) do
      delete :destroy, id: @boletim
    end

    assert_redirected_to boletims_path
  end
end
