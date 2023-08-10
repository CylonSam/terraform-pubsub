resource "google_pubsub_schema" "burger" {
  name = "burger"
  type = "AVRO"
  definition = jsonencode({
    "type" : "record",
    "name" : "Avro",
    "fields" : [
      {
        "name" : "burgerName",
        "type" : "string",
        "default" : false
      },
      {
        "name" : "burgerPrice",
        "type" : "double",
        "default" : false
      }
    ]
  })
}

resource "google_pubsub_topic" "burger" {
  name = "burger-topic"

  labels = {
    foo = "bar"
  }

  depends_on = [google_pubsub_schema.burger]
  schema_settings {
    schema   = "projects/${var.project_id}/schemas/burger"
    encoding = "JSON"
  }

  message_retention_duration = "86600s"
}