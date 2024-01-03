require 'rails_helper'

RSpec.describe Discussion, type: :model do
  let(:user) { create(:user) }
  let(:manga) { create(:manga) }

  it "is valid with valid attributes" do
    discussion = build(:discussion, user: user, manga: manga)
    expect(discussion).to be_valid
  end

  it "is not valid without a title" do
    discussion = build(:discussion, title: nil, user: user, manga: manga)
    expect(discussion).not_to be_valid
  end

  it "is not valid with a title longer than 50 characters" do
    discussion = build(:discussion, title: "a" * 51, user: user, manga: manga)
    expect(discussion).not_to be_valid
  end

  it "is valid with a volume longer than 50 characters" do
    discussion = build(:discussion, volume: "a" * 51, user: user, manga: manga)
    expect(discussion).to be_valid
  end

  it "is not valid without a body" do
    discussion = build(:discussion, body: nil, user: user, manga: manga)
    expect(discussion).not_to be_valid
  end

  it "is not valid with a body longer than 1000 characters" do
    discussion = build(:discussion, body: "a" * 1001, user: user, manga: manga)
    expect(discussion).not_to be_valid
  end
end