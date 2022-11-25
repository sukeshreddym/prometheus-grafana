output "node" {
  value = aws_instance.node-exporter.public_ip
}
output "grafana" {
  value = aws_instance.grafana.public_ip
}
output "prometheus" {
  value = aws_instance.prometheus.public_ip
}