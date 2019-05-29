package com.ipnet.blservice.apiservice;

import com.ipnet.entity.Combinations;

import java.io.IOException;
import java.util.List;

public interface MoneyMovementService {
    String retrieveDestacc(String username , String password) throws IOException;
    String createTransfer(String username , Double transferamount,String password ,String  srcacctId , String payeeId) throws IOException;
    List<Combinations> CombinationsAccountandPayee(String username , String password) throws IOException;
    String confirmTransfer(String username , String password , String controlFlowId) throws IOException;
}
