require "spec_helper"

RSpec.describe Product do

  context "validations" do
    it { is_expected.to validate_presence_of :title }
  end

end
