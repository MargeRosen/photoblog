class Phlog < ActiveRecord::Base
  mount_uploader :pic, PicUploader
end
