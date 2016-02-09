require_relative "spec_helper"
module Portfolio

  describe "HomeController" do
    it "loads homepage" do
      get '/'
      puts last_response
      expect(last_response).to be_ok
    end
  end

end
