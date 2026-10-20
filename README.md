# Naturalize Writing

[简体中文](README.zh-CN.md) | English

An Agent Skill for revising AI-generated or overly formulaic writing into clear, natural prose without changing the author's meaning or voice.

## What it does

The skill helps an agent:

- remove generic, repetitive, or over-explained phrasing;
- adapt tone to the audience and genre;
- preserve factual claims, caveats, technical details, and the author's point of view;
- make selective edits instead of rewriting text that already works.

It does not add deliberate mistakes or promise to evade AI-detection systems. See [`SKILL.md`](.agents/skills/naturalize-writing/SKILL.md) for the full editing principles, workflow, and output defaults.

## Install

Install with the Skills CLI (Node.js and npm/npx required):

```sh
npx skills add axetroy/naturalize-writing --skill naturalize-writing
```

Follow the prompts to select your agent and installation scope. Once installed, ask the selected agent to naturalize, humanize, or polish supplied text; if no text is included, the skill instructs it to ask for the draft.

To install manually, copy `.agents/skills/naturalize-writing` into a skills directory recognized by your client. Keep the `naturalize-writing` folder and its `SKILL.md` file together.

## Uninstall

To remove a CLI installation, run:

```sh
npx skills remove naturalize-writing
```

Follow the prompts to select the agent and installation scope where the skill was installed.

To remove a manual installation, delete the `naturalize-writing` folder from the skills directory where you copied it.

## Use

For example:

> Make this paragraph sound more natural for a technical blog, while keeping the claims and terminology unchanged:
>
> [Paste your draft]

The skill defaults to the source language and returns the complete revised text. You can specify a target audience, tone, format, or ask for multiple versions.

## Key files

```text
.
├── .agents/skills/naturalize-writing/SKILL.md
├── LICENSE
├── README.md
└── README.zh-CN.md
```

No runtime dependencies or build step are required.

## License

This project is licensed under the [MIT License](LICENSE).
