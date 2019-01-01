class GoodsController < ApplicationController
  before_action :authenticate_webuser! ,only:[:index]
  before_action :authenticate_admin ,only: [:index]
  #skip_before_filter :verify_authenticity_token,only:[:set_status]
  skip_before_action :verify_authenticity_token,only:[:set_status]
  before_action :set_good, only: [:show, :edit, :update, :destroy,:set_status,:get_rqrcode]

  # GET /goods
  # GET /goods.json
  def index
    @goods = Good.all
  end

  # GET /goods/1
  # GET /goods/1.json
  def show
    get_rqrcode
  end

  # GET /goods/new
  def new
    @good = Good.new
  end

  # GET /goods/1/edit
  def edit
  end

  # POST /goods
  # POST /goods.json
  def create
    @good = Good.new(good_params)

    respond_to do |format|
      if @good.save
        #format.html { redirect_to @good, notice: 'Good was successfully created.' }
        format.html{render :_OK}
        format.json { render :show, status: :created, location: @good }
      else
        format.html { render :new }
        format.json { render json: @good.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goods/1
  # PATCH/PUT /goods/1.json
  def update
    respond_to do |format|
      if @good.update(good_params)
        format.html { redirect_to @good, notice: 'Good was successfully updated.' }
        format.json { render :show, status: :ok, location: @good }
      else
        format.html { render :edit }
        format.json { render json: @good.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goods/1
  # DELETE /goods/1.json
  def destroy
    @good.destroy
    respond_to do |format|
      format.html { redirect_to goods_url, notice: 'Good was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def set_status
    @good.change_status(params[:status])

    respond_to do |format|
      format.html{render :_OK}
      format.json{ render :show, status: :ok, location: @good }
    end
  end

  def get_rqrcode
    id=@good.id
    qr=RQRCode::QRCode.new("http://littlehu.com:3000/goods/#{id}/edit", :level => :h )
    @qrcode_str = Base64.encode64( qr.to_img.resize(400,400).to_s )
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_good
      @good = Good.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def good_params
      params.require(:good).permit(:receiver_name, :receiver_address, :receiver_phone, :sender_name, :sender_address, :sender_phone, :mass, :pay_id, :pay_type, :who_pay,:status)
    end
end
