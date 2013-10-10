require 'spec_helper'

describe "Navigation" do
  describe "Home Page" do
    before { visit root_url }

    it "allows navigation to help page" do
      click_link "Help"
      expect(current_path).to eq(help_path(:locale => I18n.locale))
    end

    it "allows navigation to about page" do
      click_link "About"
      expect(current_path).to eq(about_path(:locale => I18n.locale))
    end

    it "allows navigation to news page" do
      click_link "News"
      expect(current_path).to eq(news_path(:locale => I18n.locale))
    end
  end
end