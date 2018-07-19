package com.mmtap.boot.common.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @author mmtap.com
 */
@Data
public class SearchVo implements Serializable {

    private String startDate;

    private String endDate;
}
