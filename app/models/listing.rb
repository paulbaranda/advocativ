class Listing < ActiveRecord::Base
has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, default_url: "default.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/,
                    :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }
def s3_credentials
    {:bucket => "advocativ", :access_key_id => "AKIAJJGTJGHCOPKVDO4Q", :secret_access_key => "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"}
  end
end

