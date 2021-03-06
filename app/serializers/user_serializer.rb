class UserSerializer < ActiveModel::Serializer
  
  attributes :id, :first_name, :last_name, :email, :phone, :cell_phone, :profile_picture, :facebook_account, :send_documents, :user_type, :rol
  
  def profile_picture
    object.profile_picture.url
  end
  
end  
  
