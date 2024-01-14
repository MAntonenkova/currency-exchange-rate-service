package io.slurm.cources.notification.model

import java.math.BigDecimal
import java.util.*

data class AccountEvent(val uuid: String,
                        val accountId: Long,
                        val userId: Long,
                        val fromAccount: Long?,
                        val currency: String,
                        val operation: Operation,
                        val amount: BigDecimal,
                        val created: Date
)