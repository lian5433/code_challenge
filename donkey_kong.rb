class DonkeyKong
  def initialize(n=100)
    @size = n
  end
  def print
    (0..@size).map {|n| 
      if n % 3 == 0
        puts "DONKEY" 
      elsif n % 5 == 0 
        puts "Dong" 
      else
        puts n
      end
    }
  end
end



donkey_kong = DonkeyKong.new
donkey_kong.print
