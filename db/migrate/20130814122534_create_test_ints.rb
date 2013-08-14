class CreateTestInts < ActiveRecord::Migration
  def change
    create_table :test_ints do |t|
      t.integer :number

      t.timestamps
    end
  end
end
