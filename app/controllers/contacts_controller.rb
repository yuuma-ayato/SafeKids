class ContactsController < ApplicationController
  before_action :set_contact, only: %i[show edit update destroy]
  before_action :authenticate_user!

    def index
      if current_user.user_type == "窓口"
        @contacts = Contact.all
      else
        @contacts = current_user.contacts
      end
    end

    def new
      @contact = Contact.new
      @contact.names.build
    end

    def create
      @contact = Contact.new(contact_params)
      @contact.user_id = current_user.id
      if params[:back]
        render :new
      else
        if @contact.save
          redirect_to @contact, notice: t('view.create_contact')
        else
          render :new
        end
      end
    end

    def show
    end

    def edit
    end

    def update
      if @contact.update(contact_params)
        redirect_to @contact, notice: t('view.edit_contact')
      else
        render :edit
      end
    end

    def destroy
      @contact.destroy
      redirect_to contacts_path, notice: t('view.delete_contact')
    end

  private
    def contact_params
      params.require(:contact).permit(
        :family_name,
        :first_name,
        :family_name_kana,
        :first_name_kana,
        :relation,
        :other_relation,
        :phone_number,
        :postal_code,
        :prefecture,
        :city,
        :adress,
        :building,
        :image,
        :image_cache,
        names_attributes:[
          :family_name,
          :first_name,
          :family_name_kana,
          :first_name_kana ])
    end

    def set_contact
      @contact = Contact.find(params[:id])
    end
  end
