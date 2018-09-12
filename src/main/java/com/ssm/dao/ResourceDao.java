package com.ssm.dao;

import com.ssm.model.Resource;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ResourceDao {

    List<Resource> findOneMenu(Integer level);

    List<Resource> findByParentId(Integer pId);

    int hasChildren(Integer pId);
}
