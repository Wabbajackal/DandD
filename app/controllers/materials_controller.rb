class MaterialsController < ApplicationController

  add_breadcrumb "/Home", :root_path
  add_breadcrumb "Materials", '/materials'

  def index
    @materials = Material.all.order(:name)

    # add_breadcrumb "index", 'materials/index', :title => "Back to the Index"
  end

  def show
    @material = Material.find(params[:id])
    add_breadcrumb "#{@material.name}", "/materials/#{@material.id}", :title => "Back to the Index"
  end
end
