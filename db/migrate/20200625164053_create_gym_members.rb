class CreateGymMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :gym_members do |t|
      t.integer :gym_id
      t.integer :member_id

      t.timestamps
    end
  end
end
