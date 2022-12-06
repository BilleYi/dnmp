bin/elasticsearch-plugin install analysis-icu && bin/elasticsearch-plugin install analysis-phonetic && bin/elasticsearch-plugin install https://ghproxy.com/https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v6.8.15/elasticsearch-analysis-ik-6.8.15.zip


php bin/magento indexer:reindex catalog_category_product catalog_product_category cataloginventory_stock inventory catalogsearch_fulltext


php bin/magento setup:upgrade && php bin/magento setup:di:compile && php bin/magento setup:static-content:deploy -f && php bin/magento setup:static-content:deploy -f zh_Hans_CN