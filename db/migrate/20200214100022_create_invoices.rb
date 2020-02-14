class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.datetime :date
      t.integer :total_amount
      t.references :order, foreign_key: true
      t.references :payment, foreign_key: true
      t.timestamps
    end
  end
end
