class WelcomeController < ApplicationController
  def index
  	p "Called!"
  	Pusher.trigger('my-channel', 'my-event', {
      message: 'hello world'
    })
  end
end
