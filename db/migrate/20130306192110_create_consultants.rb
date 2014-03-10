class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.string :name
      t.text :bio
      t.string :dept
      t.string :photo

      t.timestamps
    end
  end
end
