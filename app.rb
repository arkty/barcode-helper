require 'sinatra'
require 'barby'
require 'barby/barcode/ean_13'
require 'barby/outputter/png_outputter'

get '/:code' do
  content_type 'image/png'
  barcode = Barby::EAN13.new("%012d" % params[:code].to_i)
  barcode.to_png
end
