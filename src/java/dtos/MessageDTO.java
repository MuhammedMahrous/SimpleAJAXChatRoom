/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dtos;

/**
 *
 * @author mahrous
 */
public class MessageDTO {
    private String text;
    private int id;
    private String sender;

    public MessageDTO(String text, int id, String sender) {
        this.text = text;
        this.id = id;
        this.sender = sender;
    }
        

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    @Override
    public String toString() {
        return "MessageDTO{" + "text=" + text + ", id=" + id + ", sender=" + sender + '}';
    }
    
    
    
}
