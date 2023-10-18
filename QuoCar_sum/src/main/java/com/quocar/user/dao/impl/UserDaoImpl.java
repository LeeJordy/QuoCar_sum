package com.quocar.user.dao.impl;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.quocar.user.dao.UserDao;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public int insertUser(HashMap<String, Object> map) {
        return sqlSession.insert("User.insertUser", map);
    }

    @Override
    public boolean checkPassword(HashMap<String, Object> map) {
        int count = sqlSession.selectOne("User.checkPassword", map);
        return count == 1; // 1개의 결과가 있는 경우 로그인 성공
    }

    @Override
    public boolean checkIdDuplication(HashMap<String, Object> map) {
        int count = sqlSession.selectOne("User.checkIdDuplication", map);
        return count > 0; // 중복된 ID가 존재하는 경우 true 반환
    }
}
