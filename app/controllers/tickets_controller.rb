class TicketsController < ApplicationController
    before_action :authenticate_user!

    def create
        # Get Active lottery
        activeLottery = Lottery.where(:status => true).first
        # Verify if exist active lottery 
        if !activeLottery.present?
            render json: {
                status: { code: 400, message: 'No se ha podido crear un ticket debido a que no existe un sorteo activo.'}
              }, status: :ok
        end

        amount = params[:amount]
        number =  params[:number]
        client_name = params[:client_name]

        seller = Employee.where(:user_id => current_user.user_id).first
        if !seller.present?
            render json: {
                status: { code: 400, message: 'No se ha podido crear un boleto debido a que no es un usuario valido.'}
            }, status: :ok
        end
        #check if not exist restriction
        existRestriction =  RestrictionLottery.where(:lottery_id => activeLottery.lottery_id, :number => number).first

        if existRestriction.present?
            lotteryAmounTotal = Ticket.where(:lottery_id => activeLottery.lottery_id, :number => number).sum(:amount)
            futureAmount =  lotteryAmounTotal+amount
           
            if  futureAmount > existRestriction.max_amount  
                render json: {
                    status: { code: 400, message: 'No se ha podido crear un boleto debido a que existe una restriccion.'}
                }, status: :ok
            end

        end

        ticket = Ticket.new
        ticket.lottery_id = activeLottery.lottery_id
        ticket.client_name = client_name
        ticket.number = number
        ticket.amount = amount
        ticket.employee_id = seller.employee_id
     
        if ticket.save
            render json: {
                status: {code: 200, message: 'Se ha creado correctamente.'}
              }, status: :ok
        else
          render json: ticket.errors, status: :unprocessable_entity
        end

    end

end
