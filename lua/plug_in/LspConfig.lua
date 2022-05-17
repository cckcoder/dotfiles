local on_attach = function(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end
	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end

	-- Mappings
	local opts = { noremap = true, silent = true }
	buf_set_keymap("n", "<c-]>", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
	buf_set_keymap("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
	buf_set_keymap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
	buf_set_keymap("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
	buf_set_keymap("n", "<leader>lt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
	buf_set_keymap("n", "<leader>lrn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	buf_set_keymap("n", "<leader>lrf", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	buf_set_keymap("n", "<leader>lca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)

	-- Set autocommands conditional on server_capabilities
	vim.api.nvim_exec(
		[[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
    ]],
		false
	)
end

local nvim_lsp = require("lspconfig")
local coq = require("coq")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local servers = {
	"pyright",
	"html",
	"tsserver",
	"intelephense",
	"bashls",
	"cssls",
	"ccls",
	"jsonls",
	"vimls",
	"jedi_language_server",
	"vuels",
	"jdtls",
}

for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup(coq.lsp_ensure_capabilities(vim.tbl_deep_extend("force", {
		on_attach = on_attach,
		capabilities = capabilities,
		flags = { debounce_text_changes = 500 },
		init_options = config,
	}, {})))

	local cfg = nvim_lsp[lsp]
	if not (cfg and cfg.cmd and vim.fn.executable(cfg.cmd[1]) == 1) then
		print(lsp .. ": cmd not found: " .. vim.inspect(cfg.cmd))
	end
end
