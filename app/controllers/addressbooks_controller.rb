class AddressbooksController < ApplicationController

  def index
    @addressbooks = Addressbook.all
    @message = Message.new
  end

  def show
    @addressbook = Addressbook.find(params[:id])
    @message = Message.new
    @messages = Message.all
  end


  def new
    @addressbook = Addressbook.new
  end

  def create
    @addressbook = Addressbook.new(addressbook_params)
    if @addressbook.save
      flash[:notice] = "Contact Saved"
      redirect_to addressbooks_path
    else
      render 'new'
    end
  end

private

  def addressbook_params
    params.require(:addressbook).permit(:address, :city, :state, :zipcode, :firstname, :lastname, :number, :message_id, :id)
  end

end



