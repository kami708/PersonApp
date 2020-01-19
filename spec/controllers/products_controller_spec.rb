require 'rails_helper'

describe ProductsController , type: :controller do
  describe 'GET #index' do
  
    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  # describe 'GET #show' do
  #   it "renders the :show template" do
  #     get :show, params: {  id: 6 }
  #   end
  # end

  describe 'GET #new' do
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

end