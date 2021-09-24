# Chronicle Security Block

## Why use the Chronicle Security Looker Block?
**(1) Rapid Time To Value** - gain insights from your Chronicle data in minutes, not hours. The Chronicle Security Block includes pre-built dashboards and content focusing on the Data Ingestion Status and Health, context for Rule Detections, IOC matches and Alert prioritization, User Sign-ins, Asset Lookups, and Domain Lookups. Additionally, this data is organized into various Explorer views to enable adhoc querying and exploration of the Chronicle data.

**(2) Centralized Place for Analysis** -  No need to play the swivel chair game and go between different consoles, you can do self-service reporting for Chronicle data right here in Looker. Plus, you can combine your Chronicle data with other security and non-security data in your warehouse for end-to-end analysis.

**(3) Democratization of Data** - Security Analysts, managers and executives can easily build their own dashboards, and any user is equipped to ask and answer their own questions, save and share their own reports.

## Block Structure
For more information on the Block structure and customization, refer to [Looker Marketplace Documnetation](https://docs.looker.com/data-modeling/marketplace/customize-blocks#marketplace_blocks_that_use_refinements)

## Technical installation

### Pre-requisites

- This block works with Chronicle datasets in Google BigQuery.
- BigQuery Export feature needs to be enabled for your Chronicle tenant. (Reach out to your Chronicle representative to set this up.)

### Installation steps

1. Install this block from the marketplace
2. Required installation parameters:
  - CONNECTION_NAME: name of the database connection for the Chronicle dataset in BigQuery
  - DATASET_NAME: the [project.dataset] in BigQuery where Chronicle data is stored, for e.g. `chronicle`
  - CHRONICLE_URL: this block contains links back to the different views in Chronicle. Enter the base URL of your Chronicle tenant, for e.g. https://tenant.backstory.chronicle.security/
3. Access the block from Browse - Applications & Tools - Google Chronicle Block or the LookML dashboards folder (/folders/lookml). You can customize these dashboards by copying them into one of your instances folders.

## What if I find an error? Suggestions for improvements?

Great! Blocks were designed for continuous improvement through the help of the entire Chronicle community and we'd love your input. To report an error or improvement recommendation, please reach out to Chronicle support via email to chronicle-security@google.com to submit a request. Please be as detailed as possible in your explanation and we'll address it as quick as we can.
