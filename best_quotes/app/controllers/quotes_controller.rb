class QuotesController < Rulers::Controller
  def quote_1
    quote_1 = Rulers::Model::FileModel.find(1)
    ua = request.user_agent
    render :quote, :obj => quote_1, :ua => ua
  end

  def index
        quotes = FileModel.all
        ua = request.user_agent
        render :index, :quotes => quotes, :ua => ua
  end

  def new_quote
        attrs = {
          "submitter"=> "Sean",
          "quote"=> "A picture is worth a thousand pixels",
          "attribution"=> "Me"
        }
        m = FileModel.create attrs
        ua = request.user_agent
        render :quote, :obj => m, :ua => ua
  end

  def show
        quote = FileModel.find(params["id"])
        ua = request.user_agent
        render_response :quote, :obj => quote, :ua => ua
  end

  def update

  end

end


