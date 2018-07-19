package com.mmtap.boot.common.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @author mmtap.com
 */
@Data
public class City implements Serializable {

    String country;

    String province;

    String city;
}
