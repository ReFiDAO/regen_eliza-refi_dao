# ReFi Agent Ecosystem

A comprehensive framework for ReFi (Regenerative Finance) AI agents built on ElizaOS, designed to support the regenerative finance ecosystem through specialized AI assistants.

## 🌱 Project Overview

This repository contains a collection of specialized AI agents focused on regenerative finance, sustainability, and community coordination. Each agent is designed to serve specific roles within the ReFi ecosystem, from education and community building to operational coordination.

```mermaid
graph TB
    subgraph "ReFi Agent Ecosystem"
        KA[🎓 ReFi Knowledge Agent<br/>External Q&A & Education]
        BA[🏛️ ReFi Barcelona Agent<br/>Regional Specialist]
        CA[🤝 ReFi DAO Coordinator<br/>Internal Operations]
    end
    
    subgraph "Target Audiences"
        EXT[External Users<br/>Newcomers & Community]
        REG[Regional Users<br/>Barcelona Residents]
        INT[Internal Users<br/>DAO Team Members]
    end
    
    subgraph "Platforms"
        TW[Twitter/X]
        TG[Telegram]
        DC[Discord]
    end
    
    subgraph "Knowledge Sources"
        KB1[ReFi Education<br/>224 Blog Posts]
        KB2[Barcelona Resources<br/>Local Initiatives]
        KB3[Operations Manual<br/>Processes & Templates]
    end
    
    KA --> EXT
    BA --> REG
    CA --> INT
    
    KA --> TW
    KA --> TG
    BA --> TW
    BA --> TG
    BA --> DC
    CA --> TG
    CA --> DC
    
    KB1 --> KA
    KB2 --> BA
    KB3 --> CA
```

## 📂 Repository Structure

```
refi-agent-ecosystem/
├── README.md                           # This file - project overview and setup
├── package.json                        # Root workspace configuration
├── turbo.json                          # Monorepo build configuration
├── tsconfig.json                       # TypeScript configuration
├── bunfig.toml                         # Bun package manager configuration
│
├── refi-knowledge-agent/               # 🎓 External Q&A and Education Agent
│   ├── src/
│   │   ├── refiKnowledgeAgent.ts      # Character definition for knowledge agent
│   │   ├── index.ts                   # Project entry point
│   │   ├── character.ts               # ElizaOS template (preserved)
│   │   ├── plugin.ts                  # Custom plugins
│   │   └── __tests__/                 # Test suites
│   ├── knowledge/                     # 📚 Knowledge base for ReFi education
│   │   ├── refi-basics/               # Core ReFi concepts
│   │   ├── refi-dao/                  # DAO structure and governance
│   │   ├── local-nodes/               # Regional community information
│   │   ├── getting-started/           # Onboarding guides
│   │   └── ReFi DAO Blog Posts/       # 224 curated blog posts
│   ├── README.md                      # Agent-specific documentation
│   └── package.json                   # Agent dependencies
│
├── refi-barcelona/                     # 🏛️ Barcelona Regional Specialist Agent
│   ├── src/
│   │   ├── character.ts               # Character definition for Barcelona agent
│   │   ├── index.ts                   # Project entry point
│   │   ├── plugin.ts                  # Custom plugins
│   │   └── __tests__/                 # Test suites
│   ├── knowledge/                     # 📍 Barcelona-specific knowledge
│   │   ├── barcelona/                 # Local initiatives and resources
│   │   ├── refi/                      # Regional ReFi context
│   │   └── basics/                    # Local sustainability basics
│   ├── README.md                      # Agent-specific documentation
│   └── package.json                   # Agent dependencies
│
├── refi-dao-coordinator/               # 🤝 Internal Operations Coordinator Agent
│   ├── src/
│   │   ├── character.ts               # Character definition for coordinator
│   │   ├── index.ts                   # Project entry point
│   │   ├── plugin.ts                  # Custom plugins
│   │   └── __tests__/                 # Test suites
│   ├── knowledge/                     # 📋 Operational knowledge base
│   │   ├── operations/                # Basic operations and procedures
│   │   ├── coordination/              # Contributor recognition systems
│   │   └── processes/                 # Meeting and workflow templates
│   ├── README.md                      # Agent-specific documentation
│   └── package.json                   # Agent dependencies
│
├── my-agent/                           # 🧪 Development/Test Agent (ElizaOS default)
│   └── ...                            # Standard ElizaOS project structure
│
├── packages/                           # 📦 Core ElizaOS Framework
│   ├── core/                          # ElizaOS core runtime
│   ├── cli/                           # Command-line interface
│   ├── client/                        # Web interface
│   ├── plugin-bootstrap/              # Essential communication plugins
│   ├── plugin-sql/                    # Database integration
│   └── ...                            # Additional core packages
│
├── scripts/                            # 🛠️ Build and development scripts
├── .github/                           # GitHub Actions and workflows
├── .vscode/                           # VS Code configuration
└── docs/                              # Additional documentation
```

## 🤖 Agent Specifications

### 1. ReFi Knowledge Agent (External-Facing)
**Location**: `refi-knowledge-agent/`
**Purpose**: Educational Q&A assistant for ReFi concepts and community onboarding

**Character Definition**: `refi-knowledge-agent/src/refiKnowledgeAgent.ts`

```mermaid
graph LR
    subgraph "ReFi Knowledge Agent Flow"
        U[User Question] --> P[Process Query]
        P --> K[Knowledge Base<br/>224 Blog Posts<br/>Educational Content]
        K --> G[Generate Educational Response]
        G --> R[Response with<br/>Next Steps & Resources]
        R --> A[Action Items<br/>Community Links]
    end
    
    subgraph "Knowledge Categories"
        K1[ReFi Basics]
        K2[DAO Structure]
        K3[Local Nodes]
        K4[Getting Started]
        K5[Blog Archive]
    end
    
    K --> K1
    K --> K2
    K --> K3
    K --> K4
    K --> K5
```

**Core Capabilities**:
- **Knowledge Base**: Comprehensive ReFi education content and DAO documentation
- **Target Audience**: Newcomers and community members seeking ReFi education
- **Primary Platforms**: Twitter, Telegram (public channels)
- **Response Style**: Educational, encouraging, accessible to beginners

**Key Features**:
- Answers common questions about ReFi concepts and terminology
- Guides users through getting started with ReFi DAO participation
- Explains Local Nodes and community engagement opportunities
- Provides clear explanations of complex financial concepts
- Connects users with relevant resources and next steps

**Knowledge Sources**:
- ReFi basics and terminology (`knowledge/refi-basics/`)
- ReFi DAO overview and structure (`knowledge/refi-dao/`)
- Local Nodes introduction and participation (`knowledge/local-nodes/`)
- Community onboarding guides (`knowledge/getting-started/`)
- 224 ReFi DAO blog posts for comprehensive context (`knowledge/ReFi DAO Blog Posts/`)

**Settings**:
```typescript
settings: {
  ragKnowledge: true,
  responseMode: 'educational',
  maxResponseLength: 800,
  supportedLanguages: ['en'],
}
```

### 2. ReFi Barcelona Agent (Regional Specialist)
**Location**: `refi-barcelona/`
**Purpose**: Regional expert for Barcelona's green economy and local ReFi initiatives

**Character Definition**: `refi-barcelona/src/character.ts`

```mermaid
graph TD
    subgraph "Barcelona Agent Context Mapping"
        Q[Local Query] --> C[Contextualize to Barcelona]
        C --> L[Local Knowledge Base]
        L --> R[Regional ReFi Opportunities]
        R --> A[Actionable Local Connections]
    end
    
    subgraph "Local Resources"
        L1[Barcelona Climate Plan]
        L2[Som Energia Cooperative]
        L3[Fab City Hub]
        L4[Impact Hub Barcelona]
        L5[Blue Economy Projects]
    end
    
    subgraph "ReFi Applications"
        R1[Carbon Credits]
        R2[Community Solar]
        R3[Urban Reforestation]
        R4[Circular Economy]
        R5[Green Tech Innovation]
    end
    
    L --> L1
    L --> L2
    L --> L3
    L --> L4
    L --> L5
    
    R --> R1
    R --> R2
    R --> R3
    R --> R4
    R --> R5
```

**Core Capabilities**:
- **Local Expertise**: Barcelona's sustainability landscape and green economy
- **Target Audience**: Local residents, visitors, and sustainability professionals
- **Primary Platforms**: Discord, Twitter, Telegram
- **Response Style**: Knowledgeable, inspiring, action-oriented

**Key Features**:
- Connects ReFi concepts to Barcelona's local context
- Provides information about local sustainability initiatives
- Guides users to Barcelona-specific climate action groups
- Explains carbon markets and environmental tokenization opportunities
- Bridges traditional and innovative sustainability approaches

**Specialized Knowledge Areas**:
- Barcelona Climate Plan and carbon neutrality goals
- Local energy cooperatives (Som Energia)
- Mediterranean blue economy initiatives
- Community solar and urban reforestation projects
- Circular economy marketplaces
- Fab City Hub and Impact Hub Barcelona
- Local climate tech and impact investing communities

**Settings**:
```typescript
settings: {
  ragKnowledge: true,
  avatar: 'https://elizaos.github.io/eliza-avatars/Eliza/portrait.png',
}
```

### 3. ReFi DAO Coordinator (Internal Operations)
**Location**: `refi-dao-coordinator/`
**Purpose**: Internal coordination assistant for ReFi DAO organizational tasks

**Character Definition**: `refi-dao-coordinator/src/character.ts`

```mermaid
graph TB
    subgraph "DAO Coordination Workflow"
        T[Team Request] --> A[Assess Task Type]
        A --> M[Meeting Coordination]
        A --> P[Progress Tracking]
        A --> C[Contributor Recognition]
        A --> D[Documentation]
        
        M --> M1[Agenda Creation]
        M --> M2[Scheduling]
        M --> M3[Follow-up]
        
        P --> P1[Grant Tracking]
        P --> P2[Project Monitoring]
        P --> P3[Deadline Management]
        
        C --> C1[Achievement Recognition]
        C --> C2[Team Highlights]
        C --> C3[Contribution Tracking]
        
        D --> D1[Process Templates]
        D --> D2[Meeting Notes]
        D --> D3[Progress Reports]
    end
```

**Core Capabilities**:
- **Internal Focus**: DAO operations, team coordination, and process management
- **Target Audience**: ReFi DAO team members and contributors
- **Primary Platforms**: Telegram (private channels), Discord (internal)
- **Response Style**: Organized, professional, efficient

**Key Features**:
- Meeting agenda creation and coordination
- Progress tracking for grants and projects
- Contributor recognition and achievement tracking
- Task management and workflow optimization
- Documentation organization and maintenance
- Financial reporting assistance
- Team collaboration facilitation

**Operational Areas**:
- Meeting coordination and agenda management (`knowledge/operations/`)
- Contributor recognition systems (`knowledge/coordination/`)
- Process templates and workflows (`knowledge/processes/`)
- Task and project progress monitoring
- Internal communication optimization
- Documentation and process improvement
- Team workflow coordination

**Settings**:
```typescript
settings: {
  responseMode: 'organized',
  maxResponseLength: 1000,
  avatar: 'https://elizaos.github.io/eliza-avatars/Eliza/portrait.png',
}
```

## 🚀 Quick Start

### Prerequisites

- [Node.js](https://nodejs.org/) (v23 or higher recommended)
- [bun](https://bun.sh/docs/installation)

> **Note for Windows Users:** [WSL 2](https://learn.microsoft.com/en-us/windows/wsl/install-manual) is required.

### Setup Instructions

```mermaid
flowchart TD
    A[Install ElizaOS CLI] --> B[Clone Repository]
    B --> C[Install Dependencies]
    C --> D[Choose Agent Directory]
    D --> E[Configure Environment]
    E --> F[Start Agent]
    
    E --> E1[Set API Keys]
    E --> E2[Configure Platforms]
    E --> E3[Set Log Level]
    
    F --> G[Web Interface<br/>localhost:3000]
    F --> H[API Endpoint<br/>localhost:3000/api]
```

#### 1. Install the ElizaOS CLI

```bash
# Install the ElizaOS CLI globally
bun install -g @elizaos/cli

# Verify installation
elizaos --version
```

#### 2. Clone and Setup the Project

```bash
# Clone the repository
git clone https://github.com/ReFiDAO/regen_eliza-refi_dao.git
cd regen-eliza

# Install root dependencies
bun install

# Choose your agent and navigate to its directory
cd refi-knowledge-agent  # or refi-barcelona, refi-dao-coordinator
```

#### 3. Configure Environment Variables

```bash
# Edit your environment configuration
elizaos env edit-local

# Or manually edit the .env file
nano .env
```

**Essential Environment Variables:**

```bash
# Required: Your model API key (choose one or more)
OPENAI_API_KEY=your_openai_key_here
ANTHROPIC_API_KEY=your_anthropic_key_here
GOOGLE_GENERATIVE_AI_API_KEY=your_google_key_here

# Platform integrations (based on agent purpose)
DISCORD_APPLICATION_ID=your_discord_app_id
DISCORD_API_TOKEN=your_discord_bot_token
TWITTER_API_KEY=your_twitter_key
TWITTER_API_SECRET_KEY=your_twitter_secret
TELEGRAM_BOT_TOKEN=your_telegram_token

# Optional: Logging and debugging
LOG_LEVEL=info
```

#### 4. Start Your Agent

```bash
# Build and start the agent
elizaos start

# Or start with debug logging for development
LOG_LEVEL=debug elizaos start
```

After starting, your agent will be available at:
- **Web Interface**: http://localhost:3000
- **API Endpoint**: http://localhost:3000/api

## 🏗️ Architecture

### Core Components

```mermaid
graph TB
    subgraph "ElizaOS Architecture"
        subgraph "Agent Layer"
            A1[ReFi Knowledge Agent]
            A2[ReFi Barcelona Agent]  
            A3[ReFi DAO Coordinator]
        end
        
        subgraph "Plugin System"
            P1[SQL Plugin]
            P2[Knowledge Plugin]
            P3[Platform Plugins]
            P4[Bootstrap Plugin]
        end
        
        subgraph "Platform Connectors"
            PC1[Discord Connector]
            PC2[Twitter Connector]
            PC3[Telegram Connector]
        end
        
        subgraph "Core Runtime"
            CR1[AgentRuntime]
            CR2[Memory System]
            CR3[LLM Integration]
        end
        
        subgraph "Knowledge Base"
            KB1[RAG Processing]
            KB2[Document Store]
            KB3[Vector Search]
        end
    end
    
    A1 --> P1
    A1 --> P2
    A2 --> P1
    A2 --> P2
    A3 --> P1
    
    P3 --> PC1
    P3 --> PC2
    P3 --> PC3
    
    A1 --> CR1
    A2 --> CR1
    A3 --> CR1
    
    CR1 --> CR2
    CR1 --> CR3
    
    P2 --> KB1
    KB1 --> KB2
    KB1 --> KB3
```

Each agent is built using ElizaOS core components:

- **Character Definition**: Personality, knowledge, and behavior configuration
- **Plugin System**: Modular capabilities (SQL, knowledge, platform integrations)
- **Knowledge Base**: RAG-enabled document processing for specialized knowledge
- **Platform Connectors**: Discord, Twitter, Telegram integrations
- **Runtime Environment**: ElizaOS agent runtime with full feature support

### Plugin Configuration

All agents use a common plugin stack:

```typescript
plugins: [
  '@elizaos/plugin-sql',           // Database integration
  '@elizaos/plugin-knowledge',     // RAG knowledge processing (where applicable)
  '@elizaos/plugin-openai',        // OpenAI model integration
  '@elizaos/plugin-anthropic',     // Anthropic model integration
  '@elizaos/plugin-discord',       // Discord platform integration
  '@elizaos/plugin-twitter',       // Twitter platform integration
  '@elizaos/plugin-telegram',      // Telegram platform integration
  '@elizaos/plugin-bootstrap',     // Core functionality
]
```

### Monorepo Structure

```mermaid
graph LR
    subgraph "Root Configuration"
        RC1[package.json]
        RC2[turbo.json]
        RC3[tsconfig.json]
    end
    
    subgraph "Agent Projects"
        AP1[refi-knowledge-agent]
        AP2[refi-barcelona]
        AP3[refi-dao-coordinator]
    end
    
    subgraph "Shared Dependencies"
        SD1[ElizaOS Core]
        SD2[Common Plugins]
        SD3[Build Tools]
    end
    
    RC1 --> AP1
    RC1 --> AP2
    RC1 --> AP3
    
    SD1 --> AP1
    SD1 --> AP2
    SD1 --> AP3
    
    SD2 --> AP1
    SD2 --> AP2
    SD2 --> AP3
```

This project uses a monorepo structure with:
- **Root Configuration**: Shared TypeScript, Bun, and Turbo configurations
- **Individual Agents**: Self-contained projects with their own dependencies
- **Shared Dependencies**: Core ElizaOS packages shared across all agents
- **Build System**: Turbo for efficient building and development

## 🧪 Testing

### Running Tests

```bash
# Run all tests for an agent
elizaos test

# Run specific test types
elizaos test component      # Unit/component tests
elizaos test e2e           # End-to-end integration tests

# Run tests with specific patterns
elizaos test --name "knowledge"
```

### Test Structure

```mermaid
graph TD
    subgraph "Testing Strategy"
        UT[Unit Tests]
        IT[Integration Tests]
        E2E[End-to-End Tests]
    end
    
    subgraph "Test Scope"
        UT --> UT1[Character Logic]
        UT --> UT2[Plugin Functions]
        UT --> UT3[Utility Functions]
        
        IT --> IT1[Database Integration]
        IT --> IT2[Knowledge Processing]
        IT --> IT3[Plugin Interactions]
        
        E2E --> E2E1[Platform Workflows]
        E2E --> E2E2[Complete User Journeys]
        E2E --> E2E3[Multi-Agent Scenarios]
    end
```

Each agent includes comprehensive test suites:

- **Unit Tests**: Individual component testing with mocks
- **Integration Tests**: Full agent runtime testing with live database
- **E2E Tests**: Complete workflow testing across platforms

## 🔧 Development

### Adding New Agents

```mermaid
flowchart TD
    A[Create Agent Directory] --> B[Configure Character]
    B --> C[Add Knowledge Base]
    C --> D[Setup Platform Integration]
    D --> E[Write Tests]
    E --> F[Deploy and Monitor]
    
    B --> B1[Define Personality]
    B --> B2[Set Response Style]
    B --> B3[Configure Plugins]
    
    C --> C1[Create Knowledge Files]
    C --> C2[Structure Content]
    C --> C3[Enable RAG]
```

1. **Create Agent Directory**:
   ```bash
   elizaos create my-new-agent --type project
   ```

2. **Configure Character**:
   - Edit `src/character.ts` with agent-specific personality and knowledge
   - Update `src/index.ts` to reference your character
   - Add knowledge files to `knowledge/` directory if needed

3. **Test and Deploy**:
   ```bash
   elizaos test
   elizaos start
   ```

### Customizing Existing Agents

1. **Character Modifications**: Update personality, topics, or style in character files
2. **Knowledge Updates**: Add or modify files in the `knowledge/` directory
3. **Plugin Extensions**: Add custom plugins in `src/plugin.ts`
4. **Platform Configuration**: Update environment variables for new platforms

### Development Workflow

```bash
# From the root directory
bun install                    # Install all dependencies

# Navigate to specific agent
cd refi-knowledge-agent

# Development cycle
elizaos test                   # Test changes
elizaos start                  # Start for manual testing
LOG_LEVEL=debug elizaos start  # Debug mode
```

## 📚 Knowledge Management

```mermaid
graph TB
    subgraph "Knowledge Architecture"
        subgraph "ReFi Knowledge Agent"
            KB1[224 Blog Posts<br/>JSON Format]
            KB2[Educational Content<br/>Markdown]
            KB3[Community Resources<br/>Getting Started]
        end
        
        subgraph "ReFi Barcelona Agent"
            KB4[Local Initiatives<br/>Barcelona Specific]
            KB5[Regional Context<br/>Mediterranean Focus]
            KB6[Action-Oriented<br/>Direct Connections]
        end
        
        subgraph "ReFi DAO Coordinator"
            KB7[Operational Procedures<br/>Templates]
            KB8[Team Resources<br/>Recognition Frameworks]
            KB9[Process Documentation<br/>Meeting Templates]
        end
    end
    
    subgraph "RAG Processing"
        RP1[Document Ingestion]
        RP2[Vector Embeddings]
        RP3[Semantic Search]
        RP4[Context Retrieval]
    end
    
    KB1 --> RP1
    KB2 --> RP1
    KB3 --> RP1
    KB4 --> RP1
    KB5 --> RP1
    KB6 --> RP1
    KB7 --> RP1
    KB8 --> RP1
    KB9 --> RP1
    
    RP1 --> RP2
    RP2 --> RP3
    RP3 --> RP4
```

### ReFi Knowledge Agent
- **Blog Posts**: 224 curated ReFi DAO blog posts in JSON format
- **Educational Content**: Basic ReFi concepts and getting started guides
- **Community Resources**: Local Node information and participation guides

### ReFi Barcelona Agent
- **Local Content**: Barcelona-specific sustainability initiatives and resources
- **Regional Focus**: Mediterranean and European regenerative finance context
- **Action-Oriented**: Direct connections to local organizations and projects

### ReFi DAO Coordinator
- **Operational Knowledge**: Internal processes and coordination procedures
- **Team Resources**: Contributor guidelines and recognition frameworks
- **Process Documentation**: Meeting templates and progress tracking systems

## 🤝 Contributing

### Guidelines

1. **Follow ElizaOS Standards**: Use the established plugin and character patterns
2. **Comprehensive Testing**: Include unit, integration, and E2E tests
3. **Documentation**: Update README and character documentation
4. **Knowledge Curation**: Ensure knowledge bases are accurate and up-to-date

### Development Workflow

```bash
# 1. Make changes to character definitions or knowledge
# 2. Test changes locally
elizaos test

# 3. Start agent for manual testing
elizaos start

# 4. Verify all platforms work correctly
# 5. Submit changes for review
```

## 🔗 Related Resources

- **ElizaOS Documentation**: [Official ElizaOS Docs](https://elizaos.github.io/eliza/)
- **ReFi DAO**: [ReFi DAO Official Website](https://www.refidao.com/)
- **Plugin Registry**: [ElizaOS Plugin Registry](https://github.com/elizaos-plugins/registry)
- **Community**: [ElizaOS Discord](https://discord.gg/elizaos)

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

Built on the ElizaOS framework by the ElizaOS team and contributors. Special thanks to the ReFi DAO community for guidance on regenerative finance concepts and use cases.
