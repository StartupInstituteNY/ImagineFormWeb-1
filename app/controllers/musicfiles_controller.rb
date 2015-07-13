class MusicfilesController < ApplicationController
  before_action :set_musicfile, only: [:show, :edit, :update, :destroy]

  def index
    @musicfiles = Musicfile.all
  end


  def show
  end

  def new
    @musicfile = Musicfile.new
  end


  def edit
  end

  def create
    @musicfile = Musicfile.new(musicfile_params)

    respond_to do |format|
      if @musicfile.save
        format.html { redirect_to @musicfile, notice: 'Music File was successfully created.' }
        format.json { render :show, status: :created, location: @musicfile }
      else
        format.html { render :new }
        format.json { render json: @musicfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musicfiles/1
  # PATCH/PUT /musicfiles/1.json
  def update
    respond_to do |format|
      if @musicfile.update(musicfile_params)
        format.html { redirect_to @musicfile, notice: 'Music File was successfully updated.' }
        format.json { render :show, status: :ok, location: @musicfile }
      else
        format.html { render :edit }
        format.json { render json: @musicfile.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @musicfile.destroy
    respond_to do |format|
      format.html { redirect_to musicfiles_url, notice: 'Music File was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musicfile
      @musicfile = Musicfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def musicfile_params
      params.require(:musicfile).permit(:description)
    end
end
