output "gpt_4o_sku_name" {
  value = azurerm_cognitive_deployment.gpt_4o.sku[0].name
  description = "The SKU name of the GPT-4o OpenAI model"
}

output "gpt_4o_mini_sku_name" {
  value = azurerm_cognitive_deployment.gpt_4o_mini.sku[0].name
  description = "The SKU name of the GPT-4o-mini OpenAI model"
}