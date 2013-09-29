class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.references :user, index: true
      t.string :name
      t.string :course
      t.string :dept
      t.string :batch
      t.string :gender
      t.date :dob
      t.string :fname
      t.string :mname
      t.string :fjob
      t.string :mjob
      t.text :paddr
      t.text :taddr
      t.integer :height
      t.float :weight
      t.string :eye
      t.string :mobile
      t.string :resiph
      t.string :emerph
      t.string :email
      t.string :regreceipt
      t.integer :erank
      t.string :ssc_board
      t.integer :ssc_yop
      t.float :ssc_aggr
      t.string :hsc_board
      t.integer :hsc_yop
      t.float :hsc_aggr
      t.string :d_trade
      t.integer :d_yop
      t.string :d_board
      t.float :d_aggr
      t.float :ug12
      t.float :ug3
      t.float :ug4
      t.float :ug5
      t.float :ug6
      t.float :ug7
      t.float :ug8
      t.float :ug9
      t.float :ug10
      t.float :ug_cgpa
      t.integer :ug_hist12
      t.integer :ug_hist3
      t.integer :ug_hist4
      t.integer :ug_hist5
      t.integer :ug_hist6
      t.integer :ug_hist7
      t.integer :ug_hist8
      t.integer :ug_hist_total
      t.integer :ug_backlog12
      t.integer :ug_backlog3
      t.integer :ug_backlog4
      t.integer :ug_backlog5
      t.integer :ug_backlog6
      t.integer :ug_backlog7
      t.integer :ug_backlog8
      t.integer :ug_b_pending
      t.float :pg1
      t.float :pg2
      t.float :pg3
      t.float :pg4
      t.float :pg_cgpu
      t.integer :pg_hist1
      t.integer :pg_hist2
      t.integer :pg_hist3
      t.integer :pg_hist4
      t.integer :pg_hist_total
      t.integer :pg_backlog1
      t.integer :pg_backlog2
      t.integer :pg_backlog3
      t.integer :pg_backlog4
      t.integer :pg_backlog_pending
      t.text :gap
      t.integer :verify_status

      t.timestamps
    end
  end
end
