class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
    	t.integer :users_id
    	t.string :name
    	t.text :opinion

	     t.timestamps
    end
  end
end
