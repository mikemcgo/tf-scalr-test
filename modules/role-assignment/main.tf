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
 *   scope-type = "subscriptions"
 *   scope-id   = ""
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

data azuread_group "group-id" {
  name = var.group-name
}

resource "azurerm_role_assignment" "environment-owner" {
  scope = "/${var.scope-type}/${var.scope-id}"
  role_definition_name = var.role-name
  principal_id = data.azuread_group.group-id.id
}
# ---------------------------------------------------------------------------------------------------------------------
# SET TERRAFORM RUNTIME REQUIREMENTS
# ---------------------------------------------------------------------------------------------------------------------

terraform {
  required_providers {
    azurerm = ">=2.0.0"
    azuread = ">=0.3.0"
  }
}