require 'rails_helper'

RSpec.describe "Tvs", type: :request do
  describe "GET /tvs" do
    it "works! (now write some real specs)" do
      get tvs_path
      expect(response).to have_http_status(200)
    end
  end
end
