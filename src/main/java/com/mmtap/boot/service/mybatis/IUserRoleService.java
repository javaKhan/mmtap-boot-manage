package com.mmtap.boot.service.mybatis;

import com.baomidou.mybatisplus.service.IService;
import com.mmtap.boot.entity.Role;
import com.mmtap.boot.entity.UserRole;
import org.apache.ibatis.annotations.Param;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;

import java.util.List;

/**
 * @author mmtap.com
 */
@CacheConfig(cacheNames = "userRole")
public interface IUserRoleService extends IService<UserRole> {

    /**
     * 通过用户id获取
     * @param userId
     * @return
     */
    @Cacheable(key = "#userId")
    List<Role> findByUserId(@Param("userId") String userId);
}
