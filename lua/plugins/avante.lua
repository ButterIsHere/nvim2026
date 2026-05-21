require('avante').setup({
  provider = "gemini",
  providers = {
    gemini = {
      -- Use 'v1' instead of 'v1beta' to avoid experimental field conflicts
      endpoint = "https://generativelanguage.googleapis.com/v1/models",
      model = "gemini-1.5-flash", 
      timeout = 30000,
      temperature = 0,
      max_tokens = 4096,
    },
  },
})
