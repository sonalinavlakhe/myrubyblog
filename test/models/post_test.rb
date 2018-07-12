require 'test_helper'

class PostTest < ActiveSupport::TestCase
   test "body is long enough" do
    #  Mock
     category = Category.new(:name => "News")
     admin_user = AdminUser.new(:name => "admin", :email => "admin@email.com")

     #Test
     post = Post.new(:body=>"this is a test", :title => "test", :category => category, :admin_user => admin_user)

     #Test assertion
     assert post.valid?
   end

   test "body is empty" do
     #  Mock
      category = Category.new(:name => "News")
      admin_user = AdminUser.new(:name => "admin", :email => "admin@email.com")

      #Test
      post = Post.new(:body=>"", :title => "test", :category => category, :admin_user => admin_user)

      #Test assertion
      assert_not post.valid?
   end

  #  test "category is empty" do
   #
  #  end
   #
  #  test "admin user does not exist" do
   #
  #  end
end
