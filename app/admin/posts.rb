ActiveAdmin.register Post do
  index do
    column :title
    column "Author",:admin_user
    column :category
    column :created_at
    actions
  end

  controller do
    def permitted_params
      params.permit post: [:title, :admin_user_id, :category_id,:body]
    end
  end
end
