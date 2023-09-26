class VideosController < ApplicationController

      def index
    videos = Video.all
    render json: videos
  end

  def create
    video = Video.create(video_params)
      if video.valid?
        render json: video
      else
        render json: video.errors, status: 422
      end
  end

  def update
    video = Video.find(params[:id])
    video.update(video_params)
      if video.valid?
        render json: video
      else
        render json: video.errors, status: 422
      end
  end

  def destroy
    video = Video.find(params[:id])
    videos = Video.all
    if video.destroy
      render json: videos, status: 410
    else
      render json: video.errors
    end
  end

  private

    def video_params
      params.require(:video).permit(:file_name, :size, :duration, :mime_type, :user_id)
    end

  end

end
