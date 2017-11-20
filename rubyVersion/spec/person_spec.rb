require 'spec_helper'
require_relative '../rubyvsjs.rb'

RSpec.describe '#new' do
 it 'player is a person object	' do
  expect(player = Person.new).to be_instance_of(Person)
 end
end

#  RSpec.describe '#greet' do
# 	it 'takes two strings from the user and then greet them' do
# 		player = Person.new
# 		player.greet
#
# 		player.first = 'James'
# 		player.last = 'T Kirk'
# 		expect(STDOUT).to receive(:puts).with('Hello James T Kirk you look great!')
# 	end
# end
#


RSpec.describe Person do
  describe '#Greet' do
    before do
      player = double
      expect(subject)
        .to receive(:gets)
        .and_return(player)
        .twice
      expect(player)
        .to receive(:chomp)
        .and_return(:first)
      expect(player)
        .to receive(:chomp)
        .and_return(:last)
    end

    it 'sets @First and @last according to user\'s input' do
      subject.greet

      expect(subject.instance_variable_get(:@first)).to eq :first
      expect(subject.instance_variable_get(:@last)).to eq :last
    end
  end
end
