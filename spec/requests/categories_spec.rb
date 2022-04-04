require 'rails_helper'

RSpec.describe "/categories", type: :request do
  describe "GET api/categories" do
    it "debe regresar listado de categorias" do
      get categories_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET api/categories/:id" do
    let(:category) { create :category }
    it "debe regresar una categoria" do
      get category_path category.id
      expect(response).to have_http_status(200)
    end
  end
end
