/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jolmer.matirces;

import java.util.Scanner;

/**
 *
 * @author APRENDIZ
 */
public class JolmerMatirces {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
    Scanner teclado=new Scanner (System.in);
    int actividad;
    System.out.print("Igrese ejercicio a ejecutar:");
    actividad=teclado.nextInt();
    Scanner actividad1=new Scanner (System.in);
    switch(actividad)
    {
        case 1:
    int matriz[][] = new int[3][3];
    int valor=0;
    int numero[][]=new int[3][3];
    for (int x=0;x<numero.length;x++)
 {
        for (int y = 0; y < numero.length; y++) 
     {
        numero[x][y] =(x*matriz.length)+(y+1);
       System.out.print( numero[x][y]);
       System.out.print(" ");
     }
     System.out.println("");    
 }
 
    break;
        case 2:
            System.out.println("Digite el numero de columnas que quiere en la matriz:");
            int columna=teclado.nextInt();
    int matriz1[][] = new int[5][columna];
    int random;
    for (int x=0;x<matriz1.length;x++)
 {
    for (int y=0;y <matriz1.length;y++)    
    {
        random=((int)(Math.random()*11+0));
        matriz1[x][y]=random;
        System.out.print(matriz1 [x] [y]);
        System.out.print(" ");
    }
     System.out.println("");    
 }
    
    break;
        case 3:
            
    }
   }
  }