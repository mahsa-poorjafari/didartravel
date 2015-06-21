class AddWebLinkToNewsAndVent < ActiveRecord::Migration
  def change
    add_column :news_and_vents, :web_link, :string
  end
end
