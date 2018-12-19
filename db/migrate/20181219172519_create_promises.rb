class CreatePromises < ActiveRecord::Migration[5.2]
  def change
    create_table :promises do |t|
      t.string :title
      t.string :from
      t.string :to
      t.string :description

      t.timestamps
    end
  end
end
