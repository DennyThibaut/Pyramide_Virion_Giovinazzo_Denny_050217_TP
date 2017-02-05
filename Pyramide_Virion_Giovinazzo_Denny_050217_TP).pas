{//ALGO: pyramide
//BUT: Donne la taille de la pyramide et le nombre de pierres à utiliser en fonction du nombre de pierre diponible
//ENTREE: Le nombre de pierre disponible
//SORTIE: La taille et le nombre de pierre à utiliser pour la pyramide

VAR
nbPierreDisp, taille, nbPierreUtil : ENTIER

DEBUT
	taille <- 1
	ECRIRE "Quelle est le nombre de pierre diponible ?"
	LIRE nbPierreDisp      //8

	REPETER
		nbPierreUtil <- nbPierreUtil + taille*taille     //0 -> 0+(1*1)=1 //1 -> 1+(2*2)=5 //5+(3*3)=14	
		taille <- taille + 1 							//2-> 1+1 = 2    // 2+1 = 3	       // 3+1=4            
	JUSQU'A nbPierreUtil > nbPierreDisp               // 14>8

	taille <- taille -  2  //  4-2=2
	ECRIRE "La pyramide sera de " & taille & " blocs de haut"  // taille=2
	taille <- taille + 1 // 2+1=3
	nbPierreUtil <- nbPierreUtil - taille*taille // 14-(3*3)=5
	ECRIRE "Il faudra " & nbPierreUtil & " pierres" // nbPierreUtil=5
FIN}

Program Pyramide;
uses crt;
VAR
	nbPierreDisp, taille, nbPierreUtil : integer;

BEGIN
	clrscr;
	taille:=1;
	writeln('Quelle est le nombre de pierre disponible');
	Readln (nbPierreDisp); 

	REPEAT
		nbPierreUtil:= nbPierreUtil + taille*taille; // Le nombre de pierres utilisées par etage
		taille:=taille+1; //La pyramide prend 1 etage de plus à chaque passage dans la boucle
	Until nbPierreUtil>nbPierreDisp; // jusqu'à ce que les pierres utilisées soient supérieures au nombre de pierres disponibles

	taille:= taille-2; // Même lorsque le nombre de pierre sera dépassé il va encore prendre +1 en taille il faut donc retirer 2
	writeln('La pyramide sera de ',taille,' blocs de haut');
	taille:= taille+1; // Et rajouter 1 car même si la taille a pris + 1, nbPierreUtil n'est pas repassé dans la boucle.
	nbPierreUtil := nbPierreUtil - taille*taille;
	writeln('Il faudra ', nbPierreUtil,' pierres'); 
	readln;
END.