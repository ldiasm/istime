class RenameBabytimeTitleToName < ActiveRecord::Migration
  def change
    rename_column :babytimes, :title, :name
  end
end
