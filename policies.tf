resource "spacelift_policy" "access" {
  type = "ACCESS"

  name = "All of Engineering gets read access"
  body = file("${path.module}/policies/access.rego")
}

resource "spacelift_policy_attachment" "access" {
  policy_id = spacelift_policy.access.id
  stack_id  = data.spacelift_current_stack.this.id
}