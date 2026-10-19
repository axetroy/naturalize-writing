# Naturalize Writing

简体中文 | [English](README.md)

一个 Agent Skill，用于润色 AI 生成或过于公式化的文字，让表达更自然，同时保留作者原意、语气和事实细节。

## 功能

此 Skill 帮助 Agent：

- 删除空泛、重复或解释过度的表达；
- 根据受众和文体调整语气；
- 保留事实主张、限定条件、技术细节和作者观点；
- 只修改确实需要调整的内容，不为了改写而改写。

它不会故意添加错误，也不承诺帮助文本绕过 AI 检测。完整的编辑原则、工作流程和输出规范请参阅 [`SKILL.md`](SKILL.md)。

## 使用方法

使用 Skills CLI 安装（需要 Node.js 和 npm/npx）：

```sh
npx skills add axetroy/naturalize-writing
```

根据提示选择要使用的 Agent 和安装范围。安装完成后，要求 Agent 自然化、润色或改写你提供的文字；如果没有提供原文，Skill 会提示你粘贴文本。你也可以手动将本仓库复制到 Agent Skills 兼容客户端识别的目录中。

使用 Skills CLI 卸载此 Skill：

```sh
npx skills remove naturalize-writing
```

根据提示选择 Agent 和安装范围。

例如：

> 请把下面这段文字改得更适合技术博客，表达自然一些，但不要改变事实主张和术语：
>
> [粘贴草稿]

默认情况下，输出语言与原文一致，并返回完整的修订稿。你也可以指定目标读者、语气、格式，或要求提供多个版本。

## 仓库内容

```text
.
├── SKILL.md          # Skill 元数据和使用说明
├── README.md         # 英文文档
└── README.zh-CN.md   # 简体中文文档
```

本项目无需运行时依赖或构建步骤。

## 许可证

本项目采用 [MIT 许可证](LICENSE)。
