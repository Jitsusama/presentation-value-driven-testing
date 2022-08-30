import RevealNotes from "reveal.js/plugin/notes/notes.esm";

import("reveal.js").then((reveal) => {
  reveal.default({ hash: true, plugins: [RevealNotes] }).initialize();
});
