require "spec_helper"

describe Person do
  it "Not valid with nil name" do
    person = Person.new(first_name: nil)
    expect(person).to be_invalid
  end

  it "Not valid with a blank name" do
    person = Person.new(first_name: "")
    expect(person).to be_invalid
  end

  it "Valid with a first name" do
    person = Person.new(first_name: "Paul")
    expect(person).to be_valid
  end
end
