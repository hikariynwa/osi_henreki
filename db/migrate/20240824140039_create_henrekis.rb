class CreateHenrekis < ActiveRecord::Migration[7.2]
  def change
    create_table :henrekis do |t|
      t.string :name

      t.timestamps
    end
  end
end
