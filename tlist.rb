require 'sinatra'
require 'sinatra/reloader'
require 'date'
require 'active_record'
require 'rack/csrf'

# セッションの活用を定義
use Rack::Session::Cookie, :secret => "thisissomethingsecret" 
# csrfの使用を宣言
use Rack::Csrf, raise: true

Time.zone_default = Time.find_zone! 'Tokyo'
ActiveRecord::Base.default_timezone = :local

ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3", 
  "database" => "./table.db" 
)

class Todos < ActiveRecord::Base
  validates :body, presence: true
end


get '/' do
  @title = "やることリスト"
  @todos = Todos.all
  erb :index
end



post '/create' do
  Todos.create(body: params[:body])
  redirect to('/')
end


post '/destroy' do
  Todos.find(params[:id]).destroy
end
