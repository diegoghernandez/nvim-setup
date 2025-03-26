-- https://luals.github.io/wiki/settings/
local config = {
   settings = {
      Lua = {
         completion = {
            callSnippet = 'Replace',
            keywordSnippet = 'Replace',
         },
         diagnostics = {
            globals = { 'vim' }
         },
         hint = { enable = true },
         workspace = { checkThirdParty = false },
      },
   },
}

return config
