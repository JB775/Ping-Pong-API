# Wrap the controller in a module, setting the groundwork for future versions
module V1 

  class PingPongScoresController < ApplicationController
    before_action :set_ping_pong_score, only: [:show, :update, :destroy]

    # GET /ping_pong_scores
    def index
      @ping_pong_scores = PingPongScore.all
      render json: @ping_pong_scores
    end

    # GET /ping_pong_scores/:id
    def show
      render json: @ping_pong_score
    end

    # POST /ping_pong_scores
    def create
      @ping_pong_score = PingPongScore.new(ping_pong_score_params)

      if @ping_pong_score.save
        render json: @ping_pong_score, status: :created, location: @ping_pong_score
      else
        render json: @ping_pong_score.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /ping_pong_scores/1
    def update
      @ping_pong_score = PingPongScore.find(params[:id])

      if @ping_pong_score.update(ping_pong_score_params)
        head :no_content
      else
        render json: @ping_pong_score.errors, status: :unprocessable_entity
      end
    end

    # DELETE /ping_pong_scores/1
    def destroy
      @ping_pong_score.destroy
      head :no_content
    end

    private

      def set_ping_pong_score
        @ping_pong_score = PingPongScore.find(params[:id])
      end

      def ping_pong_score_params
        params.require(:ping_pong_score).permit(:email, :high_score)
      end
  end

end  # module wrapper 