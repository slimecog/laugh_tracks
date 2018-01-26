require "./spec/spec_helper"

describe Special do
  describe "validations" do
      it "it is invalid without a name" do
        special = Special.create(comedian_id: 10)

        expect(special).to_not be_valid
      end

      it "it is invalid without a comedian id" do
        special = Special.create(name: "Special")

        expect(special).to_not be_valid
      end

      it "it must be uniquely named" do
        special = Special.create(name: "Special", comedian_id: 10)
        special1 = Special.create(name: "Special", comedian_id: 10)

        expect(special1).to_not be_valid
      end
    end
  end
