package com.mmtap.boot.service;


import com.mmtap.boot.base.XbootBaseService;
import com.mmtap.boot.common.vo.SearchVo;
import com.mmtap.boot.entity.Log;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * 日志接口
 * @author mmtap.com
 */
public interface LogService extends XbootBaseService<Log,String> {

    /**
     * 日志搜索
     * @param key
     * @param searchVo
     * @param pageable
     * @return
     */
    Page<Log> searchLog(String key, SearchVo searchVo, Pageable pageable);

    /**
     * 删除所有
     */
    void deleteAll();
}
