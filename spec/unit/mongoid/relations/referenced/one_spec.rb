require "spec_helper"

describe Mongoid::Relations::Referenced::One do

  let(:klass) do
    Mongoid::Relations::Referenced::One
  end

  describe ".builder" do

    let(:builder_klass) do
      Mongoid::Relations::Builders::Referenced::One
    end

    let(:document) do
      stub
    end

    let(:metadata) do
      stub(:extension? => false)
    end

    it "returns the embedded in builder" do
      klass.builder(metadata, document).should
        be_a_kind_of(builder_klass)
    end
  end

  describe ".macro" do

    it "returns references_one" do
      klass.macro.should == :references_one
    end
  end
end