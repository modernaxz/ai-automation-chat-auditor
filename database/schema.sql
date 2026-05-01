-- AI Automation Chat Auditor
-- Clean database schema for portfolio demonstration
-- Table: dbo.ChatLogs
-- No real customer data, credentials, or production server information included

CREATE TABLE dbo.ChatLogs (
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,

    [Timestamp] DATETIME2(3) NOT NULL,
    UserId NVARCHAR(100) NOT NULL,
    UserMessage NVARCHAR(MAX) NOT NULL,

    Sentiment NVARCHAR(20) NULL,
    Intent NVARCHAR(200) NULL,
    CustomerNeeds NVARCHAR(MAX) NULL,
    SalesOutcome NVARCHAR(50) NULL,
    Summary NVARCHAR(500) NULL,
    AiResponse NVARCHAR(MAX) NULL,

    CreatedAt DATETIME2(3) NOT NULL DEFAULT SYSUTCDATETIME(),

    MessageId NVARCHAR(100) NULL,
    MessageType NVARCHAR(50) NULL,
    SourceType NVARCHAR(50) NULL,
    Channel NVARCHAR(50) NULL,
    SenderType NVARCHAR(50) NULL,
    ReplyToken NVARCHAR(255) NULL,
    ProcessingStatus NVARCHAR(50) NULL,

    UpdatedAt DATETIME NULL,
    DuplicateCount INT NULL,
    ErrorMessage NVARCHAR(MAX) NULL
);

-- Prevent duplicate LINE messages from being inserted multiple times
CREATE UNIQUE INDEX UX_ChatLogs_MessageId
ON dbo.ChatLogs (MessageId)
WHERE MessageId IS NOT NULL;

-- Indexes for query, dashboard, and workflow performance
CREATE INDEX IX_ChatLogs_UserId
ON dbo.ChatLogs (UserId);

CREATE INDEX IX_ChatLogs_Timestamp
ON dbo.ChatLogs ([Timestamp]);

CREATE INDEX IX_ChatLogs_ProcessingStatus
ON dbo.ChatLogs (ProcessingStatus);

CREATE INDEX IX_ChatLogs_Channel
ON dbo.ChatLogs (Channel);