package tars.ecs.ecsdemo

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class HealthController {
    @GetMapping("/")
    fun default() = "healthy"
    @GetMapping("/healthy")
    fun healthy() = "healthy"
    @GetMapping("/hello")
    fun hello() = "healthy"
}