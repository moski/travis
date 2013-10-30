require 'lib/fr.rb' 

describe Racional,"Pruebas Basicas \n" do
  
        it "Debe existir un numerador" do
                @a=Racional.new(1,3)
                @a.n.should be_a(Fixnum)
       		@a.num.should eq(1)
	 end

        it "Debe existir un denominador" do
                @a=Racional.new(1,3)
                @a.d.should be_a(Fixnum)
		@a.denom.should eq(3)
        end

	it "Debe estar reducida" do
		@b=Racional.new(4,8)
		@b.to_s.should ==="1/2"
	end

	it "Se debe poder expresar en forma de cadena" do
		@b=Racional.new(-7,3)
		@b.to_s.should eq("-7/3")
		@b.to_s.should be_a(String)
	end
	
	it "Se debe poder expresar como double" do
		@a=Racional.new(3,4)
		@a.to_d.should eq(0.75)
	end
end

describe Racional,"Pruebas operadores unarios \n" do
	before(:each) do
		@a = Racional.new(-2,3)
		
  	end	

	it "Calculo de valor absoluto" do
		@a.abs.to_s.should =="2/3"
	end

	it "Calculo de reciploco" do
		@a.reciproca.to_s.should eq("3/-2") 
	end

	it "Calculo del contrario" do
		(-@a).to_s.should =="2/-3"
	end		

end 

describe Racional,"Pruebas operadores binarios \n" do

	before(:each) do
		@a=Racional.new(-1,3)
		@b=Racional.new(4,5)
		@c=Racional.new(3,5)
	end

	it "Prueba operador suma" do
		(@a+@b).to_s.should ==="7/15"
	end
	
	it "Prueba operador resta" do
		(@b-@a).num.should ==17
		(@b-@a).denom.should ==15
	end
	
	it "Prueba Multiplicacion" do
		(@b*@c).to_s.should eq("12/25")
	end

	it "Prueba division" do
		(@b/@c).to_s.should eq("4/3")
	end

	it "Prueba del modulo" do
		(@b % @c).should > 0
	end	
end

describe Racional, "Prueba operadores comparacionales \n" do

	before(:each) do 
		@a=Racional.new(5,6)
		@b=Racional.new(-5,6)
		@c=Racional.new(5,2)
		@d=Racional.new(4,6)
	end

	it "Comprobar igualdad \n" do
		(@a==@b).should === false
		(@a==@a).should == true
	end

	it "Comprobar >= & >" do
		(@a>@c).should eq(false)
		(@c>=@d).should eq(true)
	end

	it "Comprobar <= & <" do
		(@a<@b).should eq(false)
		(@b<=@a).should ==true
	end
end

