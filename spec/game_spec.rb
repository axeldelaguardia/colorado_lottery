require './lib/spec_helper'

describe Game do
	let(:pick_4) {Game.new('Pick 4', 2)}
	let(:mega_millions) {Game.new('Mega Millions', 5, true)}

	describe '#initialize' do
		it 'exists' do
			expect(mega_millions).to be_a(Game)
			expect(pick_4).to be_a(Game)
		end

		it 'has attributes' do
			expect(mega_millions.name).to eq("Mega Millions")
			expect(mega_millions.cost).to eq(5)
			expect(mega_millions.national_drawing?).to be(true)
			expect(pick_4.national_drawing?).to be(false)
		end
	end
end