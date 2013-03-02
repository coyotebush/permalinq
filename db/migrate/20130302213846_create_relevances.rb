class CreateRelevances < ActiveRecord::Migration
  def change
    create_table :relevances do |t|
      t.references :project
      t.references :event

      t.timestamps
    end
    add_index :relevances, :project_id
    add_index :relevances, :event_id
  end
end
