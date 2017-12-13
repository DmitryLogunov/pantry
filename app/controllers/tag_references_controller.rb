class TagReferencesController < ApplicationController
  before_action :set_tag_reference, only: [:show, :edit, :update, :destroy]

  # GET /tag_references
  # GET /tag_references.json
  def index
    @tag_references = TagReference.all
  end

  # GET /tag_references/1
  # GET /tag_references/1.json
  def show
  end

  # GET /tag_references/new
  def new
    @tag_reference = TagReference.new
  end

  # GET /tag_references/1/edit
  def edit
  end

  # POST /tag_references
  # POST /tag_references.json
  def create
    @tag_reference= TagReference.new(tag_reference_params)

    respond_to do |format|
      if @tag_reference.save
        format.html { redirect_to @tag_reference, notice: 'List tag was successfully created.' }
        format.json { render :show, status: :created, location: @tag_reference }
      else
        format.html { render :new }
        format.json { render json: @tag_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_references/1
  # PATCH/PUT /tag_references/1.json
  def update
    respond_to do |format|
      if @tag_reference.update(tag_reference_params)
        format.html { redirect_to @tag_reference, notice: 'List tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag_reference}
      else
        format.html { render :edit }
        format.json { render json: @tag_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_references/1
  # DELETE /tag_reference/1.json
  def destroy
    @tag_reference.destroy
    respond_to do |format|
      format.html { redirect_to tag_reference_url, notice: 'List tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_reference
      @tag_reference = TagReference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_reference_params
      params.require(:tag_reference).permit(:title)
    end
end
