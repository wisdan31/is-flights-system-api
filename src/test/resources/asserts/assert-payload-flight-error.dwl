%dw 2.0
import * from dw::test::Asserts
---
payload.error must [
  beObject(),
  $.errorType must equalTo("APP:FLIGHT_NOT_FOUND"),
  $.errorMessage must notBeNull(),
  $.timestamp must notBeNull()
]