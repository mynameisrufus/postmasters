module ApplicationHelper
  def lightbox_thumb(picture)
    link_to(
      image_tag(
        picture.thumb_url,
        'alt' => picture.title,
        'data-caption' => picture.description
      ),
      picture.url,
      'name' => picture.name,
      'class' => 'th'
    )
  end
end
