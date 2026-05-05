# CodeBurn for macOS 13

Fork of [getagentseal/codeburn](https://github.com/getagentseal/codeburn) — compiles and runs on **macOS 13 (Ventura)**.

## Difference from Original

- Original requires macOS 14+ (Swift 6)
- This version: macOS 13+ (Swift 5.7 compatible)

## Install

### CLI (any macOS)

```bash
npm install -g codeburn
```

### Menubar App (macOS 13)

```bash
git clone https://github.com/YusifKhalilov/codeburn.git
cd codeburn/mac

# Build
SDK=$(xcrun --sdk macosx --show-sdk-path)
swiftc -module-name CodeBurnMenubar -target x86_64-apple-macosx13.0 \
  -sdk "$SDK" -framework AppKit -framework SwiftUI -framework Combine \
  -disable-autolinking-runtime-compatibility-concurrency -O \
  -o CodeBurnMenubar $(find Sources -name "*.swift" | sort | tr '\n' ' ')

# Create app bundle
mkdir -p CodeBurn.app/Contents/{MacOS,Resources}
cp CodeBurnMenubar CodeBurn.app/Contents/MacOS/
cp Sources/CodeBurnMenubar/Info.plist CodeBurn.app/Contents/Info.plist
touch CodeBurn.app/Contents/Resources/.gitkeep

# Install
cp -R CodeBurn.app ~/Applications/
open ~/Applications/CodeBurn.app
```

## Original Repo

https://github.com/getagentseal/codeburn