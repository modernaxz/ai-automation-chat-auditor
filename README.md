# AI Automation Chat Auditor

AI Automation Chat Auditor is an AI workflow automation project that analyzes LINE conversations between customers and admins in real time. The system uses n8n, Webhook, LLM API, Microsoft SQL Server, and Dashboard to transform raw chat messages into structured business insights.

## Features

- Receive LINE messages through Webhook in real time
- Filter Sticker and Event Messages before storing data
- Analyze customer Sentiment, Intent, Customer Needs, and Sales Outcome using LLM API
- Store structured analysis results in Microsoft SQL Server
- Display insights through Dashboard

## Tech Stack

- n8n
- LINE Messaging API
- Webhook
- LLM API
- Microsoft SQL Server
- Docker
- Dashboard

## System Workflow

1. Customer sends a message via LINE
2. LINE Webhook sends the message to n8n
3. n8n filters irrelevant messages such as Sticker and Event Messages
4. LLM API analyzes the message
5. Structured results are saved into Microsoft SQL Server
6. Dashboard displays business insights

## My Role

- Designed the workflow architecture
- Built the n8n automation workflow
- Designed the database structure in Microsoft SQL Server
- Implemented message filtering logic
- Connected Webhook, AI API, Database, and Dashboard

## Repository Structure

```text
ai-automation-chat-auditor/
├── README.md
├── database/
│   └── schema.sql
├── sample/
│   └── sample-output.json
└── docs/
    ├── architecture.png
    ├── n8n-workflow.png
    └── dashboard.png
