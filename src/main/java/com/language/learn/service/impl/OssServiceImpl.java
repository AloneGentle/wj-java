package com.language.learn.service.impl;

import com.language.learn.service.OssService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class OssServiceImpl implements OssService {
    @Override
    public String uploadOssFileAvaTar(MultipartFile file) {
        String fileName = file.getOriginalFilename();
        // TODO 这里可以上传文件到云服务的OSS
        return "";
    }
}
