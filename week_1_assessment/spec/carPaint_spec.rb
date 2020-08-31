require './lib/car.rb'
require 'pry'

describe Car do
  let(:person) { instance_double('Person', name: 'John') }
  subject { described_class.new({ driver: person }) }

  it 'Car must have an owner' do
    expect(subject.driver).to eq person
  end

  it 'Testing painting method' do
    expect(Car.new).to have_attributes(color)
  end
end
