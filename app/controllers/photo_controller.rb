class PhotoController < ApplicationController
def index

  @user = User.find(params[:id])
  @photo = Photo.where(user_id: params[:id])
  # x = Photo.where(user_id: params[:id]).id
  @comment = Comment.where(user_id: params[:id])
  # .where(photo_id:2)
  # @comment = Comment.find(photo_id: @photo.id)
  #
  # puts @photo.attributes.values
  # puts @comment.attributes.values
  # puts "sdhjhjk"

end

def commented_by(user_id)
  @user = User.find(user_id)
  return @user.first_name
end
helper_method :commented_by
end