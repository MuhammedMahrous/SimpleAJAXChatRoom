/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import java.util.ArrayList;

/**
 *
 * @author mahrous
 */
public class Users {

    public enum Status {
        online, offline
    }
    public static ArrayList<UserDAO> registeredUsers = new ArrayList<UserDAO>();

    public static ArrayList<UserDAO> getProtectedArrayList() {
        ArrayList<UserDAO> protectedArrayList = new ArrayList<>();
        registeredUsers.forEach((registeredUser) -> {
            protectedArrayList.add(new UserDAO(registeredUser.getUsername(), "", registeredUser.getEmail(), registeredUser.getStatus()));
        });
        return protectedArrayList;
    }
}
