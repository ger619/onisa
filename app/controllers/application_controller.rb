class ApplicationController < ActionController::Base
  before_action :set_rendered_cart
  before_action :initialize_cart

  def set_rendered_cart
    @render_cart = true
  end

  def initialize_cart
    @cart ||= Cart.find_by(id: session[:cart_id])

    return unless @cart.nil?

    @cart = Cart.create
    session[:cart_id] = @cart.id
  end
end
