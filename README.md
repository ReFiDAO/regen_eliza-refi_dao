# ReFi Agent Ecosystem

A comprehensive framework for ReFi (Regenerative Finance) AI agents built on ElizaOS, designed to support the regenerative finance ecosystem through specialized AI assistants.

## 🌱 Project Overview

This repository contains a collection of specialized AI agents focused on regenerative finance, sustainability, and community coordination. Each agent is designed to serve specific roles within the ReFi ecosystem, from education and community building to operational coordination.



## 🏗️ ReFi Agent Ecosystem - Master Architecture

```mermaid
graph LR
    %% External Interfaces
    subgraph "🌐 External Interfaces"
        EXT1["Public Platforms<br/>Twitter • Telegram • Discord"]
        EXT2["Internal Channels<br/>Private Teams • APIs"]
        EXT3["Knowledge Sources<br/>ReFi Content • Local Data"]
    end
    
    %% Agent Layer - Three Specialized Agents
    subgraph "🤖 Agent Layer"
        subgraph "Agent Specializations"
            A1["ReF[AI] DAO Community Agent<br/>Education & Onboarding"]
            A2["ReF[AI] DAO Global Agent<br/>DAO Operations"]
            A3["ReF[AI] Local Node Agent<br/>Regional Expertise"]
        end
    end
    
    %% ElizaOS Core Runtime
    subgraph "⚙️ ElizaOS Runtime"
        RT["AgentRuntime<br/>State Composition"]
        MEM["Memory System<br/>Conversations • Facts • Relationships"]
    end
    
    %% Plugin System
    subgraph "🔧 Plugin System"
        PLG1["Knowledge RAG<br/>Document Processing"]
        PLG2["SQL Database<br/>Data Persistence"]
        PLG3["Platform Connectors<br/>Multi-Channel Support"]
        PLG4["LLM Providers<br/>AI Generation"]
    end
    
    %% Core Capabilities
    subgraph "⚡ Core Capabilities"
        CAP1["Educational Responses<br/>ReFi Knowledge Sharing"]
        CAP2["Regional Guidance<br/>Local Sustainability"]
        CAP3["Operational Support<br/>DAO Coordination"]
        CAP4["Community Building<br/>Network Connections"]
    end
    
    %% Specialized Knowledge Bases
    subgraph "📚 Knowledge Bases"
        KB1["ReFi Education<br/>224 Blog Posts • Terminology"]
        KB2["Regional Data<br/>Local Climate • Organizations"]
        KB3["Operations<br/>Governance • Procedures"]
    end
    
    %% Data Flow
    EXT1 --> A1
    EXT1 --> A2
    EXT2 --> A3
    EXT3 --> KB1
    EXT3 --> KB2
    EXT3 --> KB3
    
    A1 --> RT
    A2 --> RT
    A3 --> RT
    
    RT --> PLG1
    RT --> PLG2
    RT --> PLG3
    RT --> PLG4
    RT --> MEM
    
    PLG1 --> KB1
    PLG1 --> KB2
    PLG1 --> KB3
    
    PLG1 --> CAP1
    PLG2 --> CAP1
    PLG3 --> CAP1
    PLG4 --> CAP1
    
    PLG1 --> CAP2
    PLG2 --> CAP2
    PLG3 --> CAP2
    PLG4 --> CAP2
    
    PLG1 --> CAP3
    PLG2 --> CAP3
    PLG3 --> CAP3
    PLG4 --> CAP3
    
    PLG1 --> CAP4
    PLG2 --> CAP4
    PLG3 --> CAP4
    PLG4 --> CAP4
    
    CAP1 --> EXT1
    CAP2 --> EXT1
    CAP3 --> EXT2
    CAP4 --> EXT1
    
    MEM --> PLG2
```

## 🌱 Agent-Specific Architectures

### 1. 🌱 ReF[AI] DAO Community Agent

**🔗 Agent Documentation**: [`refi-dao-community-agent/README.md`](refi-dao-community-agent/README.md)

```mermaid
graph LR
    %% External Interfaces - Public Focus
    subgraph "🌐 Public Interfaces"
        PUB1["Twitter<br/>Public Outreach"]
        PUB2["Telegram<br/>Community Groups"]
        PUB3["Web Interface<br/>Direct Inquiries"]
    end
    
    %% ReF[AI] DAO Community Agent
    subgraph "🤖 ReF[AI] DAO Community Agent"
        CA["Education & Onboarding<br/>Public-Facing"]
    end
    
    %% ElizaOS Runtime
    subgraph "⚙️ ElizaOS Runtime"
        RT1["AgentRuntime"]
        MEM1["Memory System"]
    end
    
    %% Educational Plugins
    subgraph "🔧 Educational Plugins"
        PLG1["Knowledge RAG<br/>Educational Content"]
        PLG2["Platform Connectors<br/>Twitter • Telegram"]
        PLG3["LLM Providers<br/>OpenAI • Anthropic"]
    end
    
    %% Educational Capabilities
    subgraph "⚡ Educational Capabilities"
        CAP1["ReFi Concept Explanation"]
        CAP2["Onboarding Guidance"]
        CAP3["Community Connections"]
        CAP4["Resource Recommendations"]
    end
    
    %% Educational Knowledge
    subgraph "📚 Educational Knowledge"
        KB1["224 ReFi Blog Posts<br/>Comprehensive Content"]
        KB2["ReFi Basics<br/>Terminology & Concepts"]
        KB3["Getting Started<br/>Onboarding Flows"]
    end
    
    %% Data Flow
    PUB1 --> CA
    PUB2 --> CA
    PUB3 --> CA
    
    CA --> RT1
    RT1 --> PLG1
    RT1 --> PLG2
    RT1 --> PLG3
    RT1 --> MEM1
    
    PLG1 --> KB1
    PLG1 --> KB2
    PLG1 --> KB3
    
    PLG1 --> CAP1
    PLG2 --> CAP2
    PLG3 --> CAP3
    PLG1 --> CAP4
    
    CAP1 --> PUB1
    CAP2 --> PUB2
    CAP3 --> PUB3
    CAP4 --> PUB2
```

**🎯 Target Audience**: Public, newcomers  
**🌐 Primary Platforms**: Twitter, Telegram  
**⚡ Core Capabilities**: Education, Onboarding  
**📚 Knowledge Focus**: ReFi concepts, Blog posts  
**🔧 Plugin Emphasis**: Knowledge RAG, Social  

### 2. 🌐 ReF[AI] DAO Global Agent

**🔗 Agent Documentation**: [`refi-dao-global-agent/README.md`](refi-dao-global-agent/README.md)

```mermaid
graph LR
    %% External Interfaces - Internal Focus
    subgraph "🌐 Internal Interfaces"
        INT1["Private Telegram<br/>Team Coordination"]
        INT2["API Requests<br/>System Integration"]
        INT3["Meeting Systems<br/>Scheduling"]
    end
    
    %% ReF[AI] DAO Global Agent
    subgraph "🤖 ReF[AI] DAO Global Agent"
        GA["DAO Operations<br/>Internal Coordination"]
    end
    
    %% ElizaOS Runtime
    subgraph "⚙️ ElizaOS Runtime"
        RT3["AgentRuntime"]
        MEM3["Memory System"]
    end
    
    %% Operational Plugins
    subgraph "🔧 Operational Plugins"
        PLG7["SQL Database<br/>Data Management"]
        PLG8["Platform Connectors<br/>Telegram • APIs"]
        PLG9["Bootstrap<br/>Task Management"]
    end
    
    %% Operational Capabilities
    subgraph "⚡ Operational Capabilities"
        CAP9["Meeting Coordination"]
        CAP10["Progress Tracking"]
        CAP11["Contributor Recognition"]
        CAP12["Process Management"]
    end
    
    %% Operational Knowledge
    subgraph "📚 Operational Knowledge"
        KB7["DAO Governance<br/>Procedures & Policies"]
        KB8["Meeting Templates<br/>Agendas & Workflows"]
        KB9["Contribution Framework<br/>Recognition System"]
    end
    
    %% Data Flow
    INT1 --> GA
    INT2 --> GA
    INT3 --> GA
    
    GA --> RT3
    RT3 --> PLG7
    RT3 --> PLG8
    RT3 --> PLG9
    RT3 --> MEM3
    
    PLG7 --> KB7
    PLG8 --> KB8
    PLG9 --> KB9
    
    PLG7 --> CAP9
    PLG8 --> CAP10
    PLG9 --> CAP11
    PLG7 --> CAP12
    
    CAP9 --> INT1
    CAP10 --> INT2
    CAP11 --> INT3
    CAP12 --> INT1
```

**🎯 Target Audience**: Internal team  
**🌐 Primary Platforms**: Telegram  
**⚡ Core Capabilities**: Operations, Coordination  
**📚 Knowledge Focus**: DAO governance, Processes  
**🔧 Plugin Emphasis**: SQL Database, Task management  

### 3. 🌍 ReF[AI] Local Node Agent

**🔗 Agent Documentation**: [`refi-local-node-agent/README.md`](refi-local-node-agent/README.md)

```mermaid
graph LR
    %% External Interfaces - Regional Focus
    subgraph "🌐 Regional Interfaces"
        REG1["Discord<br/>Community Hubs"]
        REG2["Twitter<br/>Local Outreach"]
        REG3["Local Events<br/>In-Person"]
    end
    
    %% ReF[AI] Local Node Agent
    subgraph "🤖 ReF[AI] Local Node Agent"
        LNA["Regional Expertise<br/>Community Building"]
    end
    
    %% ElizaOS Runtime
    subgraph "⚙️ ElizaOS Runtime"
        RT2["AgentRuntime"]
        MEM2["Memory System"]
    end
    
    %% Regional Plugins
    subgraph "🔧 Regional Plugins"
        PLG4["Knowledge RAG<br/>Regional Content"]
        PLG5["Platform Connectors<br/>Discord • Twitter"]
        PLG6["SQL Database<br/>Local Data Tracking"]
    end
    
    %% Regional Capabilities
    subgraph "⚡ Regional Capabilities"
        CAP5["Local Setup Assistance"]
        CAP6["Community Development"]
        CAP7["Sustainability Projects"]
        CAP8["Regional Partnerships"]
    end
    
    %% Regional Knowledge
    subgraph "📚 Regional Knowledge"
        KB4["Local Climate Data<br/>Environmental Context"]
        KB5["Local Organizations<br/>Community Partners"]
        KB6["Sustainability Projects<br/>Regional Initiatives"]
    end
    
    %% Data Flow
    REG1 --> LNA
    REG2 --> LNA
    REG3 --> LNA
    
    LNA --> RT2
    RT2 --> PLG4
    RT2 --> PLG5
    RT2 --> PLG6
    RT2 --> MEM2
    
    PLG4 --> KB4
    PLG4 --> KB5
    PLG4 --> KB6
    
    PLG4 --> CAP5
    PLG5 --> CAP6
    PLG6 --> CAP7
    PLG4 --> CAP8
    
    CAP5 --> REG1
    CAP6 --> REG2
    CAP7 --> REG3
    CAP8 --> REG1
```

**🎯 Target Audience**: Local nodes & communities  
**🌐 Primary Platforms**: Telegram, Twitter  
**⚡ Core Capabilities**: Regional expertise  
**📚 Knowledge Focus**: Local data, Climate info  
**🔧 Plugin Emphasis**: Knowledge RAG, Data tracking

## 🔄 Agent Comparison

| Aspect | 🌱 ReF[AI] DAO Community Agent | 🌐 ReF[AI] DAO Global Agent | 🌍 ReF[AI] Local Node Agent |
|--------|------------------------------|------------------------------|------------------------------|
| **🎯 Target Audience** | Public, newcomers | Internal team | Local nodes & communities |
| **🌐 Primary Platforms** | Twitter, Telegram | Telegram | Telegram, Twitter |
| **⚡ Core Capabilities** | Education, Onboarding | Operations, Coordination | Regional expertise |
| **📚 Knowledge Focus** | ReFi concepts, Blog posts | DAO governance, Processes | Local data, Climate info |
| **🔧 Plugin Emphasis** | Knowledge RAG, Social | SQL Database, Task management | Knowledge RAG, Data tracking |

### 🔧 Shared Foundation

All three agents share the same ElizaOS architecture with specialized configurations:
- **Common Runtime**: AgentRuntime, Memory System, Plugin Manager
- **Core Plugins**: Knowledge RAG, SQL Database, LLM Providers, Bootstrap  
- **Platform Connectors**: Discord, Twitter, Telegram (conditionally loaded)
- **Specialized Content**: Agent-specific knowledge bases and capabilities

### 🔄 Data Flow Summary

The master architecture shows a clean flow:

1. **Input**: External platforms feed requests to specialized agents
2. **Processing**: ElizaOS runtime coordinates plugins and knowledge processing  
3. **Knowledge**: RAG system retrieves relevant content from specialized knowledge bases
4. **Generation**: LLM providers generate contextual responses
5. **Output**: Responses flow back through platform connectors to users

Each agent shares this same underlying flow while specializing in different knowledge domains and platform optimizations.

## 📂 Repository Structure

```
refi-agent-ecosystem/
├── README.md                           # This file - project overview and setup
├── package.json                        # Root workspace configuration
├── turbo.json                          # Monorepo build configuration
├── tsconfig.json                       # TypeScript configuration
├── bunfig.toml                         # Bun package manager configuration
│
├── refi-dao-community-agent/           # 🌱 ReF[AI] DAO Community Agent
│   ├── src/
│   ├── knowledge/                     # 📚 Knowledge base for ReFi education
│   ├── README.md                      # Agent-specific documentation
│   └── package.json                   # Agent dependencies
│
├── refi-dao-global-agent/              # 🌐 ReF[AI] DAO Global Agent
│   ├── src/
│   ├── knowledge/                     # 📋 Operational knowledge base
│   ├── README.md                      # Agent-specific documentation
│   └── package.json                   # Agent dependencies
│
├── refi-local-node-agent/              # 🌍 ReF[AI] Local Node Agent
│   ├── src/
│   ├── knowledge/                     # 📍 Local region-specific knowledge
│   ├── README.md                      # Agent-specific documentation
│   └── package.json                   # Agent dependencies
```

## 🏗️ Technical Architecture

### Core Components
- **Character Definition**: Personality, knowledge, and behavior configuration
- **Plugin System**: Modular capabilities (SQL, knowledge, platform integrations)
- **Knowledge Base**: RAG-enabled document processing for specialized knowledge
- **Platform Connectors**: Discord, Twitter, Telegram integrations
- **Runtime Environment**: ElizaOS agent runtime with full feature support

### Plugin Stack
All agents use a common plugin configuration with conditional loading:
- **Core**: `@elizaos/plugin-sql`, `@elizaos/plugin-bootstrap`
- **Knowledge**: `@elizaos/plugin-knowledge` (RAG processing)
- **LLM Providers**: OpenAI, Anthropic, OpenRouter, Google, Ollama (based on API keys)
- **Platforms**: Discord, Twitter, Telegram (based on tokens)

### Monorepo Structure
- **Root Configuration**: Shared TypeScript, Bun, and Turbo configurations
- **Individual Agents**: Self-contained projects with their own dependencies
- **Shared Dependencies**: Core ElizaOS packages shared across all agents
- **Build System**: Turbo for efficient building and development

## 🚀 Getting Started

### Prerequisites

- **Node.js 18+** or **Bun** (recommended)
- **Git** for version control
- **API Keys** for your chosen LLM providers and platforms

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/ReFiDAO/regen_eliza-refi_dao.git
   cd regen_eliza-refi_dao
   ```

2. **Install dependencies**:
   ```bash
   bun install
   ```

3. **Configure environment variables**:
   Create `.env` files in each agent directory with your API keys:
   ```bash
   # LLM Providers (choose one or more)
   OPENAI_API_KEY=your_openai_key
   ANTHROPIC_API_KEY=your_anthropic_key
   OPENROUTER_API_KEY=your_openrouter_key
   GOOGLE_GENERATIVE_AI_API_KEY=your_google_key
   OLLAMA_API_ENDPOINT=http://localhost:11434
   
   # Platform Integrations (choose based on your needs)
   DISCORD_API_TOKEN=your_discord_token
   TWITTER_API_KEY=your_twitter_key
   TWITTER_API_SECRET_KEY=your_twitter_secret
   TWITTER_ACCESS_TOKEN=your_twitter_access_token
   TWITTER_ACCESS_TOKEN_SECRET=your_twitter_access_secret
   TELEGRAM_BOT_TOKEN=your_telegram_token
   ```

### Running Individual Agents

Each agent can be run independently:

```bash
# ReF[AI] DAO Community Agent
cd refi-dao-community-agent
bun run start

# ReF[AI] DAO Global Agent  
cd refi-dao-global-agent
bun run start

# ReF[AI] Local Node Agent
cd refi-local-node-agent
bun run start
```

### Development

```bash
# Run tests for all agents
bun run test

# Run tests for specific agent
cd refi-dao-community-agent
bun run test

# Development mode with hot reload
bun run dev
```

