# About to-clipboard

This is my first Swift project. It is a command line tool to copy piped input to the macOS clipboard.

## Building
`swift build -c release`

The binary is placed in _.build/release/_ by default.

## Usage Example
`cat example.txt | .build/release/to-clipboard`

This copies the contents of _example.txt_ to the clipboard.
