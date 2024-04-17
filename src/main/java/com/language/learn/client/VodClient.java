package com.language.learn.client;

import com.language.learn.commonutils.Result;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.service.annotation.DeleteExchange;

import java.util.List;

/**
 *
 */
@Component
public interface VodClient {
    //根据视频id删除阿里云视频
    @DeleteExchange("/eduvod/vod/removeVod/{vodId}")
    Result removeVod(@PathVariable("vodId") String vodId);

    //批量删除阿里云视频
    @DeleteExchange("/eduvod/vod/removeVodBatch")
    Result removeVodBatch(@RequestParam("vodIdList") List<String> vodIdList);
}
