# SVG Parametric Playbook

Use this when a repository needs a visual system diagram in the `README` that must:

- render reliably on GitHub
- preserve a canonical source
- stay editable by humans and agents
- carry a visual language stronger than Mermaid or D2 alone

This is not about drawing an SVG by hand every time. This is about building a reproducible diagram
pipeline.

---

## Core Rule

Always separate the diagram into three artifacts:

1.  `config`
2.  `renderer`
3.  `output`

Recommended structure:

```text
docs/diagrams/<diagram-name>.config.mjs
scripts/render-<diagram-name>.mjs
public/images/<diagram-name>.svg
```

The `README` must display the rendered SVG. The repository must preserve the source and the
renderer.

---

## When to use this

Use this approach when:

- the diagram is part of the project narrative
- the `README` must feel authored, not generic
- Mermaid looks too schematic
- D2 is useful for thinking but insufficient for final presence
- future agents need a stable way to edit the diagram without reverse-engineering raw SVG

Do not use this when a simple Mermaid block is enough.

---

## Mental Model

The diagram source should define:

- canvas
- metadata
- theme tokens
- panels or groups
- items or nodes
- edges
- legend

The renderer should define:

- SVG helpers
- shape primitives
- text wrapping
- edge drawing
- output writing

The output should be:

- deterministic
- committed
- embeddable in the `README`

---

## Canonical Workflow

### 1. Define the reading order before coordinates

Before coding layout, answer:

- what should someone understand in 5 seconds
- what is public
- what is private
- what is proof
- what is infrastructure
- what is brand

If the narrative is weak, the SVG becomes decorative noise.

### 2. Create the parametric source

Minimal shape:

```js
export const diagramConfig = {
  canvas: {
    width: 1600,
    height: 1120,
    viewBox: '0 0 1600 1120',
  },
  meta: {
    title: 'Project | Diagram',
  },
  theme: {
    background: {},
    typography: {},
    layers: {},
    edges: {},
  },
  panels: [],
  edges: [],
  legend: {},
};
```

Rule:

- mutable content belongs in config
- rendering logic belongs in the renderer
- the `README` should never contain raw drawing logic

### 3. Create the renderer

The renderer should:

- import the config
- convert config to SVG
- expose reusable helpers such as `escapeXml`, `multilineText`, `roundedRect`, `renderPanel`,
  `renderEdge`
- write the final file into `public/images/`

Minimal shape:

```js
import { mkdir, writeFile } from 'node:fs/promises';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

import { diagramConfig } from '../docs/diagrams/example.config.mjs';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const repoRoot = path.resolve(__dirname, '..');
const outputPath = path.join(repoRoot, 'public/images/example.svg');

function renderSvg(config) {
  return `<svg xmlns="http://www.w3.org/2000/svg">...</svg>`;
}

await mkdir(path.dirname(outputPath), { recursive: true });
await writeFile(
  outputPath,
  `${renderSvg(diagramConfig)}
`,
  'utf8'
);
console.log(`Rendered ${path.relative(repoRoot, outputPath)}`);
```

### 4. Add a project command

Add a command that regenerates the SVG.

Example:

```json
{
  "scripts": {
    "render:diagram": "node scripts/render-example.mjs"
  }
}
```

If the project uses `Makefile`, mirror it:

```make
render-diagram:
 node scripts/render-example.mjs
```

### 5. Embed in the README

Use the rendered SVG in the `README`, then link to the source and renderer.

Pattern:

```md
![Diagram Title](public/images/example.svg)

Source: [`docs/diagrams/example.config.mjs`](./docs/diagrams/example.config.mjs) Renderer:
[`scripts/render-example.mjs`](./scripts/render-example.mjs)
```

The image is for readers. The links are for maintainers.

### 6. Make publication aware of it

If the repo builds or publishes static bundles:

- include the SVG in the bundle
- include any required runtime helper if the visual system depends on it
- add checks for new source files

If the repo ignores publication, future agents will ship a broken diagram.

### 7. Validate before commit

Minimum:

```bash
node --check docs/diagrams/example.config.mjs
node --check scripts/render-example.mjs
npm run render:diagram
```

If the repository has checks:

```bash
make check
npm test
```

---

## Quality Contract

The implementation is only acceptable when:

- the final SVG communicates the right story quickly
- the source is readable without opening the raw SVG
- the renderer is reusable
- the `README` shows the final asset
- source and output are both versioned

---

## Common Failure Modes

- committing only the `.svg`
- hiding business meaning inside the renderer
- mixing content, style and geometry in one unmaintainable blob
- forgetting to update the `README`
- forgetting the public bundle
- choosing Mermaid or D2 for a problem that is actually visual authorship

---

## Tool Choice

Use Mermaid or D2 when:

- structure matters more than presence
- aesthetics are secondary
- the team needs fast collaborative edits

Use parametric SVG when:

- the diagram is part of the brand surface
- the `README` needs a stronger visual language
- the project needs canonical diagram source plus rendered asset
- agents must be able to modify the system without editing raw SVG manually

---

## Agent Procedure

When entering an unknown repository:

1.  identify where docs, scripts and public assets belong
2.  create the config in `docs/diagrams/` or equivalent
3.  create the renderer in `scripts/` or equivalent
4.  generate the SVG into the public asset path
5.  add a render command
6.  embed the SVG in the `README`
7.  link the source and renderer in the `README`
8.  validate and only then commit

Adapt paths to the repository. Do not adapt the method away.

---

## Why this matters

A raw SVG file is output. A parametric diagram system is infrastructure.

The first can be admired. The second can survive contributors, agents and time.
