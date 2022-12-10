class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      
      #追加カラム
      #FKキーのカラムはここに記入必要？要質問
      t.integer :genre_id, null :false
      
      t.string :name, null :false
      t.text :introduction, null :false
      t.integer :price, null :false
      
      #ステータスのカラム、これで合ってる？要質問
      t.boolean :is_active, null :false, default :true
      
      t.timestamps
    end
  end
end
