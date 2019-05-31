package com.ipnet.utility;

import org.junit.Test;

import java.io.IOException;

/**
 * @program: BlockChainTest
 * @description: 测试BlockChain
 * @author: bbsngg
 * @create: 2019-05-31 11:21
 */
public class BlockChainTest {

    private BlockChain bc = new BlockChain();

    @Test
    public void registerPatent() throws IOException {
        String userid = "";
        String patentId = "patentid";
        String ret = bc.registerPatent(userid, patentId);
        System.out.println("返回值"+ret);

    }
}
