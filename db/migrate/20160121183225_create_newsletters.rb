class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :newsname
      t.string :newsemail

      t.timestamps null: false
    end
  end
end
