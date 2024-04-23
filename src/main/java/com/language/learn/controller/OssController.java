package com.language.learn.controller;

import com.language.learn.utils.Result;
import com.language.learn.service.OssService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 */
@RestController
@RequestMapping("/eduoss/file")
public class OssController {

    @Autowired
    private OssService ossService;

    @PostMapping
    public Result uploadOssFileAvaTar(MultipartFile file) {
        String url = ossService.uploadOssFileAvaTar(file);
        return Result.success().data("url", url);
    }

    @PostMapping("articleImg")
    public Result uploadarticleImg(@RequestParam("img") MultipartFile file) {
        String url = ossService.uploadOssFileAvaTar(file);
        return Result.success().data("url", url);
    }
}
