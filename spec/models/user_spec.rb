# frozen_string_literal: true

require "rails_helper"

RSpec.describe User, :type => :model do
  it "allows blank emails" do
    user = User.new
    user.email = ""
    user.valid?
    expect(user.errors[:email]).to be_blank
  end
end
