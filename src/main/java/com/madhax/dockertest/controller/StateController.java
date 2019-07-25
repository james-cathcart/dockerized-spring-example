package com.madhax.dockertest.controller;

import com.madhax.dockertest.constants.StateConstants;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class StateController {

    @GetMapping(StateConstants.HEALTH_CHECK_URL)
    public String healthCheck() {
        return "Service is up!";
    }

}
