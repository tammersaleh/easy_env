require 'spec_helper'

describe EasyEnv do
  it 'has a version number' do
    EasyEnv::VERSION.should_not be_nil
  end
end

describe ENV do
  context "#name" do
    before { ENV["NAME"] = "1" }

    it 'returns ENV["NAME"]' do
      expect(ENV.name).to eq("1")
    end

    it 'responds' do
      expect(ENV).to respond_to("name")
    end
  end

  context "#foo=" do
    before { ENV.foo = "hi" }
    it 'sets ENV["FOO"]' do
      expect(ENV["FOO"]).to eq("hi")
    end

    it 'responds' do
      expect(ENV).to respond_to("foo=")
    end
  end


  context "#complex_name" do
    before { ENV["COMPLEX_NAME"] = "2" }

    it 'returns ENV["COMPLEX_NAME"]' do
      expect(ENV.complex_name).to eq("2")
    end

    it 'responds' do
      expect(ENV).to respond_to("complex_name")
    end
  end

  context "#unknown_name" do
    it 'returns nil' do
      expect(ENV.unknown_name).to be_nil
    end

    it "doesn't respond" do
      expect(ENV).not_to respond_to("unknown_name")
    end
  end
end

