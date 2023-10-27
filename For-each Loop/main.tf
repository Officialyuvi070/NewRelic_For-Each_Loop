resource "newrelic_alert_policy" "foo" {
    for_each = var.count-value
    name = each.value.name
    incident_preference = each.value.incident
    account_id = each.value.account_id
}