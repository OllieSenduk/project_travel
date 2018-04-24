require 'rails_helper'

describe Host do

  let(:valid_host)                    { build :valid_host  }
  let(:invalid_host_no_attr)          { build :invalid_host_no_attr}
  let(:invalid_host_no_user)          { build :invalid_host_no_user}
  let(:invalid_host_wrong_speciality) { build :invalid_host_wrong_speciality}


  it "is valid with all fields" do
    expect(valid_host).to be_valid
  end

  it "is invalid without a user" do
    expect(invalid_host_no_user).to_not be_valid
  end

  it "is invalid without required attribute" do
    expect(invalid_host_no_attr).to_not be_valid
  end

  it "is invalid with wrong speciality" do
    expect { build :invalid_host_wrong_speciality}.to raise_error(ArgumentError).with_message("'Something else' is not a valid speciality")
  end
end
