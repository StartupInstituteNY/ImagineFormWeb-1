class CreateMusicfiles < ActiveRecord::Migration
  def change
    create_table :musicfiles do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
