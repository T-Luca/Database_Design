SELECT CNP ||' '||Nume||' '||Prenume Date_Personale 
    FROM Persoana;



SELECT CNP ||' '||Nume||' '||Prenume Date_Personale, 'Are Nr. Legitimatie', Nr_Leg
    FROM Persoana;



SELECT ISBN, titlu, pret FROM Carte ORDER BY pret;



SELECT titlu, pret FROM Carte WHERE Id_Categ=2;


    
SELECT titlu, pret FROM Carte WHERE pret BETWEEN 10 AND 30;



SELECT titlu, pret FROM Carte WHERE pret NOT BETWEEN 10 AND 30;



SELECT titlu, pret FROM Carte WHERE pret BETWEEN 20 AND 40 AND Id_Categ=5;



SELECT titlu, pret FROM Carte WHERE pret BETWEEN 20 AND 40 OR titlu LIKE 'D%';



SELECT titlu, pret FROM Carte WHERE pret<30 AND Id_Categ=9 OR titlu LIKE 'T%';


    
SELECT titlu, pret FROM Carte WHERE Id_Categ IN (4,5,8);



SELECT titlu, pret FROM Carte WHERE Id_Categ NOT IN (4,5,8);



SELECT CNP, Nume, Prenume FROM Persoana WHERE nume LIKE 'S%';


    
SELECT Cod_Client, tel FROM Client WHERE email IS NULL;



SELECT carte.titlu, carte.pret, carte.Id_Categ, autor.Id_Autor FROM Carte, Autor WHERE autor.Id_Autor=carte.Id_Categ;



SELECT C.titlu, C.pret, C.Id_Categ, A.Id_Autor FROM Carte C, Autor A WHERE A.Id_Autor=C.Id_Categ;  //Alias

    
    
SELECT Client.Cod_Client, Client.email, Comanda.Suma_Totala
FROM Client
INNER JOIN Comanda
ON Client.Cod_Client = Comanda.Cod_Client;
