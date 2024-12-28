require "rails_helper"

RSpec.describe Exercise, type: :model do
  describe "validations" do
    subject { build(:exercise) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:instructions) }
    it { should validate_inclusion_of(:exercise_type).in_array(%w[A B C D]) }
  end
end
