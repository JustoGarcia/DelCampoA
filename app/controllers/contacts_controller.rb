class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to new_contact_path, notice: 'Mensaje enviado con éxito.'
    else
      flash.now[:alert] = 'Hubo un error al enviar el mensaje.'
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end
end