class CreateAnalysispackages < ActiveRecord::Migration
  def change
    create_table :analysispackages do |t|
      t.integer :analysis_id
      t.integer :package_id

      t.timestamps
    end
  end
end
