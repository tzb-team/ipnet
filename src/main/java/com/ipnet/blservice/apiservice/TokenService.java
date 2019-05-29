package com.ipnet.blservice.apiservice;

import java.io.IOException;

public interface TokenService {
    String getRealAccessToken(String username , String password) throws IOException;
}
