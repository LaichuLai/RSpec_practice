require 'rails_helper'

RSpec.describe Post, type: :model do
  it "可以被存取" do 
    post = Post.create!
    expect(post).to  eq(Post.last)
  end

  it "有建立好的欄位" do
    columns = Post.column_names
    expect(columns).to include("id")
    expect(columns).to include("title")
    expect(columns).to include("content")
    expect(columns).not_to include("email")
  end
end

# rails 中的 RSpec 針對每個type提供不同的設定方式，從route, model 到 controller 都有
