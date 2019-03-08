class SpellsController < ApplicationController
  add_breadcrumb "/Home", :root_path
  add_breadcrumb "Spells", '/spells'

  def index
    @spells = Spell.all.order(:level)

    # add_breadcrumb "index", 'materials/index', :title => "Back to the Index"
  end

  def show
    @spell = Spell.find(params[:id])
    add_breadcrumb "#{@spell.name}", "/spells/#{@spell.id}", :title => "Back to the Index"
  end
end
