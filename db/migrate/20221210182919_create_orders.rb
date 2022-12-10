class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|

      #追加カラム
      #FKキーのカラムはここに記入必要？要質問
      t.integer :customer_id, null :false

      t.integer :price, null :false
      t.integer :payment_method, null :false, default :0
      t.integer :ordered_status, null :false, default :0
      t.string :postal_code, null :false
      t.string :address, null :false
      t.string :name, null :false

      t.timestamps
    end
  end
end
