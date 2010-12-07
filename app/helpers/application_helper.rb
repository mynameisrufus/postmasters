module ApplicationHelper
  def s3(key)
    "#{@s3_url}/#{key}"
  end
  
  def picture_helper(picture)
    link_to(
      image_tag(
        "#{s3("images_gallery")}/#{picture[:name]}_s.jpg", :alt => picture[:title]
      ),
      "#{s3("images_gallery")}/#{picture[:name]}.jpg", {
        :name  => picture[:name],
        :title => picture[:title],
        :class => "thumb"
      }
    )
  end
end
