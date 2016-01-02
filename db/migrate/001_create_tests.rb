class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :issue_id
      t.text :content
      t.integer :result
    end
  end
end
