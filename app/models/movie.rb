class Movie < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, styles: { medium: "400x600#" }

  # # Add this line so that it can work with paperclip. This problem was occurring because in the file upload process I was using fancy upload (Ajax upload using flash).
  # before_post_process :set_content_type

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  # def set_content_type
  # self.sketch.instance_write(:content_type, MIME::Types.type_for(self.sketch_file_name).to_s)
  # end

end
