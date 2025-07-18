return {
  'smoka7/hop.nvim',
  config = function()
    require('hop').setup {
      version = '*',
      opts = {
        keys = 'etovxqpdygfblzhckisuran',
      },
    }

    local directions = require('hop.hint').HintDirection

    vim.keymap.set('n', '<leader>sj', function()
      require('hop').hint_patterns { direction = directions.AFTER_CURSOR, current_line_only = false }
    end, { desc = '[J]ump to pattern after cursor' })

    vim.keymap.set('n', '<leader>sJ', function()
      require('hop').hint_patterns { direction = directions.BEFORE_CURSOR, current_line_only = false }
    end, { desc = '[J]ump to pattern before cursor' })
  end,
}
