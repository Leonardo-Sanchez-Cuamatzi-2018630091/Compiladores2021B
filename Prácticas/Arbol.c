/*  A->aBa​
   B->bAb
   B->c*/
#include <stdio.h>
#include <string.h>
#define MAX 100
int i = 0;
void A(char a[]);
void B(char a[]);





int main()
{

	char prueba[MAX]="abacaba";
	A(prueba);
	if(prueba[i]=='\0')
	{
		printf("Cadena aceptada\n");
	}
	else
	{
		printf("Cadena no aceptada\n");
	}

	return 0;
}

void A(char a[])
{
	if(a[i]=='a') //Checamos que nuestro primer elemento sea a
	{
		i++; //Avanzamos el itereador
		B(a);//Pasamos la posicion del array a B
	}
}

void B(char a[]) 
{

	if(a[i]=='b') //checamos que sea b o c
	{
		i++;  //Sí es B avanzamos el itererador
		A(a); //llamamos a A cumpliendo el bAb
	}

	else if(a[i]=='c')
	{
		i++;
		A(a);
	}	

}