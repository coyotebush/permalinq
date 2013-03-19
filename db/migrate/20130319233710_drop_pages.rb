class DropPages < ActiveRecord::Migration
  def up
    drop_table :pages
  end

  def down
    create_table :pages do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
