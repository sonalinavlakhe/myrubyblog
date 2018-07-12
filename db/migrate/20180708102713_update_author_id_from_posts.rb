class UpdateAuthorIdFromPosts < ActiveRecord::Migration[5.2]
  def change
    change_table :posts do |p|
      p.rename :author_id, :admin_user_id
    end
  end
end
