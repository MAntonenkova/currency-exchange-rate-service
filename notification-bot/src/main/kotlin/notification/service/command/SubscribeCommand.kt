package io.slurm.cources.notification.service.command

import io.slurm.cources.notification.service.AuthService
import io.slurm.cources.notification.service.ResolveUserService
import io.slurm.cources.notification.service.SubscriptionService
import org.springframework.stereotype.Service

@Service("subscribe")
class SubscribeCommand(
    val authService: AuthService,
    val resolveUserService: ResolveUserService,
    val subscriptionService: SubscriptionService
) : BotCommandProcessor {
    override fun processMessage(message: String, chatId: Long): String {
        val (user, password) = message.split(":").let { array -> array[0] to array[1]
        }

        val token = authService.authUser(user, password)
        val userId = resolveUserService.resolveUserId(token)

        if (userId != null) {
            subscriptionService.subscribeUser(userId, chatId)
            return "Подписка оформлена"
        } else {
            return "Подписка не оформлена, пользователь $user не найден"
        }

    }
}