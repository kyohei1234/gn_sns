module BoardsHelper
  def board_image_for(board, size="390")
    image_tag "/docs/boards/#{board.image}", size: size
  end
end
