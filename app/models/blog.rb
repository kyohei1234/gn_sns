class Blog < ActiveRecord::Base
 has_many :comments
  def set_image(file)
    if !file.nil?
      file_name = Time.now.to_i.to_s + file.original_filename
      File.open("public/docs/blogs/#{file_name}", 'wb'){|f| f.write(file.read)}
      self.image = file_name
    end
  end
end
