class PostTags < ActiveRecord::Migration[7.1]
  def change
    create_table :post_tags do |t|
      t.integer :id_post, null: false, default: 0
      t.integer :id_tag, null: false, default: 0

      t.timestamps
    end
  end
end
