package com.mmtap.boot.exception;

import lombok.Data;

/**
 * @author mmtap.com
 */
@Data
public class XbootException extends RuntimeException {

    private String msg;

    public XbootException(String msg){
        super(msg);
        this.msg = msg;
    }
}
