connection: "@{CONNECTION_NAME}"

include: "/views/**/*.view"
include: "/explores/*.lkml"
include: "*.dashboard"

datagroup: block_google_chronicle_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: block_google_chronicle_default_datagroup
