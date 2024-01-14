package io.slurm.cources.notification.service.command

import io.slurm.cources.notification.service.SubscriptionService
import org.springframework.stereotype.Service

@Service("unsubscribe")
class UnsubscribeCommand(val subscriptionService: SubscriptionService): BotCommandProcessor {
    override fun processMessage(message: String, chatId: Long): String {
        subscriptionService.unsubscribeUser(chatId)
        return "Подписка отменена"
    }
}