## Common Node Libraries

- Use [verdaccio](/home/em/repos/delivery-system/podman-compose.yaml) for sharing locally
- [UI Design System](/home/em/repos/delivery-system/home-design-system)
- [Bun Common](/home/em/repos/delivery-system/bun-libs)

## Prefer tokensave MCP tools

Before reading source files or scanning the codebase, use the tokensave MCP tools (`tokensave_context`, `tokensave_search`, `tokensave_callers`, `tokensave_callees`, `tokensave_impact`, `tokensave_node`, `tokensave_files`, `tokensave_affected`). They provide instant semantic results from a pre-built knowledge graph and are faster than file reads.

If a code analysis question cannot be fully answered by tokensave MCP tools, try querying the SQLite database directly at `.tokensave/tokensave.db` (tables: `nodes`, `edges`, `files`). Use SQL to answer complex structural queries that go beyond what the built-in tools expose.

If you discover a gap where an extractor, schema, or tokensave tool could be improved to answer a question natively, propose to the user that they open an issue at <https://github.com/aovestdipaperino/tokensave> describing the limitation. **Remind the user to strip any sensitive or proprietary code from the bug description before submitting.**

## Serena MCP server

Use serena tools for comprehensive code analysis and navigation. Serena provides deep code understanding through language server protocol integration.

- `serena` tools are available when the MCP server is connected.
- Use serena for symbol search, code navigation, and project-wide analysis.
- If serena is not responding, ask the user to run `serena init` to initialize or reinitialize the project.

## jCodemunch MCP server

Always use jCodemunch MCP tools — never fall back to Read, Grep, Glob, or Bash for code exploration.

- Before reading a file: use `get_file_outline` or `get_file_content`
- Before searching: use `search_symbols` or `search_text`
- Before exploring structure: use `get_file_tree` or `get_repo_outline`
- Call `resolve_repo` with the current directory first; if not indexed, call `index_folder`.

## jDocMunch MCP server

Use jDocMunch tools for documentation exploration and retrieval.

- Before reading a doc file: use `search_sections` or `get_toc`
- To retrieve specific content: use `get_section`
- Index local documentation with `index_local`
- Use `get_doc_coverage` to find which jcodemunch symbols have matching doc sections

## Agent routing: @explorer and @writer

This workspace has two specialized subagents for code navigation and writing:

- **`@explorer`** — read-only code exploration using jcodemunch, tokensave, serena, and jdocmunch. Delegate ALL code navigation, symbol search, impact analysis, and documentation lookups to `@explorer`. It never modifies files.

- **`@writer`** — code implementation and modification. Always explores first using jcodemunch, tokensave, serena, and jdocmunch, then writes. Delegate ALL file creation, editing, and refactoring to `@writer`.

### When to delegate

- **Need to find or understand code?** → Delegate to `@explorer`
- **Need to search symbols, trace call chains, check blast radius?** → Delegate to `@explorer`
- **Need to read documentation?** → Delegate to `@explorer`
- **Need to create, edit, or refactor code?** → Delegate to `@writer`
- **Need to explore first, then write?** → Delegate to `@explorer` first, then `@writer`

### When NOT to delegate

- Simple file reads you've already identified as relevant to an edit — use `Read` directly
- Git operations, shell commands, or project setup — handle directly
- Task is already scoped to a single known file and change — use `@writer` directly

If you are the `build`, `plan`, `general`, or `scout` agent, ALWAYS route exploration to `@explorer` and implementation to `@writer`. Do NOT use their tool sets yourself.
