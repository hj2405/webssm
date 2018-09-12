package com.ssm.service;

import com.ssm.dao.ResourceDao;
import com.ssm.model.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("resourceService")
public class ResourceServiceImpl implements ResourceService {

    @Autowired
    private ResourceDao resourceDao;

    /**
     *  查询菜单
     */
    public List<Resource> findOneMenu() {
        List<Resource> oneMenus = resourceDao.findOneMenu(1);
        return findChildrenMenu(oneMenus);
    }

    public List<Resource> findChildrenMenu(List<Resource> parentMenus){
        if(parentMenus != null && parentMenus.size() != 0){
            for (Resource oneMenu:parentMenus ) {
                if (resourceDao.hasChildren(oneMenu.getId()) != 0){
                    List<Resource>  childMenus = resourceDao.findByParentId(oneMenu.getId());
                    oneMenu.setChildren(childMenus);
                    findChildrenMenu(childMenus);
                }
            }
        }
        return parentMenus;
    }
}
