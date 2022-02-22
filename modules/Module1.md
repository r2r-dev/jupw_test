---
jupyter:
  jupytext:
    formats: ipynb,md
    text_representation:
      extension: .md
      format_name: markdown
      format_version: '1.3'
      jupytext_version: 1.13.5
  kernelspec:
    display_name: Bash - bash
    language: bash
    name: bash_bash
---

<!-- #region slideshow={"slide_type": "subslide", "slide_title": "Bazel Example"} tags=[] -->
# This example uses the Bash kernel
<!-- #endregion -->

<!-- #region slideshow={"slide_type": "subslide", "slide_title": "Bazel Example"} tags=[] -->
## Simple commands
<!-- #endregion -->

```bash tags=["skiprun"] slideshow={"slide_type": "fragment"}
bazel version
```

```bash slideshow={"slide_type": "fragment"} tags=["skiprun"]
pwd
```

```bash slideshow={"slide_type": "fragment"} tags=["skiprun"]
date
```

<!-- #region slideshow={"slide_type": "subslide", "slide_title": "Bazel Example"} tags=[] -->
## Bash script
<!-- #endregion -->

```bash slideshow={"slide_type": "fragment"} tags=["skiprun"]
for number in $(seq 1 2 10)
do
    echo ${number}
done
```
