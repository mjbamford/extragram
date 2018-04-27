class TransactionsController < ApplicationController
  def create
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']

    # Token is created using Checkout or Elements!
    # Get the payment token ID submitted by the form:
    token = params[:stripeToken]

    charge = Stripe::Charge.create({
      amount: 66666,
      currency: 'aud',
      description: 'Example charge',
      source: token,
    })

    Rails.logger.info "charge=#{charge.inspect}"

    redirect_to posts_path
  end
end
