local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local config = {
    cmd = {'jdt-language-server', '-data', '/home/luna/.cache/jdtls/workspace/' .. project_name},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
