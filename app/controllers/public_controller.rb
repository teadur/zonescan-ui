class PublicController < ApplicationController
  skip_before_action :authorize
  def index
    # TODO: implement orderding of results
    # @domains = Domains.order(:name)
     @results = Result.all
  end
end
