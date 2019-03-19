class WalkSectionsController < ApplicationController
  def show
    # assuming we need to use the buttons in our view, we eager load them from the DB
    # using the includes() method.
    @walk_section = WalkSection.includes(:walk_section_buttons).find(params[:id])
  end
end
