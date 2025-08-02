# ReFi Agent Ecosystem

A comprehensive framework for ReFi (Regenerative Finance) AI agents built on ElizaOS, designed to support the regenerative finance ecosystem through specialized AI assistants.

## 🌱 Project Overview

This repository contains a collection of specialized AI agents focused on regenerative finance, sustainability, and community coordination. Each agent is designed to serve specific roles within the ReFi ecosystem, from education and community building to operational coordination.



## 🏗️ ReFi Agent Ecosystem - Master Architecture

```mermaid
graph LR
    %% User Input
    subgraph "👤 User Input"
        USR1["Public Users<br/>Questions & Requests"]
        USR2["Internal Team<br/>Coordination Needs"]
        USR3["Local Communities<br/>Regional Inquiries"]
    end
    
    %% Plugin System
    subgraph "🔧 Plugins"
        PLG1["Knowledge RAG<br/>Document Processing"]
        PLG2["SQL Database<br/>Data Persistence"]
        PLG3["Platform Connectors<br/>Multi-Channel Support"]
        PLG4["LLM Providers<br/>AI Generation"]
    end
    
    %% Core Capabilities
    subgraph "⚡ Capabilities"
        CAP1["Educational Responses<br/>ReFi Knowledge Sharing"]
        CAP2["Regional Guidance<br/>Local Sustainability"]
        CAP3["Operational Support<br/>DAO Coordination"]
        CAP4["Community Building<br/>Network Connections"]
    end
    
    %% Knowledge Bases
    subgraph "📚 Knowledge"
        KB1["ReFi Education<br/>224 Blog Posts • Terminology"]
        KB2["Regional Data<br/>Local Climate • Organizations"]
        KB3["Operations<br/>Governance • Procedures"]
    end
    
    %% Output
    subgraph "📤 Output"
        OUT1["Public Platforms<br/>Twitter • Telegram • Discord"]
        OUT2["Internal Channels<br/>Private Teams • APIs"]
        OUT3["Community Responses<br/>Direct Support"]
    end
    
    %% Data Flow
    USR1 --> PLG1
    USR2 --> PLG2
    USR3 --> PLG3
    
    PLG1 --> KB1
    PLG2 --> KB2
    PLG3 --> KB3
    PLG4 --> KB1
    PLG4 --> KB2
    PLG4 --> KB3
    
    PLG1 --> CAP1
    PLG2 --> CAP2
    PLG3 --> CAP3
    PLG4 --> CAP4
    
    KB1 --> CAP1
    KB2 --> CAP2
    KB3 --> CAP3
    
    CAP1 --> OUT1
    CAP2 --> OUT2
    CAP3 --> OUT3
    CAP4 --> OUT1
```

## 🌱 Agent-Specific Architectures

### 1. 🌱 ReF[AI] DAO Community Agent

**🔗 Agent Documentation**: [`refi-dao-community-agent/README.md`](refi-dao-community-agent/README.md)

```mermaid
graph LR
    %% User Input
    subgraph "👤 User Input"
        USR1["Public Questions<br/>ReFi Newcomers"]
        USR2["Community Seekers<br/>Onboarding Needs"]
        USR3["Educational Requests<br/>Learning Goals"]
    end
    
    %% Plugins
    subgraph "🔧 Plugins"
        PLG1["Knowledge RAG<br/>Educational Content"]
        PLG2["Platform Connectors<br/>Twitter • Telegram"]
        PLG3["LLM Providers<br/>OpenAI • Anthropic"]
    end
    
    %% Capabilities
    subgraph "⚡ Capabilities"
        CAP1["ReFi Concept Explanation"]
        CAP2["Onboarding Guidance"]
        CAP3["Community Connections"]
        CAP4["Resource Recommendations"]
    end
    
    %% Knowledge
    subgraph "📚 Knowledge"
        KB1["224 ReFi Blog Posts<br/>Comprehensive Content"]
        KB2["ReFi Basics<br/>Terminology & Concepts"]
        KB3["Getting Started<br/>Onboarding Flows"]
    end
    
    %% Output
    subgraph "📤 Output"
        OUT1["Twitter<br/>Public Outreach"]
        OUT2["Telegram<br/>Community Groups"]
        OUT3["Web Interface<br/>Direct Responses"]
    end
    
    %% Data Flow
    USR1 --> PLG1
    USR2 --> PLG2
    USR3 --> PLG3
    
    PLG1 --> KB1
    PLG1 --> KB2
    PLG1 --> KB3
    
    PLG1 --> CAP1
    PLG2 --> CAP2
    PLG3 --> CAP3
    PLG1 --> CAP4
    
    KB1 --> CAP1
    KB2 --> CAP2
    KB3 --> CAP3
    
    CAP1 --> OUT1
    CAP2 --> OUT2
    CAP3 --> OUT3
    CAP4 --> OUT2
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
    %% User Input
    subgraph "👤 User Input"
        USR1["Team Coordination<br/>Internal Requests"]
        USR2["Meeting Needs<br/>Scheduling Requests"]
        USR3["Process Queries<br/>DAO Operations"]
    end
    
    %% Plugins
    subgraph "🔧 Plugins"
        PLG1["SQL Database<br/>Data Management"]
        PLG2["Platform Connectors<br/>Telegram • APIs"]
        PLG3["Bootstrap<br/>Task Management"]
    end
    
    %% Capabilities
    subgraph "⚡ Capabilities"
        CAP1["Meeting Coordination"]
        CAP2["Progress Tracking"]
        CAP3["Contributor Recognition"]
        CAP4["Process Management"]
    end
    
    %% Knowledge
    subgraph "📚 Knowledge"
        KB1["DAO Governance<br/>Procedures & Policies"]
        KB2["Meeting Templates<br/>Agendas & Workflows"]
        KB3["Contribution Framework<br/>Recognition System"]
    end
    
    %% Output
    subgraph "📤 Output"
        OUT1["Private Telegram<br/>Team Coordination"]
        OUT2["API Responses<br/>System Integration"]
        OUT3["Meeting Systems<br/>Scheduling Results"]
    end
    
    %% Data Flow
    USR1 --> PLG1
    USR2 --> PLG2
    USR3 --> PLG3
    
    PLG1 --> KB1
    PLG2 --> KB2
    PLG3 --> KB3
    
    PLG1 --> CAP1
    PLG2 --> CAP2
    PLG3 --> CAP3
    PLG1 --> CAP4
    
    KB1 --> CAP1
    KB2 --> CAP2
    KB3 --> CAP3
    
    CAP1 --> OUT1
    CAP2 --> OUT2
    CAP3 --> OUT3
    CAP4 --> OUT1
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
    %% User Input
    subgraph "👤 User Input"
        USR1["Local Communities<br/>Regional Questions"]
        USR2["Sustainability Seekers<br/>Project Inquiries"]
        USR3["Partnership Requests<br/>Collaboration Needs"]
    end
    
    %% Plugins
    subgraph "🔧 Plugins"
        PLG1["Knowledge RAG<br/>Regional Content"]
        PLG2["Platform Connectors<br/>Discord • Twitter"]
        PLG3["SQL Database<br/>Local Data Tracking"]
    end
    
    %% Capabilities
    subgraph "⚡ Capabilities"
        CAP1["Local Setup Assistance"]
        CAP2["Community Development"]
        CAP3["Sustainability Projects"]
        CAP4["Regional Partnerships"]
    end
    
    %% Knowledge
    subgraph "📚 Knowledge"
        KB1["Local Climate Data<br/>Environmental Context"]
        KB2["Local Organizations<br/>Community Partners"]
        KB3["Sustainability Projects<br/>Regional Initiatives"]
    end
    
    %% Output
    subgraph "📤 Output"
        OUT1["Discord<br/>Community Hubs"]
        OUT2["Twitter<br/>Local Outreach"]
        OUT3["Local Events<br/>In-Person Support"]
    end
    
    %% Data Flow
    USR1 --> PLG1
    USR2 --> PLG2
    USR3 --> PLG3
    
    PLG1 --> KB1
    PLG2 --> KB2
    PLG3 --> KB3
    
    PLG1 --> CAP1
    PLG2 --> CAP2
    PLG3 --> CAP3
    PLG1 --> CAP4
    
    KB1 --> CAP1
    KB2 --> CAP2
    KB3 --> CAP3
    
    CAP1 --> OUT1
    CAP2 --> OUT2
    CAP3 --> OUT3
    CAP4 --> OUT1
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

