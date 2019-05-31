package com.ipnet.utility;

import org.web3j.crypto.CipherException;
import org.web3j.crypto.Credentials;
import org.web3j.crypto.WalletUtils;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.http.HttpService;


import java.io.File;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.util.ArrayList;

import static org.web3j.tx.Contract.GAS_LIMIT;
import static org.web3j.tx.ManagedTransaction.GAS_PRICE;

public class BlockChain {

    // 部署合约的账户钱包文件名
    private final String _walletFile = "UTC--2019-05-23T12-03-26.738148500Z--a45a432a77e1d5b903eab48a88ae8cd7896be9c4.json";

    // 部署合约的账户地址
    private final String _walletAddress = "0xa45a432a77e1d5b903eab48a88ae8cd7896be9c4";

    // 部署合约的账户密码
    private final String _walletKey = "123456";

    // 部署合约的账户私钥,内置了1.3eth
    private final String _privateKey = "09620F314EBEE6AC3281AC1868A5D6E6F0862738B85CB260DC569B17B349909B";

    // 钱包文件路径
    private final String _walletFilePath = "src/main/java/com/ipnet/utility/walletFiles";

    // 部署的合约地址
    private String contractAddress = "0x73DC856287463D518B83ADEdAF2D6EC530694EAC";



    private Web3j web3 = Web3j.build(new HttpService("https://ropsten.infura.io/v3/faac422f984a4e678289437f2fd7a78e"));

    // 记录用户的钱包文件名
    private ArrayList<String> wallets = new ArrayList<>();

    // 用以上链的账户凭证
    private Credentials credentials;

    // 智能合约的实例
    private Patent patentContract;

    /**
     * 构造方法
     */
    public BlockChain(){
        try {
            File wa = new File(_walletFilePath+"/"+_walletFile);
            credentials = WalletUtils.loadCredentials(_walletKey,wa);
            System.out.println("区块链接入完成");
            initContract();
        } catch (CipherException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    /**
     * 初始化智能合约
     */
    private void initContract(){
        patentContract = Patent.load(contractAddress, web3, credentials, GAS_PRICE, GAS_LIMIT);
        System.out.println("合约初始化完成");
    }

    /**
     * 新建钱包文件(.json)
     * @param password 钱包文件的密码
     * @return 钱包地址
     */
    public String createWalletFile(String password){
        String newWalletAddress = null;
        try {
            File file = new File(_walletFilePath);
            String fileName =  WalletUtils.generateNewWalletFile(password, file, true);
            File file1 = new File(_walletFilePath+'/'+fileName);
            Credentials tmpCredentials = WalletUtils.loadCredentials(password,file1);
            newWalletAddress = tmpCredentials.getAddress();
            wallets.add(fileName);
        } catch (CipherException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (InvalidAlgorithmParameterException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (NoSuchProviderException e) {
            e.printStackTrace();
        }
        return newWalletAddress;
    }

    /**
     * 上传专利到区块链上
     * @param holderAddress 专利持有人的钱包地址
     * @param patentId 专利号
     */
    public String registerPatent(String holderAddress, String patentId){
        String result = null;
        if (patentContract!=null){
            try {
                result = patentContract.regPatent(patentId,holderAddress).send().getTransactionHash();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
//        else {
//            System.out.println("专利上链失败");
//        }
        return result;
    }

    /**
     * 获取专利持有人的钱包地址
     * @param patentId 专利号
     * @return 若成功，则返回钱包地址；
     *         若不成功，则返回null
     */
    public String getPatentOwner(String patentId){
        String result = null;
        try {
            result = patentContract.getPatentInfo(patentId).send();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 专利交易
     * @param patentId 专利号
     * @param newOwner 新的专利持有人
     * @return txHash
     */
    public String patentTrade(String patentId, String newOwner){
        String result = null;
        if (patentContract!=null){
            try {
                result = patentContract.transaction(patentId,newOwner).send().getTransactionHash();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return result;
    }
//
//    public static void main(String[] args) {
//        BlockChain blockChain = new BlockChain();
//        String test = blockChain.registerPatent("0xA45a432a77E1D5B903eAB48A88Ae8CD7896Be9c4","0005198981");
//        System.out.println("end");
//
//        System.out.println(test);
//    }
}
