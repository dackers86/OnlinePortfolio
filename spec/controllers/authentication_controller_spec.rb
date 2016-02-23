require_relative "spec_helper"
module Portfolio

  describe "AuthenticationController" do
    it "logs in through Facebook" do
      get '/'
      puts last_response
      expect(last_response).to be_ok
    end
  end

end
