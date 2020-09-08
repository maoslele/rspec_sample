require 'rails_helper'

RSpec.describe User, type: :model do
  let(:params) {{name: "佐藤"}}
  it "ユーザの名前が取得できること" do
    params.merge!(age: 1)
    user = User.new(params)
    expect(user.disp_name).to eq "佐藤ちゃん"
  end
  it "ユーザの名前が取得できること" do
    params.merge!(age: 15)
    user = User.new(params)
    expect(user.disp_name).to eq "佐藤君"
  end
  it "ユーザの名前が取得できること" do
    params.merge!(age: 30)
    user = User.new(params)
    expect(user.disp_name).to eq "佐藤さん"
  end
end

