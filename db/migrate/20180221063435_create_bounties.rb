class CreateBounties < ActiveRecord::Migration[5.1]
  def change
    create_table :bounties do |t|
      t.string :client
    	t.string :target
    	t.text :reason
    	t.integer :target_level
    	t.string :target_class
    	t.string :last_seen_server
    	t.text :kill_condition, default: "none"
    	t.text :bounty_reward

      	t.timestamps null: false
    end
  end
end
