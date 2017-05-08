class StaticPagesController < ApplicationController
  def home
    @key = params[:key].to_s
    @northern = ["Hà Giang", "cao bằng", "lai châu", "Lào Cai", "yên bái", "tuyên quang", "bắc cạn", "thái nguyên", "lạng sơn", "sơn la", "phú thọ", "vĩnh phúc", "hà nội", "bắc ninh", "bắc giang", "quảng ninh", "Hải Phòng", "hải dương", "hà nam", "nam định", "Thái Bình", "ninh bình"]
    @central = ["thanh hóa", "nghệ an", "hà tĩnh", "Quảng Bình", "quảng trị", "Huế","thừa thiên huế", "đà nẵng", "quảng nam", "quảng ngãi", "bình định", "phú yên", "Khánh òa", "con tum", "Nha Trang", "gia lai", "đắc lắc", "dak lak", "Hội An"]
    @south = ["lâm đồng", "ninh thuận", "bình thuận", "tây ninh", "bình phước", "bình dương", "hồ chí minh", "đồng nai", "bà rịa", "vũng tàu", "long an", "đồng tháp", "tiền giang", "bến tre", "trà vinh", "vĩnh long", "an giang", "cần thơ", "sóc trăng", "bạc liêu", "kiên giang"]
    if (@key == "most-popular-sceneries")
      @titles = "MOST POPULAR SCENERIES"
      @sceneries = Image.all.order("scenery_votepoint DESC")
      elsif (@key == "northern")
      @titles = "NORTHER"  
      @sceneries = Image.where(scenery_address: @northern)
      elsif (@key == "central")
      @titles = "CENTRAL"  
      @sceneries = Image.where(scenery_address: @central)
      elsif (@key == "south")
      @titles = "SOUTH"  
      @sceneries = Image.where(scenery_address: @south)
    else
    @titles = "LATEST SCENERIES"
    @sceneries = Image.all.order("created_at DESC")
    end
  if params[:search]
     @sceneries = Image.search(params[:search]).order("created_at DESC")
    if (@sceneries.count > 0)
      @titles = "RESULT"
    else
      @titles = "NOT FOUND!!"
    end
  end
  end

  def help
  end
end
