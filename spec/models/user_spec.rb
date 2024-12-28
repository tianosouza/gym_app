require "rails_helper"

RSpec.describe User, type: :model do
  describe "validations" do
    subject { build(:user) }

    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_inclusion_of(:role).in_array(%w[admin user]) }
  end
end
