class AddAttachmentMusicToMusicfiles < ActiveRecord::Migration
  def self.up
    change_table :musicfiles do |t|
      t.attachment :music
    end
  end

  def self.down
    remove_attachment :musicfiles, :music
  end
end
