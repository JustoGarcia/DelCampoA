class ContactsController < ApplicationController
  def new
    # Renderiza el formulario de contacto
  end

  def create
    # Procesa los datos del formulario
    @contact = Contact.new(contact_params)
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