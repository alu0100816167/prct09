require 'spec_helper'
require 'Bibliografia'

describe Bibliografia do
    
    #Inicializacion de los autores y editoriales
    autores= ['Gabriel Garcia Marquez', 'Megan Maxwell', 'Julio Verne', 'William Shakespeare']
    isbn = [23231, 2910019226453, 33849394]
    editoriales= ['Random House', 'Planeta']
    
    l1= Bibliografia::Bibliografia.new("De viaje por Europa del Este", autores[0], editoriales[0], 2292, 23232, 2015, isbn[0], 243424)
    l2= Bibliografia::Bibliografia.new("Pideme lo que quieras y te lo dare", autores[1], editoriales[1], 4882, 222, 2015, isbn[1], 222)
    
    context "# Almacenamiento de las variables del libro 1" do
        it "Se almacena el titulo" do
            expect(l1.GetTitulo).to eq("De viaje por Europa del Este")
        end
        
        it "Se almacena el autor" do
            expect(l1.GetAutor).to eq("Gabriel Garcia Marquez")
        end
        
        it "Se almacena la editorial" do
            expect(l1.GetEditorial).to eq("Random House")
        end
        
        it "Se almacena el numero de edicion" do
            expect(l1.GetNum_edicion).to eq(2292)
        end
        
        it "Se almacena la serie" do
            expect(l1.GetSerie).to eq(23232)
        end
        
        it "Se almacena la fecha de publicación" do
            expect(l1.GetFecha_publicacion).to eq(2015)
        end
        
        it "Se almacena el ISBN" do
            expect(l1.GetIsbn).to eq(23231)
        end
        
        it "Se almacena la referencia" do
            expect(l1.GetReferencia).to eq(243424)
        end
        
    end   
    
    context "# Almacenamiento de las variables del libro 2" do
        it "Se almacena el titulo" do
            expect(l2.GetTitulo).to eq("Pideme lo que quieras y te lo dare")
        end
        
        it "Se almacena el autor" do
            expect(l2.GetAutor).to eq("Megan Maxwell")
        end
        
        it "Se almacena la editorial" do
            expect(l2.GetEditorial).to eq("Planeta")
        end
        
        it "Se almacena el numero de edicion" do
            expect(l2.GetNum_edicion).to eq(4882)
        end
        
        it "Se almacena la serie" do
            expect(l2.GetSerie).to eq(222)
        end
        
        it "Se almacena la fecha de publicación" do
            expect(l2.GetFecha_publicacion).to eq(2015)
        end
        
        it "Se almacena el ISBN" do
            expect(l2.GetIsbn).to eq(2910019226453)
        end
        
        it "Se almacena la referencia" do
            expect(l2.GetReferencia).to eq(222)
        end
    end   

    context "# Probando función referencia formateada" do
	it "Referencia formateada del libro 1" do
		expect(l1.PrintReference).to eq("Gabriel Garcia Marquez
De viaje por Europa del Este
Editorial: Random House
Fecha de publicación: {@fecha_publicacion}
ISBN: 23231
Referencia: 243424
")
	end
	it "Referencia formateada del libro 2" do
		expect(l2.PrintReference).to eq("Megan Maxwell
Pideme lo que quieras y te lo dare
Editorial: Planeta
Fecha de publicación: {@fecha_publicacion}
ISBN: 2910019226453
Referencia: 222
")
	end
    end 
end

