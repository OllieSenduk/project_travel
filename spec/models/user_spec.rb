require 'rails_helper'

describe User do

  let(:user) { build :user  }

  it "has a valid factory" do
    expect(user).to be_valid
  end

  it "is an invalid user" do
    user.email = "hello.hello.com"
    user.save
    expect(user).to_not be_valid
  end
end
