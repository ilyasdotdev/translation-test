package com.digitaltolk.translation.config;

import org.springframework.boot.context.properties.ConfigurationPropertiesScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("com.digitaltolk.translation")
@ConfigurationPropertiesScan(
        basePackages = {
                "com.digitaltolk.translation.property",
        }
)
public class Config {
}


