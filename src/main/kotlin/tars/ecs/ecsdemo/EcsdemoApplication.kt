package tars.ecs.ecsdemo

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class EcsdemoApplication

fun main(args: Array<String>) {
    runApplication<EcsdemoApplication>(*args)
}
