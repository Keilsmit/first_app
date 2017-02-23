
class Classic

  def self.text
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nisl nunc, condimentum facilisis sodales non, vehicula vitae elit. Nam sit amet ullamcorper sapien. Proin tristique, nisl quis dictum interdum, augue ex tincidunt massa, quis feugiat eros mauris sit amet nunc. Aliquam et magna at dolor pulvinar viverra. Integer porta ut orci et feugiat. Suspendisse suscipit eget risus vitae congue. Maecenas cursus ut diam id luctus. Proin elementum suscipit rutrum. Proin at ante euismod, suscipit elit at, vulputate velit. Pellentesque molestie sit amet neque at egestas. Mauris consequat sem ut nisl pellentesque, eget mattis leo dictum. Sed nec tincidunt est. Sed sodales libero purus, a molestie risus lacinia quis."
  end

  def self.call(num = 1)
    text * num
  end

end
