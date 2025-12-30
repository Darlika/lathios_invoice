-- shared/business.lua
Config = Config or {}

-- Catálogo de cobros (solo metadatos: label, orden, etc.)
-- El usuario puede agregar nuevos aquí sin tocar el core.
Config.FeeCatalog = {
  commercial = { label = "Permiso Comercial" },
  alcohol    = { label = "Permiso de Alcohol" },
  sanitary   = { label = "Licencia Sanitaria" },
  music      = { label = "Licencia de Música" },
  water      = { label = "Agua" },
  power      = { label = "Electricidad" },
  internet   = { label = "Internet" },
  garbage    = { label = "Basura" },
  sidewalk   = { label = "Acera" },    
  terrace    = { label = "Terraza / Mesas" },
  fire       = { label = "Control de Incendios" },
  Employed   = { label = "Seguro Trabajadores" },
  
}

-- Tipos de negocio: define qué cobros aplican y sus montos base.
Config.Types = {
  cafe = {
    fees = {
      commercial = 5000,
      water      = 1000,
      power      = 2000,
      internet   = 800,
      garbage    = 600,
      terrace    = 1200,
      sanitary   = 1500,
    },
  },

  bar = {
    fees = {
      commercial = 7000,
      alcohol    = 2500,
      water      = 1200,
      power      = 2500,
      internet   = 800,
      garbage    = 800,
      fire       = 2000,
      music      = 1500,
    },
  },
}

-- Negocios del servidor: el usuario va agregando aquí cada tienda/negocio.
Config.Businesses = {
  uwucafe = { -- tipo de business
    label = "UwU Café",
    type = "cafe",

    owner = {
      name = "Darli Test",
      identifiers = { "license:2e7352615422037433698bf8136e3fca09a82880" },
    },

    webhooks = {
      reminder = "https://discord.com/api/webhooks/1455203947898736732/fAwec4dtKP3pqfX7cPHbsuxOX3HUqFwzUfXVeOVvQ85QU6SI75E-zYyG8byMQBxYgzQX",
      payment  = "https://discord.com/api/webhooks/1455203947898736732/fAwec4dtKP3pqfX7cPHbsuxOX3HUqFwzUfXVeOVvQ85QU6SI75E-zYyG8byMQBxYgzQX",
    },

    billing = { mode = "weekday", day = "monday", hour = 12, minute = 0 },

    tier = "standard", -- standard | premium | vip

    -- feeOverrides = { power = 3000 },

    paymentAccount = "bank", -- bank | cash (futuro: society)
  },
}
