return {
    cmd = { 'ruff', 'server' },
    filetypes = { 'python' },
    root_markers = {"pyproject.toml",".git"},
    single_file_support = true,
    settings = {},
}
