class AddIndexToEmails < ActiveRecord::Migration[5.1]
  def change
  	add_index :emails, :email
  end
end
