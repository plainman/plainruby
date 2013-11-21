
class Tester
  include(Comparable) # Modul Comparable "reinmixen"
  
  attr_reader :zahl
  attr_writer("mama")
  #attr_accessor nicht benutzt
  
  
  def initialize(zahl=10)
    @zahl=zahl
    @mama=true
  end
  
  def hello
    @str="Hello World"
    @zahl+=23
    puts @str+" "+@zahl.to_s+"!"
  end
  
  def change!()
    @zahl+=42;
  end
  
  def number=(wert) #setter, muss nicht so hei�en, wie Attribut
    @zahl=wert
  end
  
  def <=>(t) # für mixin Comparable
    @zahl <=> t.zahl
  end
  
end


t = Tester.new
t.hello
t.mama=false;
# geht nicht: t.zahl=4;
puts t.change!()
puts t.zahl

t.number=-23
t.hello

def machNew(c)
  d=c.new
  print "Klasse #{c.to_s} vom Typ #{c.class} uebergeben: "
  if d.respond_to?("hello")
    d.hello
  else
    puts "nix"
  end
  return d
end
machNew(Array)
t2=machNew(Tester)
puts "Vergleichsergebnis t>t2: " << (t > t2).to_s 

zahlen = [ 1, 4, 6, 8, 11]
for i in 0...zahlen.length
  puts i.to_s+": "+zahlen[i].to_s
end
zahlen.each do |i|
  puts i  #gibt den Inhalt des Arrays aus
end
zahlen.collect { |z|
  z+=1
  print z.to_s << " "
}
puts zahlen.join(" ~ ")
zahlen.reject! { |z|
  z.odd?
}
puts zahlen.join(" : ")

monate = { :Januar => "Schnee", :Februar => "Ferien", :Maerz => "Ostern" }
monate.each do |m,b|
  puts "#{m}: #{b}" #b=monate[m]
  puts m.to_s+": "+monate[m]
end

a="5"
t="Zahlen:"
a.to_i.times { |b|
  t << " "<< b.to_s
} if a.respond_to?("to_i") # nur um es mal auszuprobieren
puts t
