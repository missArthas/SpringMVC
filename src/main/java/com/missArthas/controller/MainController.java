package com.missArthas.controller;

import com.missArthas.entity.UserEntity;
import com.missArthas.service.AuthorityService;
import com.missArthas.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.action.search.SearchType;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.search.SearchHits;

import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * Created by shhuang on 2016/12/28.
 */
@Controller
@RequestMapping("/")
public class MainController {
    @Autowired
    private UserService userService;

    @Autowired
    private AuthorityService authorityService;

    @Autowired
    private TransportClient transportClient;

    @RequestMapping()
    public String index(){
        return "corpus/index";
    }

    @RequestMapping(value = "/loginPage",method = RequestMethod.GET)
    public String loginPage(@RequestParam(value = "error", required = false) String error) {
        if (error != null) {
            return "security/login";
        }
        return "security/login";
    }

    @RequestMapping(value = "/main",method = RequestMethod.GET)
    public String main() {
        return "main/hello/index";
    }

    @RequestMapping(value = "/registePage",method = RequestMethod.GET)
    public String registePage(){
        return "security/reg";
    }

    @RequestMapping(value = "/registe",method = RequestMethod.GET)
    public String registe(){
        return "security/login";
    }

    @RequestMapping(value = "/project",method = RequestMethod.GET)
    public String manageProject(){
        return "project/index";
    }

    @RequestMapping(value = "/translate",method = RequestMethod.GET)
    public String translate(){
        return "translate/index";
    }

    @RequestMapping(value = "/corpus",method = RequestMethod.GET)
    public String corpus() throws UnknownHostException {

        Settings settings = Settings.settingsBuilder()
                .put("cluster.name", "parallel-corpus")
                .put("client.transport.sniff", true).build();

        TransportClient client = TransportClient.builder().settings(settings).build()
                .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName("localhost"), Integer.parseInt("9300")));

        SearchResponse response = client.prepareSearch("corpus")
                .setTypes("pair")
                .setQuery(QueryBuilders.termQuery("chinese", "中国"))
                .execute()
                .actionGet();
        SearchHits searchHits = response.getHits();
        System.out.println("-----------------在["+"chinese"+"]中搜索关键字["+"中国"+"]---------------------");
        System.out.println("共匹配到:"+searchHits.getTotalHits()+"条记录!");
        return "corpus/index";
    }

    @RequestMapping(value = "/search",method = RequestMethod.POST)
    public String search(Model model){
        model.addAttribute("pair", "this is the pair");
        return "corpus/index";
    }


}
