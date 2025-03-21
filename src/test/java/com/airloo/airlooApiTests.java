package com.airloo;

import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.AfterEach;

public class airlooApiTests {

    @Karate.Test
    Karate testAuthentication() {
        return Karate.run("auth").relativeTo(getClass());
    }

    @Karate.Test
    Karate testNewOrder() {
        return Karate.run("airlooPartnersNewOrder").relativeTo(getClass());
    }

    @AfterEach
    void resetToken() {
        System.setProperty("karate.token", ""); // Reset token after each test
        System.out.println("Token has been reset.");
    }

}
