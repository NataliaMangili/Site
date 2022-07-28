/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;
/**
 *
 * @author User
 */
public class Semestres {
    
    public ArrayList<String> semestres = new ArrayList();
    
    //método Construtor
        public Semestres() {
        preencherCursos();
    }
    
    public void preencherCursos() {
        semestres.add("1º Semestre");
        semestres.add("2º Semestre");
        semestres.add("3º Semestre");
        semestres.add("4º Semestre");
        semestres.add("5º Semestre");
        semestres.add("6º Semestre");
        semestres.add("7º Semestre");
        semestres.add("8º Semestre");
    }
}