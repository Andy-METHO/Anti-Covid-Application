package Beans;

import java.util.ArrayList;

public class Friends {

    private ArrayList<User> friends;
    private ArrayList<User> request_received;
    private ArrayList<User> request_send;

    public Friends() {
        super();
    }

    public Friends(ArrayList<User> friends) {
        this.friends = friends;
    }

    public Friends(ArrayList<User> friends, ArrayList<User> request_received, ArrayList<User> request_send) {
        this.friends = friends;
        this.request_received = request_received;
        this.request_send = request_send;
    }

    public User getFriends(int i) {
        return friends.get(i);
    }

    public void addFriends(User user) {
        friends.add(user);
    }

    public void removeFriends(User user) {
        friends.remove(user);
    }

    public int getFriendsSize() {
        return friends.size();
    }

    public User getRequest_received(int i) {
        return request_received.get(i);
    }

    public void addRequest_received(User user) {
        request_received.add(user);
    }

    public void removeRequest_received(User user) {
        request_received.remove(user);
    }

    public int getRequest_receivedSize() {
        return request_received.size();
    }


    public User getRequest_send(int i) {
        return request_send.get(i);
    }

    public void addRequest_send(User user) {
        request_send.add(user);
    }

    public void removeRequest_send(User user) {
        request_send.remove(user);
    }

    public int getRequest_sendSize() {
        return request_send.size();
    }


    public User searchFriendbyPseudo(String pseudo) {
        for (User user : friends) {
            if (user.getPseudo().equals(pseudo)) {
                return user;
            }
        }
        return null;
    }

    public User searchRequest_receivedbyPseudo(String pseudo) {
        for (User user : request_received) {
            if (user.getPseudo().equals(pseudo)) {
                return user;
            }
        }
        return null;
    }


    public User searchRequest_sendbyPseudo(String pseudo) {
        for (User user : request_send) {
            if (user.getPseudo().equals(pseudo)) {
                return user;
            }
        }
        return null;
    }

    public boolean hasFriend() {
        if (getFriendsSize() > 0) {
            return true;
        } else {
            return false;
        }
    }

    public boolean hasRequest_received() {
        if (getRequest_receivedSize() > 0) {
            return true;
        } else {
            return false;
        }
    }

    public boolean hasRequest_send() {
        if (getRequest_sendSize() > 0) {
            return true;
        } else {
            return false;
        }
    }
}
