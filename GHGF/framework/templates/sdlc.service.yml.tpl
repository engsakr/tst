service:
  name: {{service.name}}
  type: {{service.type}}
  language: {{service.language}}
  framework: {{service.framework}}

project:
  key: {{project.key}}
  name: {{project.name}}
  governance_root: ../..

framework:
  version: {{framework.version}}
  generated_from_commit: {{framework.generated_from_commit}}

commands:
  build: "{{commands.build}}"
  test: "{{commands.test}}"

runtime:
  agents:
{{#runtime.agents}}
    - {{.}}
{{/runtime.agents}}
  commands:
{{#runtime.commands}}
    - {{.}}
{{/runtime.commands}}
