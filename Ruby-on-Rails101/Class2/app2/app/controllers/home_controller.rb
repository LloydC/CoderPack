class HomeController < ApplicationController
#layout 'landing'

def index
@transactions = [ {amount: 10, date: Time.now}, {amount: 20, date: Time.now - 2.days }]
end

def about
@id = params[:id]
@my_message = [{title: "Urgent message for you", body: "Just kidding"}, {title: "Second message for you", body: "Have a nap"}]
end 

end