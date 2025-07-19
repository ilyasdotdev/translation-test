package com.digitaltolk.translation.property;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

import java.time.Duration;
import java.time.temporal.ChronoUnit;

@ConfigurationProperties(prefix = "jwt")
@Data
public class JwtProperties {

    private ChronoUnit expiryUnit;
    private Integer expiry;

    /**
     * Calculates the expiration time in seconds based on the defined expiry value and unit.
     *
     * @return the expiration time in seconds as a Long.
     */
    public Long getExpiryInSeconds() {
        return Duration.of(expiry, expiryUnit).getSeconds();
    }
}
