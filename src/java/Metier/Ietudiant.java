/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Metier;

import Beans.etudiant;

/**
 *
 * @author pc
 */
public interface Ietudiant {
    public int login(String email,String password);
    public void register(etudiant e);
    public etudiant select(int id);
}
