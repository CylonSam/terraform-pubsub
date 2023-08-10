resource "google_pubsub_schema" "example" {
  name = "example"
  type = "AVRO"
  definition = {
    "1" = <<EOF
    {
      "type" : "record",
      "name" : "Avro",
      "fields" : [
        {
          "name" : "burgerName",
          "type" : "string",
          "default": false
        },
        {
          "name" : "burgerPrice",
          "type" : "double",
          "default": false
        }
      ]
    }
    EOF
  }
}

resource "google_pubsub_topic" "burger" {
  name = "burger-topic"

  labels = {
    foo = "bar"
  }

  depends_on = [google_pubsub_schema.example]
  schema_settings {
    schema   = "projects/${var.project_id}/schemas/burger"
    encoding = "JSON"
  }

  message_retention_duration = "86600s"
}