Output demos/demo.gif
Set Shell "bash"
Set FontSize 20
Set Width 1280
Set Height 720
Set Theme "Catppuccin Mocha"
Set TypingSpeed 50ms

Hide
Type "source demos/vhs/sanitize-recording-env.sh" Enter
Sleep 400ms
Show

Type "# ChainForge - smart contracts and audits" Enter
Sleep 600ms

Hide
Type "source demos/vhs/sanitize-recording-env.sh" Enter
Sleep 300ms
Type "python3 scripts/validate_profile.py ." Enter
Sleep 5s
Type "head -16 SOUL.md" Enter
Sleep 5s
Type "ls skills | head -10" Enter
Sleep 4s
Show

Type "hermes profile install github.com/codegraphtheory/chainforge --name chainforge --yes" Enter
Sleep 4s
Type "# Security-first profile - validate before you ship" Enter
Sleep 3s