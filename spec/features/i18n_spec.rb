require 'spec_helper'

describe 'i18n' do
  before do
    puts Dir.pwd
    @en_hash = YAML.load(File.read("config/locales/en.yml"))
    @fr_hash = YAML.load(File.read("config/locales/fr.yml"))
  end

  it "should have same keys in both languages" do
    msg = compare_yaml_hash(@en_hash['en'],@fr_hash['fr'],['fr'])
    unless msg.empty?
      msg.should == ''
    end
  end
end
