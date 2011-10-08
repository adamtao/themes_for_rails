require "spec_helper"

describe ThemesForRails::Config do
  before :each do
    ThemesForRails.config.clear
  end

  it "should change the base directory" do
    ThemesForRails.config do |config|
      config.base_dir = 'app/empty_themes'
    end

    ThemesForRails.available_theme_names.should be_empty
  end

  it 'should change the directory to views' do
    ThemesForRails.config do |config|
      config.themes_dir = 'app/themes'
    end

    ThemesForRails.available_theme_names.should == ['default']
  end
end