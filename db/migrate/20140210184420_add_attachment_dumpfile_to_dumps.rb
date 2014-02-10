class AddAttachmentDumpfileToDumps < ActiveRecord::Migration
  def self.up
    change_table :dumps do |t|
      t.attachment :dumpfile
    end
  end

  def self.down
    drop_attached_file :dumps, :dumpfile
  end
end
