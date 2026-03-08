# My-Curriculum-Vitae

A website I built with Flutter to introduce myself and showcase my portfolio.

## Access

- Please [click here](https://huynguyenngocdev.github.io/) or use this link: [https://huynguyenngocdev.github.io/](https://huynguyenngocdev.github.io/).

## CI/CD

- Workflow file: `.github/workflows/workflow.yml`
- Flutter version in CI: `3.38.0`
- FVM config file: `.fvmrc` (`3.38.0`)
- Trigger:
  - `pull_request` to `main` or `master`: runs `flutter analyze`, `flutter test`, and `flutter build web`.
  - `push` to `main` or `master`: runs all steps above and deploys to GitHub Pages.
  - `workflow_dispatch`: allows manual runs from GitHub Actions.
- Deploy target: GitHub Pages using `actions/upload-pages-artifact` + `actions/deploy-pages`.

## Build locally (same as CI)

```bash
fvm use
fvm flutter pub get
fvm flutter analyze
[ -d test ] && fvm flutter test || echo "No test directory found. Skipping tests."
fvm flutter build web --release --base-href /
```

> `--base-href /` is appropriate for the user site `https://huynguyenngocdev.github.io/`.

## Run Debug

```bash
fvm use
fvm flutter pub get
fvm flutter run -d chrome
```

or

```bash
fvm use
fvm flutter pub get
fvm flutter run -d web-server
```

## Developer

- Nguyen Ngoc Huy &lt;[huynguyenngoc.dev@gmail.com](huynguyenngoc.dev@gmail.com)&gt;

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
