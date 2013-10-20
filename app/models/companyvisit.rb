class Companyvisit < ActiveRecord::Base
  belongs_to :company
  mount_uploader :jnf, FilePlacementUploader
end
