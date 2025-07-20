package com.digitaltolk.translation;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Import;

@Import(TestcontainersConfiguration.class)
@SpringBootTest
@Disabled("Disabled due to testcontainers MySQL reserved word issues")
class TranslationApplicationTests {

	@Test
	void contextLoads() {
	}

}
