module Admin::CategoriesHelper
  def typeposts
    Category.typeposts.keys.to_a
  end

  def show_image(category)
    default_image = ""
    image_tag(category.image.url.nil? ? default_image : category.image.url, alt: category.name)
  end
end
