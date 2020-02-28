/**
 * Usage:
 *
 * Example of 'foo_bar' module in `foo_bar.tf`.
 *
 * - list item 1
 * - list item 2
 *
 * Even inline **formatting** in _here_ is possible.
 * and some [link](https://domain.com/)
 *
 * * list item 3
 * * list item 4
 *
 * ```hcl
 * module "foo_bar" {
 *   source = "github.com/foo/bar"
 *
 *   id   = "1234567890"
 *   name = "baz"
 *
 *   zones = ["us-east-1", "us-west-1"]
 *
 *   tags = {
 *     Name         = "baz"
 *     Created-By   = "first.last@email.com"
 *     Date-Created = "20180101"
 *   }
 * }
 * ```
 *
 * Here is some trailing text after code block,
 * followed by another line of text.
 *
 * | Name | Description     |
 * |------|-----------------|
 * | Foo  | Foo description |
 * | Bar  | Bar description |
 */

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Subscription Level Role Assignments
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

module "environment-owner-role" {
  source = "../role-assignment"

  scope-id = var.subscription-id
  group-name = var.subscription-owner
  scope-type = "subscriptions"
  role-name = "Owner"
}

module "environment-ops-role" {
  source = "../role-assignment"

  scope-id = var.subscription-id
  group-name = var.subscription-ops
  scope-type = "subscriptions"
  role-name = "Reader"
}

module "automation-teams" {
  source = "../role-assignment"

  scope-id = var.subscription-id
  group-name = var.automation-teams
  scope-type = "subscriptions"
  role-name = "Reader"
}

module "support-team" {
  source = "../role-assignment"

  scope-id = var.subscription-id
  group-name = var.support-team
  scope-type = "subscriptions"
  role-name = "Reader"
}

module "security-operation-team" {
  source = "../role-assignment"

  scope-id = var.subscription-id
  group-name = var.security-operations-team
  scope-type = "subscriptions"
  role-name = "Reader"
}
