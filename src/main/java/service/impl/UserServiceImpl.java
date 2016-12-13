package service.impl;

import org.jasypt.util.password.StrongPasswordEncryptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import demo.dao.GenericDao;
import demo.model.User;
import demo.service.UserService;

@Service
public class UserServiceImpl extends GenericServiceImpl<User, Integer> implements UserService {

    @Autowired
    public UserServiceImpl(GenericDao<User, Integer> genericDao) {
        super(genericDao);
    }

    @Override
    public User login(User user) {
        String plainPassword = user.getPassword();
        user = genericDao.query("user.login", user.getUsername());
        if (user!= null) {
            String encryptedPassword = user.getPassword();
            StrongPasswordEncryptor strongPasswordEncryptor = new StrongPasswordEncryptor();
            if (strongPasswordEncryptor.checkPassword(plainPassword, encryptedPassword)) {
                return user;
            }
        }
        return null;
    }
}