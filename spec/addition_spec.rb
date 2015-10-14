require 'rspec'
require_relative '../adder'

# gemfile will make it so that if you run rspec within the folder, it will run the version mentioned in your file
#

RSpec.describe Adder do
  it "adds 2 numbers" do
    expect(Adder.call(1,2)).to eq(3)
  end

  it "prints the result of 2 numbers" do
    expect { Adder.call_to_stdout(1,2)}.to output("3\n").to_stdout
  end
end