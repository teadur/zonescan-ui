class PublicController < ApplicationController
  def index
    # TODO: implement orderding of results
    # @domains = Domains.order(:name)
     @results = Result.all
  end
end
