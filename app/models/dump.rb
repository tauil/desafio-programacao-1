class Dump < ActiveRecord::Base
  validates :dumpfile, :attachment_presence => true

  has_attached_file :dumpfile
end
