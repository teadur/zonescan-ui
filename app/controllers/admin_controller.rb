class AdminController < ApplicationController
  def index
    @total_domains = Domain.count
    @total_scans = Scan.count
    @total_results = Result.count
  end
end
