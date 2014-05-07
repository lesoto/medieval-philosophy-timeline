ActiveAdmin.register History do
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  permit_params :headline, :content, :latitude, :longitude, :event_year, :event_month, :event_day, :startdate, :enddate, :media, :mediacredit, :mediacaption, :thumbnail, :media_filename

  index do
    selectable_column
    id_column
    column :headline
    column :content
    column :latitude
    column :longitude
    column :event_year
    column :event_month
    column :event_day
    column :startdate
    column :enddate
    column :media
    column :mediacredit
    column :mediacaption
    column :thumbnail
    column :media_filename
    column :sign_in_count
    column :created_at
    actions
  end

  filter :headline
  filter :content
  filter :latitude
  filter :longitude
  filter :event_year
  filter :event_month
  filter :event_day
  filter :startdate
  filter :enddate
  filter :media
  filter :mediacredit
  filter :mediacaption
  filter :thumbnail
  filter :media_filename
  filter :created_at

  config.per_page = 1000

end
