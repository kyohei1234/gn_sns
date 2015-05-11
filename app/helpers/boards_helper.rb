module BoardsHelper
  def board_image_for(board)
    image_tag "/docs/boards/#{board.image}"
  end
end
