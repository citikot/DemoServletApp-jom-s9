package online.agatstudio;

import java.util.LinkedList;
import java.util.List;

public class UserDao {

    private List<User> users = new LinkedList<>();

    private static UserDao userDaoInstance = null;

    private UserDao() {}

    // SINGLETONE
    public static UserDao getInstance() {
        if (userDaoInstance == null) {
            userDaoInstance = new UserDao();
        }
        return userDaoInstance;
    }

    public boolean create(User user) {
        if (user != null) {
            users.add(user);
        }
        return false;
    }

    public User read(int id) {
        return users.stream().filter(user -> user.getId() == id).findFirst().orElse(null);
    }

    public boolean update(int id, User user) {
        int index = users.indexOf(read(id));
        return users.set(index, user) != null;
    }

    public boolean delete(int id) {
        int index = users.indexOf(read(id));
        return users.remove(index)!= null;
    }

    public List<User> readAll() {
        return users;
    }

}
