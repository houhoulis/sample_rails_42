class CreatePosters < ActiveRecord::Migration
  def change
    create_table :posters do |t|
      t.string :slogan
      t.string :name

      t.timestamps null: false
    end
  end
end
