class CreateTagDiaries < ActiveRecord::Migration[7.1]
  def change
    create_table :tag_diaries do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :diary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
