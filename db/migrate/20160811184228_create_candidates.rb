class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :email
      t.string :cell_phone
      t.string :course
      t.integer :semester

      t.timestamps null: false
    end
  end
end
