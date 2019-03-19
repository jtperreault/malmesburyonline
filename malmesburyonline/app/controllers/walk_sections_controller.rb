class WalkSectionsController < ApplicationController
  def go_for
    @walk = Walk.first
    @walk_section = WalkSection.find(params[:id])
    @walk_section_buttons = @walk_section.walk_section_buttons
  end

  def show
    # assuming we need to use the buttons in our view, we eager load them from the DB
    # using the includes() method.
    @walk_section = WalkSection.includes(:walk_section_buttons).find(params[:id])
  end
end
