package com.digitaltolk.translation.security;

import com.digitaltolk.translation.entity.User;
import com.digitaltolk.translation.property.JwtProperties;
import lombok.RequiredArgsConstructor;
import org.springframework.security.oauth2.jwt.JwtClaimsSet;
import org.springframework.security.oauth2.jwt.JwtEncoder;
import org.springframework.security.oauth2.jwt.JwtEncoderParameters;
import org.springframework.stereotype.Service;

import java.time.Instant;

/**
 * @author Muhammad Ilyas (m.ilyas@live.com)
 */
@Service
@RequiredArgsConstructor
public class AuthService {

    private final JwtEncoder encoder;
    private final JwtProperties jwtProperties;

    public static final String KEY_USER_ID_CLAIM = "userId";

    /**
     * Generates a JWT token for the given user.
     *
     * @param user the user for whom the token is generated
     * @return the generated JWT token as a string
     */
    public String generateToken(User user) {
        JwtClaimsSet claims = buildClaims(user);
        return encoder.encode(JwtEncoderParameters.from(claims)).getTokenValue();
    }

    /**
     * Builds the JWT claims set for a custom user details object.
     *
     * @param user the custom user details object
     * @return the JWT claims set
     */
    private JwtClaimsSet buildClaims(User user) {

        JwtClaimsSet.Builder claimSet = JwtClaimsSet.builder()
                .subject(user.getName())
                .issuer("khapa.club")
                .issuedAt(Instant.now())
                .expiresAt(getExpiresAt())
                .claim(KEY_USER_ID_CLAIM, user.getId());

        return claimSet.build();
    }

    /**
     * Calculates the expiration time for the JWT token.
     *
     * @return the expiration instant
     */
    private Instant getExpiresAt() {
        return Instant.now().plusSeconds(jwtProperties.getExpiryInSeconds());
    }
}
