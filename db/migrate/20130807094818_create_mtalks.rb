class CreateMtalks < ActiveRecord::Migration
  def change
    create_table :mtalks do |t|
      t.string :name
      t.string :word

      t.timestamps
    end
  end
end
