ActiveAdmin.register Post do
    # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  permit_params :title, :content, :category_id, :created_user, :avatar

  index do
    id_column
    column :title
    column :category
    column :created_at
    actions
  end
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :title
      f.input :content, :as => :ckeditor, height: :medium
      f.input :category
      f.input :avatar, :as => :file
      f.input :created_user, value:current_admin_user.email
    end

    f.actions
  end

  show do |post|
    attributes_table do
      row :title
      row :avatar do 
        image_tag(post.avatar.url)
      end
    end 
  end

  controller do
    def new
      @post = Post.new
      @post.created_user = current_admin_user.email
    end  

  end

  
end
