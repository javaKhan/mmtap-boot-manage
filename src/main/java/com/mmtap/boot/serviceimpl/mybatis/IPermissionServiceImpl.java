package com.mmtap.boot.serviceimpl.mybatis;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.mmtap.boot.dao.mapper.PermissionMapper;
import com.mmtap.boot.entity.Permission;
import com.mmtap.boot.service.mybatis.IPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author mmtap.com
 */
@Service
public class IPermissionServiceImpl extends ServiceImpl<PermissionMapper, Permission> implements IPermissionService {

    @Autowired
    private PermissionMapper permissionMapper; ;

    @Override
    public List<Permission> findByUserId(String userId) {

        return permissionMapper.findByUserId(userId);
    }

    @Override
    public List<Permission> findByRoleId(String roleId) {

        return permissionMapper.findByRoleId(roleId);
    }
}
