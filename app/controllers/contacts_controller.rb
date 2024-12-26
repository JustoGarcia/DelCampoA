class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(name: params[:name], email: params[:email], phone: params[:phone], message: params[:message])
    if @contact.save
      redirect_to contact_path, notice: 'Mensaje enviado con éxito.'
    else
      render :new, alert: 'Hubo un error al enviar el mensaje.'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end
end