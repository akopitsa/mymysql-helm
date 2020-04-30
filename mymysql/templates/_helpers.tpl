{{/* Generate basic labels */}}
{{- define "mychart.labels" }}
  labels:
    generator: helm
    name: {{ .Release.Name | printf "%s-%s" .Chart.Name }}
    chartname: {{ .Chart.Name }}
    releasename: {{- .Release.Name -}}
{{- end }}

{{- define "myhelm1.name" -}}
{{- .Release.Name -}}
{{- end -}}

{{- define "mychart.matchLabels" }}
  selector:
    matchLabels:
      app: {{ .Values.app }}
{{- end }}
