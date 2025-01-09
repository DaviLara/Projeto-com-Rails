class CocoapuffsController < ApplicationController
  before_action :set_cocoapuff, only: %i[ show edit update destroy ]

  # GET /cocoapuffs or /cocoapuffs.json
  def index
    @cocoapuffs = Cocoapuff.includes(:fruty_pebbles).all
  end

  # GET /cocoapuffs/1 or /cocoapuffs/1.json
  def show
    @cocoapuff = Cocoapuff.find(params[:id])
    @fruty_pebbles = @cocoapuff.fruty_pebbles
  end

  # GET /cocoapuffs/new
  def new
    @cocoapuff = Cocoapuff.new
  end

  # GET /cocoapuffs/1/edit
  def edit
  end

  # POST /cocoapuffs or /cocoapuffs.json
  def create
    @cocoapuff = Cocoapuff.new(cocoapuff_params)

    respond_to do |format|
      if @cocoapuff.save
        redirect_to cocoapuffs_path
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cocoapuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cocoapuffs/1 or /cocoapuffs/1.json
  def update
    respond_to do |format|
      if @cocoapuff.update(cocoapuff_params)
        format.html { redirect_to @cocoapuff, notice: "Cocoapuff was successfully updated." }
        format.json { render :show, status: :ok, location: @cocoapuff }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cocoapuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cocoapuffs/1 or /cocoapuffs/1.json
  def destroy
    @cocoapuff = Cocoapuff.find(params[:id])
    @cocoapuff.destroy
    redirect_to cocoapuffs_path, notice: "Cocoapuff excluído com sucesso!"
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocoapuff
      @cocoapuff = Cocoapuff.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def cocoapuff_params
      params.expect(cocoapuff: [ :name, :archived ])
    end
end
