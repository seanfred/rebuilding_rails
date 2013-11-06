class QuotesController < Rulers::Controller
  def quote_1
    quote_1 = Rulers::Model::FileModel.find(1)
    render :quote, :obj => quote_1
  end

  def index
        quotes = FileModel.all
        render :index, :quotes => quotes
  end

  def new_quote
        attrs = {
          "submitter"=> "Sean",
          "quote"=> "A picture is worth a thousand pixels",
          "attribution"=> "Me"
        }
        m = FileModel.create attrs
        render :quote, :obj => m
  end

  def show
        quote = FileModel.find(params["id"])
        ua = request.user_agent
        render_response :quote, :obj => quote, :ua => ua
  end

  def update

  end

end


