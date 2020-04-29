{{/* Generate basic labels */}}
{{- define "mychart.labels" }}
  labels:
    generator: helm
    date: {{ now | htmlDate }}
{{- end }}

{{- define "myhelm1.name" -}}
{{- .Release.Name -}}
{{- end -}}

