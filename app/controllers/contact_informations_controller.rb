class ContactInformationsController < ApplicationController
    before_action :set_contact_information, only: [:show, :edit, :update, :destroy]

      def index
        @contact_informations = ContactInformation.all
      end

      def new
        @contact_information = ContactInformation.new
      end

      def create
        @contact_information = ContactInformation.new(contact_information_params)
        @contact_information.user_id = current_user.id
        if params[:back]
          render :new
        else
          if @contact_information.save
            redirect_to new_contact_information_path, notice: t('view.create_contact_information')
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
        if @contact_information.update(contact_information_params)
          redirect_to contact_informations_path, notice: t('view.edit_contact_information')
        else
          render :edit
        end
      end

      def destroy
        @contact_information.destroy
        redirect_to contact_informations_path, notice: t('view.delete_contact_information')
      end

      def confirm
        @contact_information = ContactInformation.new(contact_information_params)
        @contact_information.user_id = current_user.id
        render :new if @contact_information.invalid?
      end

    private
      def contact_information_params
        params.require(:contact_information).permit(:relation, :other_relation, :phone_number )
      end

      def set_contact_information
        @contact_information = ContactInformation.find(params[:id])
      end
    end
