class Friend < ActiveRecord::Base
  has_many :responses
  def set_image(file)
    if !file.nil?
      file_name = Time.now.to_i.to_s + file.original_filename
      File.open("public/docs/friends/#{file_name}", 'wb'){|f| f.write(file.read)}
      self.image = file_name
    end
  end
end

