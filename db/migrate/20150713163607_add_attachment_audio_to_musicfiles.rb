class AddAttachmentAudioToMusicfiles < ActiveRecord::Migration
  def self.up
    change_table :musicfiles do |t|
      t.attachment :audio
    end
  end

  def self.down
    remove_attachment :musicfiles, :audio
  end
end
