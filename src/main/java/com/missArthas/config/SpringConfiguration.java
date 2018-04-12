package com.missArthas.config;

import java.util.LinkedHashSet;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;


/**
 * @author kevin
 *
 */
@Configuration
@ComponentScan(basePackages = {"com.missArthas.config"},
        excludeFilters = {@ComponentScan.Filter(type= FilterType.ANNOTATION,value = Controller.class)})
@EnableTransactionManagement
public class SpringConfiguration {


    //bean的id为transportClient
    @Bean
    public TransportClientFactory transportClient(){
        TransportClientFactory transportClientFactory=new TransportClientFactory();
        transportClientFactory.setClusterName("parallel-corpus");
        transportClientFactory.setHost("localhost");
        transportClientFactory.setPort(9300);
        return transportClientFactory;
    }
}
