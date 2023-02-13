local manager = require "lvim.lsp.manager"

local on_attach = function(client, bufnr)
  local cap = client.resolved_capabilities
  -- Only highlight if compatible with the language
  if cap.textDocument and cap.textDocument.documentHighlight then
    vim.cmd('augroup LspHighlight')
    vim.cmd('autocmd!')
    vim.cmd('autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()')
    vim.cmd('autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()')
    vim.cmd('augroup END')
    -- vim.cmd [[autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()]]
    -- vim.cmd [[autocmd CursorHoldI <buffer> lua vim.lsp.buf.document_highlight()]]
    -- vim.cmd [[autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()]]
  end
end

local config = {
  on_attach = on_attach,
}

manager.setup("rust_analyzer", config)
