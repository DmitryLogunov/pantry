class ListTagsController < ApplicationController
  before_action :set_list_tag, only: [:show, :edit, :update, :destroy]

  # GET /list_tags
  # GET /list_tags.json
  def index
    @list_tags = ListTag.all
  end

  # GET /list_tags/1
  # GET /list_tags/1.json
  def show
  end

  # GET /list_tags/new
  def new
    @list_tag = ListTag.new
  end

  # GET /list_tags/1/edit
  def edit
  end

  # POST /list_tags
  # POST /list_tags.json
  def create
    @list_tag = ListTag.new(list_tag_params)

    respond_to do |format|
      if @list_tag.save
        format.html { redirect_to @list_tag, notice: 'List tag was successfully created.' }
        format.json { render :show, status: :created, location: @list_tag }
      else
        format.html { render :new }
        format.json { render json: @list_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_tags/1
  # PATCH/PUT /list_tags/1.json
  def update
    respond_to do |format|
      if @list_tag.update(list_tag_params)
        format.html { redirect_to @list_tag, notice: 'List tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_tag }
      else
        format.html { render :edit }
        format.json { render json: @list_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_tags/1
  # DELETE /list_tags/1.json
  def destroy
    @list_tag.destroy
    respond_to do |format|
      format.html { redirect_to list_tags_url, notice: 'List tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_tag
      @list_tag = ListTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_tag_params
      params.require(:list_tag).permit(:title)
    end
end
