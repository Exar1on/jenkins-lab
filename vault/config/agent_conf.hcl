#vault {
#  address = "https://172.17.0.1:8200"
#  ca_cert = "/usr/share/local/ca-certificates/ca.crt"
#}
#log_level = "debug"

auto_auth {
  method {
    type      = "approle"

    config = {
      role_id_file_path = "/secrets/config/role_id"
      secret_id_file_path = "/secrets/config/secret_id"
      remove_secret_id_file_after_reading = true
    }
  }

  sink  {
    type  = "file"
    wrap_ttl  = "5m"
    config  = {
      path  = "/secrets/config/sinkwrap.txt"
    }
  }
}
template  {
  contents  = <<EOF
{{- with secret "secret/jenkins/agent" -}}
{{ .Data.data.controller_token -}}
{{- end -}}
EOF
  destination = "/secrets/config/render.txt"
  error_on_missing_key  = true
}
exit_after_auth = true
