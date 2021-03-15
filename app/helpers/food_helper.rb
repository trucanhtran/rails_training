module FoodHelper
  def show_images(abc)
    if abc.files.attached?
      abc.files.each do |item|
        view_context.image_path "my_image.png"
      end
    else
      "No more images"
    end
  end
end
