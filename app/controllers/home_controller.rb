class HomeController < ApplicationController
    add_breadcrumb "/Home", :root_path
    def index
        @materials = Material.all
    end
end
