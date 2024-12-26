class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to new_contact_path, notice: 'Mensaje enviado con éxito.'
    else
      render :new, alert: 'Hubo un error al enviar el mensaje.'
    end
  end

  private

  def contact_params
    params.permit(:name, :email, :phone, :message)
  end
end