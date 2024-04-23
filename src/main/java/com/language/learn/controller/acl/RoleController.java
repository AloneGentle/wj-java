package com.language.learn.controller.acl;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.language.learn.utils.Result;
import com.language.learn.dao.Role;
import com.language.learn.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 * 前端控制器
 * </p>
 */
@RestController
@RequestMapping("/admin/acl/role")
//@CrossOrigin
public class RoleController {

    @Autowired
    private RoleService roleService;

    @GetMapping("{page}/{limit}")
    public Result index(@PathVariable Long page, @PathVariable Long limit, Role role) {
        Page<Role> pageParam = new Page<>(page, limit);
        QueryWrapper<Role> wrapper = new QueryWrapper<>();
        if (StringUtils.hasLength(role.getRoleName())) {
            wrapper.like("role_name", role.getRoleName());
        }
        roleService.page(pageParam, wrapper);
        return Result.success().data("items", pageParam.getRecords()).data("total", pageParam.getRecords().size());
    }

    @GetMapping("get/{id}")
    public Result get(@PathVariable String id) {
        Role role = roleService.getById(id);
        return Result.success().data("item", role);
    }

    @PostMapping("save")
    public Result save(@RequestBody Role role) {
        roleService.save(role);
        return Result.success();
    }

    @PutMapping("update")
    public Result updateById(@RequestBody Role role) {
        roleService.updateById(role);
        return Result.success();
    }

    @DeleteMapping("remove/{id}")
    public Result remove(@PathVariable String id) {
        roleService.removeById(id);
        return Result.success();
    }

    @DeleteMapping("batchRemove")
    public Result batchRemove(@RequestBody List<String> idList) {
        roleService.removeByIds(idList);
        return Result.success();
    }
}

