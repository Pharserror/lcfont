class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :name
      t.integer :analysis_id

      t.timestamps
    end
  end
end
