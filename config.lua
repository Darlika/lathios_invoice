Config = Config or {}

Config.Framework = 'auto' -- 'auto' | 'newesx' | 'esx' | 'qb'
Config.Debug = true
Config.Locale = 'es' -- 'en' | 'es'
Config.Webhooks = true -- true activa webhooks / false desactiva
Config.AdminWebhook = "https://discord.com/api/webhooks/1455203668025413642/IAty-_AFwIprY6mP6Y0jDOyyPsxCmfkvT0_YUalyOpkyQ4TgmkQiYN6F72xLC3TZ0HaK" -- webhook general (solo pagos hacia administración)
Config.Bank = 'framework' -- 'framework' | 'okokbanking' | 'wasabi_bank' | 'qb-banking' | 'esx_addonaccount'
Config.Inventory = 'origen_inventory' -- 'ox_inventory' | 'qb' | 'origen_inventory' | 'qs-inventory'
Config.TierMultipliers = { standard = 1.00, premium = 1.20, vip = 1.35 }
Config.Target = false -- enable this if you want use target
Config.Targettype = "oxtarget" -- types - qtarget, qbtarget, oxtarget
Config.TargetIcons = {managmenticon = "fa-solid fa-bars-progress", ticketicon = "fa-solid fa-cart-shopping", buyicon = "fa-solid fa-cart-shopping", seaticon = "fa-solid fa-chair", controlicon = "fa-solid fa-bars-progress"} 
Config.TestMode = true -- true para pruebas, false para producción
Config.Test = {
  ResetStateOnStart = true,  -- Si true: al iniciar el recurso en TestMode, resetea estado (balance/flags) y fuerza próximo vencimiento rápido
  ForceDueInSeconds = 30,  -- Forzar "próximo vencimiento" en N segundos (solo para TestMode)
  ReminderSecondsBefore = 20,  -- Ventana del recordatorio en segundos antes del vencimiento (solo TestMode)
  SchedulerTickSeconds = 2,  -- Tick rápido del scheduler en TestMode
  DisableMoneyRemoval = false,  -- Si true: no descuenta dinero (solo simula pago)
  DryRunWebhooks = false,  -- Si true: no envía webhook, solo imprime payload
  PrintWebhookPayload = true,  -- Si true: imprime el payload (útil con DryRunWebhooks)
}

Config.Scheduler = {  -- Scheduler (servidor): cada cuánto revisa vencimientos / recordatorios
  TickSeconds = 60,                 -- revisar cada 60s
  ReminderEnabled = true,
  ReminderMinutesBefore = 48 * 60,  -- 48h antes del vencimiento
  OverdueNotifyEnabled = true,      -- aviso staff si un negocio entra en mora
}

Config.NPC = {
  enabled = true,
  model = "s_m_m_highsec_01",
  coords = vector4(247.37, 210.01, 106.29, 356.33), -- ejemplo, cambia aquí
  scenario = "WORLD_HUMAN_CLIPBOARD",
  invincible = true,
  frozen = true,
  blockEvents = true,
}

Config.Blip = {
  enabled = true,
  label = "Administración - Impuestos",
  sprite = 525,
  scale = 0.8,
  color = 3,
}

Config.Security = {
  OwnerOnlyCanPay = true,
  AntiSpamSeconds = 2,
}
