return {
  "yacineMTB/dingllm.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local llm = require("dingllm")
    local system_prompt = "You should replace the code you are sent, only following the comments. Do not talk at all. Only output valid code. Do not provide any backticks that surround the code. Never ever output backticks like this ```. Any comment that is asking you for something should be removed after you satisfy them. Other comments should be left alone. No backticks"
    local helpful_prompt = "You are a helpful assistant. What I have sent are my notes so far. You are very curt and concise, yet invaluably helpful."

    local function openai_replace()
      llm.invoke_llm_and_stream_into_editor({
        url = 'https://api.openai.com/v1/chat/completions',
        model = 'gpt-3.5-turbo',
        api_key_name = 'OPENAI_API_KEY',
        system_prompt = system_prompt,
        replace = true,
      }, llm.make_openai_spec_curl_args, llm.handle_openai_spec_data)
    end

    local function openai_help()
      llm.invoke_llm_and_stream_into_editor({
        url = 'https://api.openai.com/v1/chat/completions',
        model = 'gpt-3.5-turbo',
        api_key_name = 'OPENAI_API_KEY',
        system_prompt = helpful_prompt,
        replace = false,
      }, llm.make_openai_spec_curl_args, llm.handle_openai_spec_data)
    end

    local function anthropic_help()
      llm.invoke_llm_and_stream_into_editor({
        url = 'https://api.anthropic.com/v1/messages',
        model = 'claude-3-5-sonnet-20240620',
        api_key_name = 'ANTHROPIC_API_KEY',
        system_prompt = helpful_prompt,
        replace = false,
      }, llm.make_anthropic_spec_curl_args, llm.handle_anthropic_spec_data)
    end

    local function anthropic_replace()
      llm.invoke_llm_and_stream_into_editor({
        url = 'https://api.anthropic.com/v1/messages',
        model = 'claude-3-5-sonnet-20240620',
        api_key_name = 'ANTHROPIC_API_KEY',
        system_prompt = system_prompt,
        replace = true,
      }, llm.make_anthropic_spec_curl_args, llm.handle_anthropic_spec_data)
    end

    vim.keymap.set({"n", "v"}, "<leader>la", anthropic_replace, { desc = "anthropic llm replace" })
    vim.keymap.set({"n", "v"}, "<leader>La", anthropic_help, { desc = "anthropic llm help" })
    vim.keymap.set({"n", "v"}, "<leader>lo", openai_replace, { desc = "openai llm replace" })
    vim.keymap.set({"n", "v"}, "<leader>Lo", openai_help, { desc = "openai llm help" })
  end,
}
