class FrutyPebblesController < ApplicationController
  before_action :set_fruty_pebble, only: %i[ show edit update destroy ]

  # GET /fruty_pebbles or /fruty_pebbles.json
  def index
    @fruty_pebbles = FrutyPebble.all
  end

  # GET /fruty_pebbles/1 or /fruty_pebbles/1.json
  def show
  end

  # GET /fruty_pebbles/new
  def new
    
    @cocoapuff = Cocoapuff.find(params[:cocoapuff_id])
    @fruty_pebble = @cocoapuff.fruty_pebbles.build
  
    
  end

  # GET /fruty_pebbles/1/edit
  def edit
  end

  # POST /fruty_pebbles or /fruty_pebbles.json
  def create
    @cocoapuff = Cocoapuff.find(params[:cocoapuff_id])
  
    @fruty_pebble = @cocoapuff.fruty_pebbles.build(fruty_pebble_params)
    
    if @fruty_pebble.save
      redirect_to cocoapuffs_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fruty_pebbles/1 or /fruty_pebbles/1.json
  def update
    respond_to do |format|
      if @fruty_pebble.update(fruty_pebble_params)
        format.html { redirect_to @fruty_pebble, notice: "Fruty pebble was successfully updated." }
        format.json { render :show, status: :ok, location: @fruty_pebble }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fruty_pebble.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fruty_pebbles/1 or /fruty_pebbles/1.json
  def destroy
    @fruity_pebble = FruityPebble.find(params[:id])
    @fruity_pebble.destroy
    redirect_to fruity_pebbles_path, notice: "Fruity Pebble excluído com sucesso!"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fruty_pebble
      @fruty_pebble = FrutyPebble.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def fruty_pebble_params
      params.expect(fruty_pebble: [ :name, :pebble_count, :cocoapuff_id ])
    end
end
