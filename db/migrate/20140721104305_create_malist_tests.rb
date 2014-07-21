class CreateMalistTests < ActiveRecord::Migration
  def change
    create_table :malist_tests do |t|
      t.string :content
      t.integer :attribut
      t.string :cabinet

      t.timestamps
    end
  end
end
