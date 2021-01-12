lua <<EOF
	local lspconfig = require'lspconfig'
	local configs = require'lspconfig/configs'

	configs.zls = {
		default_config = {
			cmd = {'zls'};
			filetypes = {'zig', 'zir'};
			root_dir = function(fname)
				return lspconfig.util.root_pattern("zls.json", ".git", "build.zig")(fname) or util.path.dirname(fname)
			end;
			settings = {};
		};
	}

	lspconfig.gopls.setup{}
	lspconfig.rust_analyzer.setup{}
	lspconfig.tsserver.setup{}
	lspconfig.zls.setup{}

EOF

nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
