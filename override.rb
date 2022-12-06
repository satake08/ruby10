class Car
  def run(distance)
    puts "車で#{distance}キロ走ります。"
  end
end

class Bus < Car
  def run(distance)                                                                                #「継承」では
    super     #「super」オーバーライドしたBusクラスのメソッド内からCarクラスを呼び出すことができる
    puts "30人を乗せて、走っています。" # puts内←に変更　puts "バスで#{distance}キロ走ります。"    #この３行
  end                                                                                              #書かない
end

#「走る」という動作は、どの車にも共通している要素
#一方で、2行目の「30人を乗せて、走っている」というのは、バスなどの大型車にしかない要素
#このように、親クラスのメソッドには「無い要素」を追加したい時などに使用

bus = Bus.new
bus.run(5)

#car = Car.new
#car.run(5)