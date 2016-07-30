class CreateBabytimes < ActiveRecord::Migration
  def change
    create_table :babytimes do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
