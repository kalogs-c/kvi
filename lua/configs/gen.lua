local prompts = require("gen").prompts

prompts["Generate_Code"] = {
  prompt = "You are a senior software engineer. $input using $filetype",
  replace = true,
  extract = "```$filetype\n(.-)```",
}

prompts["Fix_Code"] = {
  prompt = "Fix the following code. Only ouput the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
  replace = true,
  extract = "```$filetype\n(.-)```",
}

prompts["Refactor_Code"] = {
  prompt = "Refactor the following code. Only ouput the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
  replace = true,
  extract = "```$filetype\n(.-)```",
}

prompts["Elaborate_Text"] = {
  prompt = "Elaborate the following text:\n$text",
  replace = true,
}
