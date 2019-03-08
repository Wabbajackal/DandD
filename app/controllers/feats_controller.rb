class FeatsController < ApplicationController
  add_breadcrumb "/Home", :root_path
  add_breadcrumb "Feats", '/feats'

  def index
    @feats = Feat.all.order(:name)

  end
end
