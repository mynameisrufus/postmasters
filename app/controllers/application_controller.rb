class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'

  before_filter do
    @s3_url = "http://s3.amazonaws.com/thepostmasterslodgings.co.nz"
  end

  def index; end

  def booking; end

  def gallery;
    @pictures = [
      {:name => "postmasters_01", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_02", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_04", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_05", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_06", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_07", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_08", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_09", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_10", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_11", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_12", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_13", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_14", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_15", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_16", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_17", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_18", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_19", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_20", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_21", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_22", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_23", :title => "Photo by rollo: Rawene beach"},
    ]
  end
end
