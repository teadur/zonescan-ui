class ScansController < ApplicationController
  before_action :set_scan, only: [:show, :edit, :update, :destroy]
  before_action :get_all_domains, only: [:all_scan]

  # GET /scans
  # GET /scans.json
  def index
    @scans = Scan.all
  end

  # GET /scans/1
  # GET /scans/1.json
  def show
  end

  # GET /scans/new
  def new
    @scan = Scan.new
    @domains = "12345.ee"
  end

  def all_scan
    # @scan = Scan.all_scan
    @scan = Scan.new
    # @run = scan_domains(@domains)
    # @domains = "scan_all.ee"
    ap @run
    @completed = @run[0]
    @completed.each do |entry|
      entry[:http_code] = entry.delete :rcode
      entry[:dns] = "resolves"
      # entry[:runid] = 1
      entry[:status] = "OK"
      entry[:id] = 1
      entry[:https] = false
      # entry[:created_at] = Time.now
      # entry[:updated_at] = Time.now
      pp entry
      Result.add(entry)
    end

  end

  # GET /scans/1/edit
  def edit
  end

  # POST /scans
  # POST /scans.json
  def create
    @scan = Scan.new(scan_params)

    respond_to do |format|
      if @scan.save
        format.html { redirect_to @scan, notice: 'Scan was successfully created.' }
        format.json { render :show, status: :created, location: @scan }
      else
        format.html { render :new }
        format.json { render json: @scan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scans/1
  # PATCH/PUT /scans/1.json
  def update
    respond_to do |format|
      if @scan.update(scan_params)
        format.html { redirect_to @scan, notice: 'Scan was successfully updated.' }
        format.json { render :show, status: :ok, location: @scan }
      else
        format.html { render :edit }
        format.json { render json: @scan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scans/1
  # DELETE /scans/1.json
  def destroy
    @scan.destroy
    respond_to do |format|
      format.html { redirect_to scans_url, notice: 'Scan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scan
      @scan = Scan.find(params[:id])
    end

    # Get all domains
    def get_all_domains
      list = Domain.all
      @names = ""
      unless list.nil?
        # puts list[0].name
        list.each do |item|
           puts item.name
          @names += "#{item.name},"

        end
      end
      scan_domains()
    end


    # Scan domains
    # TODO: allow only admin to scan all domains
  def scan_domains()
    # TODO: move execution to different method
    @run = Zonescan.run(nil,@names)
    # run = Zonescan.run(nil,'neti.ee,google.ee,mail.ee,123feil.ee')
    puts "jooks: #{@run.inspect}"
    ap @run

  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scan_params
      params.require(:scan).permit(:name, :time, :result)
    end
end
