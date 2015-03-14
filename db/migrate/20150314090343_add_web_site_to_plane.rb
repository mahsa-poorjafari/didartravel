class AddWebSiteToPlane < ActiveRecord::Migration
  def change
    add_column :planes, :web_site, :string
  end
end
