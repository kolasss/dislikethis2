class AddAttachmentUrlToPosts < ActiveRecord::Migration
  def change
    add_attachment :posts, :url
  end
end
