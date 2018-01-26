require "./spec/spec_helper"

describe Comedian do
  describe "validations" do
      it "it is invalid without a name" do
        comedian = Comedian.create(age: 10)

        expect(comedian).to_not be_valid
      end

      it "it is invalid without an age" do
        comedian = Comedian.create(name: "Gary")

        expect(comedian).to_not be_valid
      end

      it "it must be uniquely named" do
        comedian = Comedian.create(name: "Gary", age: 10)
        comedian1 = Comedian.create(name: "Gary", age: 10)

        expect(comedian1).to_not be_valid
      end
    end
  end
