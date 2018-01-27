class CreateHomeworkTwos < ActiveRecord::Migration
  def change
    create_table :homework_twos do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
