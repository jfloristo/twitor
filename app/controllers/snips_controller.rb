class SnipsController < ApplicationController
  before_action :set_snip, only: [:show, :edit, :update, :destroy]

  # GET /snips
  # GET /snips.json
  def index
    @snips = Snip.all.order("created_at DESC")
    @snip = Snip.new
  end

  # GET /snips/1
  # GET /snips/1.json
  def show
  end

  # GET /snips/new
  def new
    @snip = Snip.new
  end

  # GET /snips/1/edit
  def edit
  end

  # POST /snips
  # POST /snips.json
  def create
    @snip = Snip.new(snip_params)

    respond_to do |format|
      if @snip.save
        format.html { redirect_to root_path, notice: 'Snip was successfully created.' }
        format.json { render :show, status: :created, location: @snip }
      else
        format.html { render :new }
        format.json { render json: @snip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snips/1
  # PATCH/PUT /snips/1.json
  def update
    respond_to do |format|
      if @snip.update(snip_params)
        format.html { redirect_to @snip, notice: 'Snip was successfully updated.' }
        format.json { render :show, status: :ok, location: @snip }
      else
        format.html { render :edit }
        format.json { render json: @snip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snips/1
  # DELETE /snips/1.json
  def destroy
    @snip.destroy
    respond_to do |format|
      format.html { redirect_to snips_url, notice: 'Snip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snip
      @snip = Snip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def snip_params
      params.require(:snip).permit(:snip)
    end
end
