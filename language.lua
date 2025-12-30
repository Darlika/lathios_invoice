-- shared/language.lua
-- i18n simple: Locales + función L(key, fallback, vars)
Locales = Locales or {}

Locales['es'] = {
  -- General
  app_title = "Impuestos de Negocios",
  interact_target_label = "Pagar impuestos del negocio",
  interact_textui = "[E] Pagar impuestos del negocio",

  -- NUI
  nui_title = "Pago de Impuestos",
  nui_subtitle = "Selecciona un negocio y realiza el pago correspondiente",
  nui_business = "Negocio",
  nui_due = "Total a pagar",
  nui_debt_accumulated = "Deuda acumulada",
  nui_total = "Total",
  nui_next_due = "Próximo cobro",
  nui_tier = "Tier",
  nui_fees = "Desglose",
  nui_pay = "Pagar",
  nui_close = "Cerrar",
  nui_status_ok = "Al día",
  nui_status_due = "Con deuda",


  -- Receipt (boleta)
  receipt_title = "Boleta de pago",
  receipt_subtitle = "Comprobante del impuesto pagado",
  receipt_label_id = "Boleta",
  receipt_label_business = "Negocio",
  receipt_label_payer = "Pagó",
  receipt_label_date = "Fecha",
  receipt_label_method = "Método",
  receipt_label_total = "Total",
  receipt_label_breakdown = "Detalle",
  receipt_close = "Cerrar",

  -- Tiers
  tier_standard = "Estándar",
  tier_premium = "Premium",
  tier_vip = "VIP",

  -- Tipo de pago
  paykind_cycle = "Pago de período",
  paykind_prepay = "Pago anticipado",
  paykind_settle = "Pago completo (deuda + período)",
  paykind_debt_only = "Pago de deuda",

  -- Notifs / errores
  err_not_owner = "No eres el dueño autorizado para pagar por este negocio.",
  err_unknown_business = "Negocio inválido.",
  err_no_debt = "Este negocio está al día. No hay deuda pendiente.",
  err_insufficient_funds = "Fondos insuficientes en el banco.",
  err_cooldown = "Espera {seconds}s antes de intentar nuevamente.",
  err_no_payables_now = "Aún no hay facturas habilitadas para pagar.",
  err_unknown = "Error inesperado.",

  receipt_invalid = "Boleta inválida.",
  receipt_not_found = "No se encontró la boleta en la base de datos.",
  receipt_no_space = "No se pudo entregar la boleta (inventario lleno o item no existe).",
  receipt_missing_id = "Boleta sin ID; mostrando la última boleta encontrada.",
  ok_paid = "Pago realizado: {amount}. ¡Gracias!",
  info_due_accumulated = "El negocio {label} no pagó a tiempo. Deuda acumulada: {amount}.",

  -- Webhooks (plantillas)
  wh_reminder_title = "⏰ Recordatorio de pago",
  wh_reminder_desc = "El negocio **{label}** debe pagar impuestos.\nVence: **{due}**\nDeuda acumulada: **{debt}**\nImpuesto del período: **{cycle}**\nTotal a pagar: **{total}**",
  wh_payment_title = "✅ Pago realizado",
  wh_payment_desc = "Negocio **{label}** pagó **{amount}**.\nPagó: **{payer}**\nFecha: **{date}**\nTipo: **{kind}**\nTier: **{tier}**\nPróximo cobro: **{next_due}**\n\n**Detalle:**\n{items}",
  wh_admin_title = "💰 Pago de impuestos (Admin)",
  wh_admin_desc = "Negocio **{label}** pagó **{amount}**.\nPagó: **{payer}**\nFecha: **{date}**\nPróximo cobro: **{next_due}**",
  wh_overdue_title = "⚠️ Negocio en mora",
  wh_overdue_desc = "El negocio **{label}** no pagó al vencimiento.\nDeuda acumulada: **{amount}**\nVence: **{due}**",
}

Locales['en'] = {
  -- General
  app_title = "Business Invoices",
  interact_target_label = "Pay business taxes",
  interact_textui = "[E] Pay business taxes",

  -- NUI
  nui_title = "Tax Payment",
  nui_subtitle = "Select a business and complete the payment",
  nui_business = "Business",
  nui_due = "Total to pay",
  nui_debt_accumulated = "Accumulated debt",
  nui_total = "Total",
  nui_next_due = "Next due",
  nui_tier = "Tier",
  nui_fees = "Breakdown",
  nui_pay = "Pay",
  nui_close = "Close",
  nui_status_ok = "Up to date",
  nui_status_due = "Overdue",


  -- Receipt
  receipt_title = "Payment receipt",
  receipt_subtitle = "Proof of the tax payment",
  receipt_label_id = "Receipt",
  receipt_label_business = "Business",
  receipt_label_payer = "Payer",
  receipt_label_date = "Date",
  receipt_label_method = "Method",
  receipt_label_total = "Total",
  receipt_label_breakdown = "Breakdown",
  receipt_close = "Close",

  -- Notifs / errors
  err_not_owner = "You are not the authorized owner for this business.",
  err_unknown_business = "Invalid business.",
  err_no_debt = "This business is up to date. No outstanding balance.",
  err_insufficient_funds = "Insufficient bank funds.",
  err_cooldown = "Please wait {seconds}s before trying again.",
  err_no_payables_now = "There are no invoices available to pay yet.",
  err_unknown = "Unexpected error.",

  receipt_invalid = "Invalid receipt.",
  receipt_not_found = "Receipt not found in database.",
  receipt_no_space = "Could not give receipt (inventory full or item missing).",
  receipt_missing_id = "Receipt without ID; showing the latest receipt found.",
  ok_paid = "Payment successful: {amount}. Thank you!",
  info_due_accumulated = "Business {label} missed the due date. Accumulated debt: {amount}.",

  -- Webhooks templates
  wh_reminder_title = "⏰ Payment reminder",
  wh_reminder_desc = "Business **{label}** must pay taxes.\nDue: **{due}**\nAccumulated debt: **{debt}**\nPeriod tax: **{cycle}**\nTotal to pay: **{total}**",
  wh_payment_title = "✅ Payment completed",
  wh_payment_desc = "Business **{label}** paid **{amount}**.\nPayer: **{payer}**\nDate: **{date}**\nType: **{kind}**\nTier: **{tier}**\nNext due: **{next_due}**\n\n**Breakdown:**\n{items}",
  wh_admin_title = "💰 Tax payment (Admin)",
  wh_admin_desc = "Business **{label}** paid **{amount}**.\nPayer: **{payer}**\nDate: **{date}**\nNext due: **{next_due}**",
  wh_overdue_title = "⚠️ Business overdue",
  wh_overdue_desc = "Business **{label}** missed the due date.\nAccumulated debt: **{amount}**\nDue: **{due}**",
}

local function _interpolate(str, vars)
  if type(str) ~= "string" then return str end
  if type(vars) ~= "table" then return str end
  return (str:gsub("{(.-)}", function(k)
    local v = vars[k]
    if v == nil then return "{"..k.."}" end
    return tostring(v)
  end))
end

function L(key, fallback, vars)
  local locale = Config and Config.Locale or "en"
  local dict = Locales[locale] or Locales["en"] or {}
  local str = dict[key]
  if str == nil then
    str = fallback or key
  end
  return _interpolate(str, vars)
end
