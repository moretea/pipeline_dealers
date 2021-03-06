require "pipeline_dealers"
require "support/test_model"

describe PipelineDealers::Model do
  subject { TestModel }

  context "initialization" do
    let(:model) { subject.new(client: double("Client"), collection: double("Connection"), attributes: {name: "Springest"}) }

    it "can access the name by the name method" do
      model.name.should == "Springest"
    end

    it "can access the name by via attributes['name']" do
      model.attributes['name'].should == "Springest"
    end

    it "can access the name by via attributes[:name]" do
      model.attributes[:name].should == "Springest"
    end
  end

  context "setting attributes" do
    let(:model) { subject.new(client: double("Client"), collection: double("Collection"), attributes: {}) }
    context "name is set using accessor" do
      before { model.name = "Springest" }

      it "is readable via the accessor" do
        model.name.should == "Springest"
      end
    end
  end
end
