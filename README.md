# Naturalize Writing

[简体中文](README.zh-CN.md) | English

An Agent Skill for revising AI-generated or overly formulaic writing into clear, natural prose without changing the author's meaning or voice.

## What it does

The skill helps an agent:

- remove generic, repetitive, or over-explained phrasing;
- adapt tone to the audience and genre;
- preserve factual claims, caveats, technical details, and the author's point of view;
- make selective edits instead of rewriting text that already works.

It does not add deliberate mistakes or promise to evade AI-detection systems. See [`SKILL.md`](SKILL.md) for the full editing principles, workflow, and output defaults.

## Use

Install with the Skills CLI (Node.js and npm/npx required):

```sh
npx skills add axetroy/naturalize-writing
```

Follow the prompts to select your agent and installation scope. Once installed, ask the agent to naturalize, humanize, or polish supplied text; if no text is included, the skill instructs it to ask for the draft. You can also install the skill manually by copying this repository into a directory recognized by your Agent Skills-compatible client.

For example:

> Make this paragraph sound more natural for a technical blog, while keeping the claims and terminology unchanged:
>
> [Paste your draft]

The skill defaults to the source language and returns the complete revised text. You can specify a target audience, tone, format, or ask for multiple versions.

## Repository contents

```text
.
├── SKILL.md          # Skill metadata and instructions
├── README.md         # English documentation
└── README.zh-CN.md   # 简体中文文档
```

No runtime dependencies or build step are required.

## License

This project is licensed under the [MIT License](LICENSE).
