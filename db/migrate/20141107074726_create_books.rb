#created with rails generate model book
#run rake db:migrate after creation of model to create table shown below
class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string, :title
      t.string, :author
      #t.float, :price
      #t.integer :pubyear

      t.timestamps
    end
  end
end