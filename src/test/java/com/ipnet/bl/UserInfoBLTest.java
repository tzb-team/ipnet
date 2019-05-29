package com.ipnet.bl;

import com.ipnet.bl.personalbl.UserInfoBLServiceImpl;
import com.ipnet.blservice.personalservice.UserInfoBLService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.IOException;

/**
 * @program: UserInfoBLTest
 * @description: 用于测试UserInfoBLServiceImpl类
 * @author: bbsngg
 * @create: 2019-05-30 00:19
 */


@SpringBootTest
@RunWith(SpringRunner.class)

public class UserInfoBLTest {

    @Autowired
    private UserInfoBLServiceImpl service;

    @Test
    public void getWalletAddressById() throws IOException {
        String userid = "";
        String result = service.getWalletAddressById(userid);
        System.out.println(result);
    }

}