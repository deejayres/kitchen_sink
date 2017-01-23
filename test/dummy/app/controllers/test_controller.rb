class TestController < ApplicationController
  def test
    render plain: 'testing a route'
  end
end
