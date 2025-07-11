{{/*
Copyright Broadcom, Inc. All Rights Reserved.
SPDX-License-Identifier: APACHE-2.0
*/}}

{{/* vim: set filetype=mustache: */}}

{{/*
Return a resource request/limit object based on a given preset.
These presets are for basic testing and not meant to be used in production
{{ include "common.resources.preset" (dict "type" "nano") -}}
*/}}
{{- define "common.resources.preset" -}}
{{/* The limits are the requests increased by 50% (except ephemeral-storage and xlarge/2xlarge sizes)*/}}
{{- $presets := dict
  "small" (dict 
      "requests" (dict "cpu" "100m" "memory" "256Mi")
      "limits" (dict "cpu" "200m" "memory" "512Mi")
   )
  "medium" (dict 
      "requests" (dict "cpu" "200m" "memory" "512Mi")
      "limits" (dict "cpu" "500m" "memory" "1024Mi")
   )
  "large" (dict 
      "requests" (dict "cpu" "500m" "memory" "1024Mi")
      "limits" (dict "cpu" "1" "memory" "2048Mi")
   )
 }}
{{- if hasKey $presets .type -}}
{{- index $presets .type | toYaml -}}
{{- else -}}
{{- printf "ERROR: Preset key '%s' invalid. Allowed values are %s" .type (join "," (keys $presets)) | fail -}}
{{- end -}}
{{- end -}}

{{- define "opspilot.resources.preset" -}}
{{/* The limits are the requests increased by 50% (except ephemeral-storage and xlarge/2xlarge sizes)*/}}
{{- $presets := dict
  "small" (dict
      "requests" (dict "cpu" "250m" "memory" "1024Mi")
      "limits" (dict "cpu" "250m" "memory" "1024Mi")
   )
  "medium" (dict
      "requests" (dict "cpu" "500m" "memory" "2048Mi")
      "limits" (dict "cpu" "500m" "memory" "2048Mi")
   )
  "large" (dict
      "requests" (dict "cpu" "1.0" "memory" "4Gi")
      "limits" (dict "cpu" "1.0" "memory" "4Gi")
   )
 }}
{{- if hasKey $presets .type -}}
{{- index $presets .type | toYaml -}}
{{- else -}}
{{- printf "ERROR: Preset key '%s' invalid. Allowed values are %s" .type (join "," (keys $presets)) | fail -}}
{{- end -}}
{{- end -}}

{{- define "skywalking.resources.preset" -}}
{{/* The limits are the requests increased by 50% (except ephemeral-storage and xlarge/2xlarge sizes)*/}}
{{- $presets := dict
  "small" (dict
      "requests" (dict "cpu" "1.0" "memory" "8Gi")
      "limits" (dict "cpu" "1.0" "memory" "8Gi")
   )
  "medium" (dict
      "requests" (dict "cpu" "2.0" "memory" "16Gi")
      "limits" (dict "cpu" "2.0" "memory" "16Gi")
   )
  "large" (dict
      "requests" (dict "cpu" "4.0" "memory" "32Gi")
      "limits" (dict "cpu" "4.0" "memory" "32Gi")
   )
 }}
{{- if hasKey $presets .type -}}
{{- index $presets .type | toYaml -}}
{{- else -}}
{{- printf "ERROR: Preset key '%s' invalid. Allowed values are %s" .type (join "," (keys $presets)) | fail -}}
{{- end -}}
{{- end -}}

{{- define "elasticsearch.resources.preset" -}}
{{/* The limits are the requests increased by 50% (except ephemeral-storage and xlarge/2xlarge sizes)*/}}
{{- $presets := dict
  "small" (dict
      "requests" (dict "cpu" "1.0" "memory" "4Gi")
      "limits" (dict "cpu" "1.0" "memory" "4Gi")
   )
  "medium" (dict
      "requests" (dict "cpu" "2.0" "memory" "8Gi")
      "limits" (dict "cpu" "2.0" "memory" "8Gi")
   )
  "large" (dict
      "requests" (dict "cpu" "4.0" "memory" "16Gi")
      "limits" (dict "cpu" "4.0" "memory" "16Gi")
   )
 }}
{{- if hasKey $presets .type -}}
{{- index $presets .type | toYaml -}}
{{- else -}}
{{- printf "ERROR: Preset key '%s' invalid. Allowed values are %s" .type (join "," (keys $presets)) | fail -}}
{{- end -}}
{{- end -}}

{{- define "prometheus.resources.preset" -}}
{{/* The limits are the requests increased by 50% (except ephemeral-storage and xlarge/2xlarge sizes)*/}}
{{- $presets := dict
  "small" (dict
      "requests" (dict "cpu" "1.0" "memory" "4Gi")
      "limits" (dict "cpu" "1.0" "memory" "4Gi")
   )
  "medium" (dict
      "requests" (dict "cpu" "2.0" "memory" "8Gi")
      "limits" (dict "cpu" "2.0" "memory" "8Gi")
   )
  "large" (dict
      "requests" (dict "cpu" "4.0" "memory" "16Gi")
      "limits" (dict "cpu" "4.0" "memory" "16Gi")
   )
 }}
{{- if hasKey $presets .type -}}
{{- index $presets .type | toYaml -}}
{{- else -}}
{{- printf "ERROR: Preset key '%s' invalid. Allowed values are %s" .type (join "," (keys $presets)) | fail -}}
{{- end -}}
{{- end -}}