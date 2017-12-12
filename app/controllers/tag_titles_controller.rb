class TagTitlesController < ApplicationController
  before_action :set_tag_title, only: [:show, :edit, :update, :destroy]

  # GET /tag_titles
  # GET /tag_titles.json
  def index
    @tag_titles = TagTitle.all
  end

  # GET /tag_titles/1
  # GET /tag_titles/1.json
  def show
  end

  # GET /tag_titles/new
  def new
    @tag_title = TagTitle.new
  end

  # GET /tag_titles/1/edit
  def edit
  end

  # POST /tag_titles
  # POST /tag_titles.json
  def create
    @tag_title = TagTitle.new(tag_title_params)

    respond_to do |format|
      if @tag_title.save
        format.html { redirect_to @tag_title, notice: 'List tag was successfully created.' }
        format.json { render :show, status: :created, location: @tag_title }
      else
        format.html { render :new }
        format.json { render json: @tag_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_titles/1
  # PATCH/PUT /tag_titles/1.json
  def update
    respond_to do |format|
      if @tag_title.update(tag_title_params)
        format.html { redirect_to @tag_title, notice: 'List tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag_title }
      else
        format.html { render :edit }
        format.json { render json: @tag_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_titles/1
  # DELETE /tag_titles/1.json
  def destroy
    @tag_title.destroy
    respond_to do |format|
      format.html { redirect_to tag_titles_url, notice: 'List tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_title
      @tag_title = TagTitle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_title_params
      params.require(:tag_title).permit(:title)
    end
end
