
RuleSet: NotUsed(path)
* {path} 0..0
* {path} ^short = "Not used in this profile"
* {path} ^definition = "Not used in this profile"

RuleSet: ShortAndDefinition(path, short, definition)
* {path} ^short = "{short}"
* {path} ^definition = "{definition}"

RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"