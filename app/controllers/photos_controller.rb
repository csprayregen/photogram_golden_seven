class PhotosController < ApplicationController

  def destroy_row
    p = Photo.find(params[:id])
    p.destroy
    p.save
    redirect_to("/photos")
  end

  def new_form
    render("photos/new_form.html.erb")
  end

  def edit_form
    @photo = Photo.find(params[:id])
    render("photos/edit_form.html.erb")
  end

  def update_row
    p = Photo.find(params[:id])
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save
    redirect_to("/photos/#{p.id}")
  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save
    redirect_to("/photos")
  end

  def index
    # need a list of photos and instance variable
    @list_of_photos = Photo.all
    render("photos/index.html.erb")
  end

  def show
    @photo = Photo.find(params[:id])
    render("photos/show.html.erb")
  end



end
