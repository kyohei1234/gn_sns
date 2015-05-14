module BlogsHelper
  def blog_image_for(blog, size = '390')
    image_tag "/docs/blogs/#{blog.image}", size: size
  end
end
