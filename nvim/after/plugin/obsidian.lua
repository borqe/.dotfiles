require("obsidian").setup({

    -- Required
    dir = "~/code/notebook",

    -- Optional, key mappings.
    mappings = {
        -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
        ["gd"] = require("obsidian.mapping").gf_passthrough(),
    },

})

