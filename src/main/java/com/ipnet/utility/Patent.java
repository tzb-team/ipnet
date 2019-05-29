package com.ipnet.utility;

import java.math.BigInteger;
import java.util.Arrays;
import java.util.Collections;
import org.web3j.abi.TypeReference;
import org.web3j.abi.datatypes.Address;
import org.web3j.abi.datatypes.Function;
import org.web3j.abi.datatypes.Type;
import org.web3j.crypto.Credentials;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.RemoteCall;
import org.web3j.protocol.core.methods.response.TransactionReceipt;
import org.web3j.tx.Contract;
import org.web3j.tx.TransactionManager;

/**
 * <p>Auto generated code.
 * <p><strong>Do not modify!</strong>
 * <p>Please use the <a href="https://docs.web3j.io/command_line.html">web3j command line tools</a>,
 * or the org.web3j.codegen.SolidityFunctionWrapperGenerator in the 
 * <a href="https://github.com/web3j/web3j/tree/master/codegen">codegen module</a> to update.
 *
 * <p>Generated with web3j version 3.3.1.
 */
public class Patent extends Contract {
    private static final String BINARY = "60606040526000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff16806316bd33f9146100545780639c39378c146100e8578063bc424e401461017c575b600080fd5b341561005f57600080fd5b6100ce600480803590602001908201803590602001908080601f0160208091040260200160405190810160405280939291908181526020018383808284378201915050505050509190803573ffffffffffffffffffffffffffffffffffffffff16906020019091905050610219565b604051808215151515815260200191505060405180910390f35b34156100f357600080fd5b610162600480803590602001908201803590602001908080601f0160208091040260200160405190810160405280939291908181526020018383808284378201915050505050509190803573ffffffffffffffffffffffffffffffffffffffff1690602001909190505061036b565b604051808215151515815260200191505060405180910390f35b341561018757600080fd5b6101d7600480803590602001908201803590602001908080601f01602080910402602001604051908101604052809392919081815260200183838082843782019150505050505091905050610483565b604051808273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b600061022361051c565b600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff1614151561027f57600080fd5b6020604051908101604052808473ffffffffffffffffffffffffffffffffffffffff168152509050806000856040518082805190602001908083835b6020831015156102e157805182525b6020820191506020810190506020830392506102bb565b6001836020036101000a038019825116818451168082178552505050505050905001915050908152602001604051809103902060008201518160000160006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550905050600191505b5b5092915050565b6000600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff161415156103c957600080fd5b816000846040518082805190602001908083835b60208310151561040357805182525b6020820191506020810190506020830392506103dd565b6001836020036101000a038019825116818451168082178552505050505050905001915050908152602001604051809103902060000160006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550600190505b5b92915050565b600080826040518082805190602001908083835b6020831015156104bd57805182525b602082019150602081019050602083039250610497565b6001836020036101000a038019825116818451168082178552505050505050905001915050908152602001604051809103902060000160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1690505b919050565b602060405190810160405280600073ffffffffffffffffffffffffffffffffffffffff16815250905600a165627a7a723058203010b3450c5450f7f4c3da091816433f0a422f458be183a8ab060bb274ec28890029";

    protected Patent(String contractAddress, Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        super(BINARY, contractAddress, web3j, credentials, gasPrice, gasLimit);
    }

    protected Patent(String contractAddress, Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        super(BINARY, contractAddress, web3j, transactionManager, gasPrice, gasLimit);
    }

    public RemoteCall<TransactionReceipt> regPatent(String id, String owner) {
        final Function function = new Function(
                "regPatent", 
                Arrays.<Type>asList(new org.web3j.abi.datatypes.Utf8String(id), 
                new Address(owner)),
                Collections.<TypeReference<?>>emptyList());
        return executeRemoteCallTransaction(function);
    }

    public RemoteCall<TransactionReceipt> transaction(String patentid, String newHolder) {
        final Function function = new Function(
                "transaction", 
                Arrays.<Type>asList(new org.web3j.abi.datatypes.Utf8String(patentid), 
                new Address(newHolder)),
                Collections.<TypeReference<?>>emptyList());
        return executeRemoteCallTransaction(function);
    }

    public static RemoteCall<Patent> deploy(Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        return deployRemoteCall(Patent.class, web3j, credentials, gasPrice, gasLimit, BINARY, "");
    }

    public static RemoteCall<Patent> deploy(Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        return deployRemoteCall(Patent.class, web3j, transactionManager, gasPrice, gasLimit, BINARY, "");
    }

    public RemoteCall<String> getPatentInfo(String id) {
        final Function function = new Function("getPatentInfo", 
                Arrays.<Type>asList(new org.web3j.abi.datatypes.Utf8String(id)), 
                Arrays.<TypeReference<?>>asList(new TypeReference<Address>() {}));
        return executeRemoteCallSingleValueReturn(function, String.class);
    }

    public static Patent load(String contractAddress, Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        return new Patent(contractAddress, web3j, credentials, gasPrice, gasLimit);
    }

    public static Patent load(String contractAddress, Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        return new Patent(contractAddress, web3j, transactionManager, gasPrice, gasLimit);
    }
}
