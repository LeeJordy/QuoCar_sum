// UserService.java
package com.quocar.user.service;

import java.util.HashMap;

public interface UserService {
    // 사용자 등록
    int register(HashMap<String, Object> map);

    // 로그인 확인
    boolean login(HashMap<String, Object> map);

    // 아이디 중복 확인
    boolean checkIdDuplication(HashMap<String, Object> map);
}