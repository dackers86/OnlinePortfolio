require_relative "../../spec_helper"

describe "homepage", type: :feature do

  describe "when noty authenticated" do

    context "loading the site" do
      before do
        visit "/"
      end

      it "should show the homepage" do
        expect(page.body).to include("Twitter")
      end
    end

    describe "when authenticated" do

      context "loading the site" do
        before do
          visit "/"
          click_link("twitter-auth")
        end

        it "should show the homepage" do
          expect(page.body).to include("Logged in")
        end
      end
    end
  end
end
