class CreateAtricles < ActiveRecord::Migration[6.0]
  def change
    create_table :atricles do |t|
      t.string :title
      t.string :body
      t.string :author

      t.timestamps
    end
  end
end
