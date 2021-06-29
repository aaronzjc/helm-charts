{{- define "prin.name" -}}
{{- default .Chart.Name .Values.nameOverride }}
{{- end }}

{{- define "prin.labels" -}}
app: {{ default .Chart.Name }}
{{- end -}}

{{- define "prin.timezone.volume" -}}
- name: tz-config
  hostPath: 
    path: /usr/share/zoneinfo/Asia/Shanghai
{{- end -}}

{{- define "prin.timezone.mount" -}}
- name: tz-config
  mountPath: /etc/localtime
{{- end -}}