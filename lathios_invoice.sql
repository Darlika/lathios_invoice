-- Lathios_Business_Invoices
-- File: sql/lathios_invoice.sql
-- Compatible: MySQL 5.7+ / MariaDB (oxmysql)

CREATE TABLE IF NOT EXISTS lbi_business_state (
  business_id VARCHAR(64) NOT NULL,

  -- Próximo vencimiento (unix timestamp en segundos)
  next_due_at INT UNSIGNED NOT NULL,

  -- Deuda acumulada (en “dinero del server”, mismo formato que config: 5000, 2500, etc.)
  balance BIGINT NOT NULL DEFAULT 0,

  -- Último pago (auditoría rápida)
  last_paid_at INT UNSIGNED NULL,
  last_paid_by VARCHAR(64) NULL,
  last_paid_by_name VARCHAR(128) NULL,
  last_paid_method VARCHAR(16) NULL,

  -- Anti-spam: marcar para qué vencimiento ya se envió recordatorio/aviso de morosidad
  reminder_sent_for_due_at INT UNSIGNED NULL,
  overdue_notified_for_due_at INT UNSIGNED NULL,

  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

  PRIMARY KEY (business_id),
  INDEX idx_next_due_at (next_due_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS lbi_payments (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,

  business_id VARCHAR(64) NOT NULL,

  amount BIGINT NOT NULL,
  balance_before BIGINT NOT NULL,
  balance_after BIGINT NOT NULL,

  paid_at INT UNSIGNED NOT NULL,
  payer_identifier VARCHAR(64) NOT NULL,
  payer_name VARCHAR(128) NOT NULL,
  method VARCHAR(16) NOT NULL,

  -- Campo libre (puedes guardar JSON string con desglose, tier, fees, etc.)
  meta LONGTEXT NULL,

  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY (id),
  INDEX idx_business_id (business_id),
  INDEX idx_paid_at (paid_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
