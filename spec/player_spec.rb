require 'spec_helper'

describe Player do
  subject(:player) { described_class.new(:name) }

  it 'returns its name' do
    expect(player.name).to eq :name
  end
end
