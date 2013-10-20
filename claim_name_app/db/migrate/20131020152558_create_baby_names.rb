class CreateBabyNames < ActiveRecord::Migration
  def change
    create_table :baby_names do |t|
      t.string :name
    end

    create_table :user_baby_names do |t|
      t.belongs_to :user
      t.belongs_to :baby_name
    end
  end
end
