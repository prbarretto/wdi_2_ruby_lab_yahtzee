require 'spec_helper'
require_relative '../yahtzee'

describe 'YahtzeeRoll' do

	before(:each) do
		@roll1 = YahtzeeRoll.new([2, 3, 4, 1 , 5])
		@roll2 = YahtzeeRoll.new([2, 3, 4, 1 , 7])
		@roll3 = YahtzeeRoll.new([2, 3, 4, 1])
		@roll4 = YahtzeeRoll.new([2, 3, 4, 4, 4])
		@roll5 = YahtzeeRoll.new([2, 3, 4, 4, 2])
		@roll6 = YahtzeeRoll.new([1, 2, 2, 2, 2])
	end

	describe '#initialize' do
		it 'should return values for the 5 dice' do
			expect(@roll1.roll).to eq [2, 3, 4, 1 , 5]
		end
	end

	# describe '#valid_nums' do
	# 	it 'should return an error for invalid nums' do
	# 		expect{ @roll2.valid_nums? }.to raise_error 'Please make a valid roll'
	# 	end

	# end

	describe '#valid_length' do
		it 'should return an error for an invalid length' do
			expect{ @roll3.valid_length? }.to raise_error 'Please make a valid roll'
		end
	end

	# describe '#ones' do
	# 	it 'should sum up all the ones in a roll' do
	# 		expect(@roll1.ones).to eq 1
	# 	end
	# end

	describe '#singles' do
		it 'should sum up all the dice with the given number' do
			expect(@roll4.singles(4)).to eq 12
		end
	end

	describe '#pairs' do
		it 'should score the sum of the two highest matching dice' do
			expect(@roll5.pairs).to eq 8
			expect(@roll1.pairs).to eq 0
		end
	end

	describe '#three_of_a_kind' do
		it 'should score the sum of the three highest matching dice' do
			expect(@roll4.three_of_a_kind).to eq 12
		end
	end

	# describe '#four_of_a_kind' do
	# 	it 'should score the sum of the four highest matching dice' do
	# 		expect(@roll6.four_of_a_kind).to eq 8
	# 	end
	# end
end
