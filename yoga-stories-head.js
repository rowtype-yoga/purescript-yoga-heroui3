import "./heroui-styles.css"

// HeroUI v3 themes via a `dark` class on an ancestor. Overlays (popover,
// modal, dropdown) portal to <body>, outside any per-story wrapper, so set
// the class on the document root to keep portaled content on-theme.
document.documentElement.classList.add("dark")
