ActiveAdmin.register Book do
  permit_params :id, :title, :color

  index do
    column "ID", :id
    column "タイトル", :title
    column "色", :color
    # 管理画面に画像を表示させる
    # column "画像", :image_thumbnail do |c|
    #   image_tag(c.image, :height => '100')
    #end
    actions
  end

# Newするとき
  form do |f|
    f.inputs Book do
      f.input :title
      f.input :color

      f.actions
    end
  end

  show do |b|
    attributes_table do
      row :id
      row :title
      row :color
    end
      active_admin_comments
  end

end

# 検索
ActiveAdmin.register Book do |u|
    filter :id, :label => 'IDで検索'
    filter :title, :label => 'TITLEで検索'
end

