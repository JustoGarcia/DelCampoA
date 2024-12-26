class PagesController < ApplicationController
  def home
  end

  def contact
  end

  def send_message
    # Lógica para manejar el envío del formulario
    # Puedes usar ActionMailer para enviar el mensaje por correo electrónico
    # Ejemplo:
    # ContactMailer.with(contact_params).send_contact_email.deliver_now
    redirect_to contact_path, notice: 'Mensaje enviado correctamente.'
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end
end
