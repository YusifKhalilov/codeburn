# CodeBurn

Fork of [getagentseal/codeburn](https://github.com/getagentseal/codeburn) — compiles and runs on **macOS 13 (Ventura)**.

## Install CLI

```bash
npm install -g codeburn
```

## Install Menubar (macOS 13)

```bash
git clone https://github.com/YusifKhalilov/codeburn.git
cd codeburn/mac

SDK=$(xcrun --sdk macosx --show-sdk-path)
swiftc -module-name CodeBurnMenubar -target x86_64-apple-macosx13.0 -sdk "$SDK" \
  -framework AppKit -framework SwiftUI -framework Combine \
  -disable-autolinking-runtime-compatibility-concurrency -O \
  -o CodeBurnMenubar $(find Sources -name "*.swift" | sort | tr '\n' ' ')

mkdir -p CodeBurn.app/Contents/{MacOS,Resources}
cp CodeBurnMenubar CodeBurn.app/Contents/MacOS/
cp Sources/CodeBurnMenubar/Info.plist CodeBurn.app/Contents/Info.plist
touch CodeBurn.app/Contents/Resources/.gitkeep

cp -R CodeBurn.app ~/Applications/
open ~/Applications/CodeBurn.app
```

## Original

https://github.com/getagentseal/codeburn