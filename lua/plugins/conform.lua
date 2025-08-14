return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      cpp = { "clang_format" },
      c = { "clang_format" },
      python = { "black" },
    },
    formatters = {
      clang_format = {
        command = "clang-format",
        args = { "-style=LLVM" },
        stdin = true,
      },
      black = {
        command = "black",
        args = { "--quiet", "-" },
        stdin = true,
      },
    },
  },
}
