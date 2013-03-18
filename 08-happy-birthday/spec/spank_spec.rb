require 'bundler'
Bundler.require
require './lib/birthday_2'

describe Birthday do

  describe "#ask" do
    it "asks person what year they were born" do
      expect(Birthday.new.ask(question)).to eq "What year were you born"
    end
  end



end
