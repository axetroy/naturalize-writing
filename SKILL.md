---
name: naturalize-writing
description: Use when the user explicitly asks to make text sound more natural or human, remove formulaic AI-style phrasing, or polish it for an authentic voice while preserving meaning. Do not use for ordinary drafting, proofreading, or editing unless naturalness or voice is a stated goal.
---

# Naturalize Writing

## Purpose

Edit text that feels generic, mechanical, over-polished, repetitive, or formulaic. Make it read like a person who understands the subject and has a reason to say it—not like a template.

The goal is **natural, context-appropriate writing**, not the deliberate simulation of mistakes or a guarantee that text will evade AI detectors.

## When to use

Use this skill when the user asks to:
- make AI-generated text sound more natural or human;
- remove generic AI writing habits;
- polish a draft without changing its meaning;
- adapt the voice to a blog, technical article, social post, message, or professional document;
- preserve a writer's voice while reducing formulaic language.

If the user provides text and asks for a rewrite, proceed directly. If no text is provided, ask them to paste it. Ask a clarifying question only when a missing detail would materially affect the result, such as an unclear target audience or a highly specific voice requirement.

## Core principles

### 1. Preserve meaning and evidence
- Keep the original claims, intent, key details, technical terminology, and level of certainty.
- Do not invent facts, statistics, examples, personal experiences, anecdotes, emotions, or opinions.
- Do not silently change a cautious claim into a confident one, or a personal opinion into an objective fact.
- Preserve code, identifiers, quotations, names, URLs, and other exact strings unless the user explicitly asks to edit them.
- If the original contains an apparent factual error, ambiguity, or contradiction, do not silently “fix” it by guessing. Preserve it or briefly flag it when necessary.

### 2. Remove formulaic AI habits where they actually occur
Look for patterns such as:
- stock openings and conclusions that add no information;
- predictable transitions such as “firstly, secondly, finally” when they are unnecessary;
- repeated “not only … but also …” constructions and other overused rhetorical templates;
- empty scene-setting, inflated claims, generic summaries, and “profound” conclusions unsupported by the content;
- repetitive restatements of the same idea;
- excessive signposting, hedging, or explanations of obvious points;
- uniform paragraph structure and sentences that all have similar length and rhythm.

These are diagnostic cues, not a blacklist. Keep any phrase that is genuinely useful or appropriate to the context.

### 3. Prefer direct, specific language
- Say what the text means with the fewest words needed to communicate it well.
- Replace vague abstractions with concrete wording only when the source supports that specificity.
- Remove filler and redundant explanation.
- Prefer verbs that express the actual action over strings of abstract nouns.
- Do not add metaphors, slogans, punchlines, or “golden sentences” merely to make the prose sound polished.

### 4. Restore natural rhythm without manufacturing flaws
- Vary sentence length and paragraph size where it improves readability.
- Let short sentences stand when they work. Longer sentences are fine when the thought genuinely needs them.
- Use contractions, colloquial wording, fragments, or conversational turns only when they fit the language, audience, and genre.
- Do not deliberately add typos, grammatical errors, awkward repetitions, filler words, slang, or fake spontaneity.
- Do not make professional or technical writing casual just for the sake of sounding human.

### 5. Preserve the author's voice
- Retain distinctive wording, emphasis, humor, directness, and point of view when they work.
- Avoid rewriting every sentence just because it could be phrased differently.
- Make the smallest effective set of changes.
- Do not flatten the text into generic “editorial polish.”
- Do not force neutrality or artificial balance when the author clearly expresses a supported opinion.

### 6. Match the genre and audience
Use the source and user instructions to infer the appropriate register. Adapt as follows:

- Check for literal translations, unnatural collocations, or phrasing that does not fit the language variety or context.
- Adjust these only when the intended meaning and register are clear. Do not force slang, dialect, or idioms just to make the text sound native.
- **Technical writing:** prioritize precision, reproducibility, terminology, and clear trade-offs. Avoid grand claims and vague explanations.
- **Personal blog or opinion:** preserve individual perspective, natural shifts in emphasis, and a recognizable voice. Do not force a moral or summary at the end.
- **Everyday messages and social posts:** be concise and conversational without overdoing slang or internet memes.
- **Professional documents:** stay clear, measured, and appropriately formal; natural does not mean casual.
- **Marketing copy:** retain the intended persuasive purpose while removing empty hype and generic claims.
- **Academic writing:** preserve rigor, qualifications, citations, and discipline-specific conventions. Do not disguise copied work or fabricate sources.

### 7. Keep structure only when it helps
- Do not turn prose into bullet points unless the content or user asks for it.
- Do not impose a fixed “claim → explanation → example → conclusion” pattern on every paragraph.
- Keep headings, lists, tables, and summaries when they help navigation or are required by the format.
- Remove unnecessary headings and conclusions, but do not dismantle a structure that serves a real purpose.
- Preserve Markdown formatting and document structure unless asked otherwise.

## Workflow

1. **Identify the task and context.** Infer the text's language, purpose, audience, genre, tone, and any explicit constraints.
2. **Diagnose before editing.** Locate only the parts that feel repetitive, generic, over-explained, overly symmetrical, or mismatched to the context.
3. **Edit selectively.** Rewrite those parts while preserving useful original phrasing and information.
4. **Check fidelity.** Verify that the result has not gained unsupported facts, lost essential caveats, altered the author's stance, or damaged technical details.
5. **Read for naturalness.** Check rhythm, transitions, specificity, and whether each sentence earns its place. Avoid polishing the text into uniform perfection.
6. **Return the result in the requested format.** If the user asks for the revised text only, output only that text. Otherwise, a brief note about substantial editorial choices is acceptable.

## Output defaults

- Default to the same language as the source text.
- When the user supplies a draft and asks for naturalization, return the complete revised text, not a list of edits.
- Do not add a preamble such as “Here is the revised version” when the user wants a copy-ready result or has asked for output only.
- Do not explain the process unless asked.
- If the user asks for multiple versions or a specific style, provide those versions and label them clearly.
- If the original is already natural, make minimal changes rather than rewriting it for the sake of activity.

## Final quality checklist

Before responding, confirm:

- [ ] Meaning, facts, intent, and important caveats are preserved.
- [ ] No new facts, examples, or personal experiences were invented.
- [ ] Formulaic wording and redundant sentences were removed only where appropriate.
- [ ] Sentence rhythm and paragraph structure fit the genre.
- [ ] The author's voice has not been replaced with generic polish.
- [ ] Technical terms, code, quotations, links, and formatting remain intact.
- [ ] The result sounds natural without deliberate errors or forced informality.

## User input

The user may provide text directly or describe the intended audience, tone, and format. Treat those instructions as constraints. If they provide only text and ask to make it more natural, use the defaults above.
