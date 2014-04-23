class CreateMicropsots < ActiveRecord::Migration
  def change
    create_table :micropsots do |t|
      t.string :content
      t.string :user_id

      t.timestamps
    end
  end
end
