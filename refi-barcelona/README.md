# ReFi Barcelona Agent

An ElizaOS agent specialized in Regenerative Finance (ReFi) and Barcelona's sustainability ecosystem. This agent combines deep knowledge of regenerative economic models with local expertise about Barcelona's green economy, climate initiatives, and innovation ecosystem.

## Overview

ReFi Barcelona is an AI agent designed to:
- **Educate** users about regenerative finance concepts and applications
- **Connect** people with Barcelona's sustainability initiatives and local organizations  
- **Guide** individuals and organizations in implementing ReFi projects
- **Bridge** traditional finance with innovative regenerative approaches
- **Promote** community-driven environmental and social impact

## Features

### 🧠 Knowledge Base
The agent includes comprehensive knowledge about:
- **ReFi Fundamentals**: Core principles, mechanisms, and technology stack
- **Barcelona Sustainability**: Local climate plans, energy cooperatives, circular economy initiatives
- **Getting Started**: Practical guides for individuals, organizations, and investors
- **Case Studies**: Real-world ReFi projects and applications
- **Local Resources**: Organizations, events, funding opportunities, and networks

### 🤖 Capabilities
- Expert-level conversations about regenerative finance
- Local context for Barcelona's green economy
- Practical guidance for getting involved in ReFi
- Connection to relevant local initiatives and organizations
- Educational content accessible to both beginners and experts

### 🔧 Technical Features
- **Knowledge Plugin**: RAG-enabled document search and retrieval
- **OpenAI Integration**: Advanced language understanding and generation
- **Web Interface**: Accessible through browser at http://localhost:3000
- **Real-time Learning**: Continuous knowledge base updates

## Quick Start

### Prerequisites
- Node.js 18+ or Bun
- OpenAI API key

### Installation & Setup

1. **Navigate to the project directory:**
   ```bash
   cd refi-barcelona
   ```

2. **Install dependencies:**
   ```bash
   bun install
   ```

3. **Configure environment:**
   The `.env` file is already configured with the necessary settings:
   - `OPENAI_API_KEY`: Your OpenAI API key (already set)
   - `LOAD_DOCS_ON_STARTUP=true`: Enables automatic knowledge loading
   - `PGLITE_DATA_DIR`: Local database path

4. **Build the agent:**
   ```bash
   bun run build
   ```

5. **Start the agent:**
   ```bash
   elizaos start
   ```

6. **Access the web interface:**
   Open http://localhost:3000 in your browser

## Knowledge Base

The agent's knowledge is organized in the `knowledge/` directory:

```
knowledge/
├── basics/
│   └── what-is-refi.md           # Comprehensive ReFi introduction
├── barcelona/
│   └── barcelona-sustainability-initiatives.md  # Local context and opportunities
└── refi/
    ├── getting-started-refi-barcelona.md        # Practical involvement guide
    └── refi-projects-case-studies.md            # Real-world examples
```

### Knowledge Topics Include:
- **ReFi Concepts**: Principles, mechanisms, technology, applications
- **Barcelona Context**: Climate plans, energy cooperatives, circular economy
- **Practical Guidance**: How to get involved, organizations to join, career paths
- **Case Studies**: Global and Barcelona-relevant project examples
- **Resources**: Local organizations, events, funding opportunities

## Usage Examples

### For Individuals
- "How can I get involved in Barcelona's sustainability scene?"
- "What is regenerative finance and how does it work?"
- "Are there any local energy cooperatives I can join?"
- "What career opportunities exist in ReFi?"

### For Organizations
- "How can our business implement ReFi principles?"
- "What are some successful circular economy projects in Barcelona?"
- "How do we measure and tokenize environmental impact?"
- "What local partners should we connect with?"

### For Investors
- "What ReFi investment opportunities exist in Barcelona?"
- "How do I evaluate impact investments?"
- "What are the key success factors for ReFi projects?"
- "Where can I find green bonds and impact funds?"

## Character Configuration

The agent is configured with:
- **Name**: ReFi Barcelona
- **Expertise**: Regenerative finance, sustainability, Barcelona green economy
- **Plugins**: Knowledge, OpenAI, SQL, Bootstrap
- **RAG Mode**: Enabled for intelligent document retrieval
- **Style**: Educational, inspiring, action-oriented, locally-relevant

## Development

### Adding Knowledge
To add new knowledge to the agent:

1. Create markdown files in the `knowledge/` directory
2. Restart the agent to reload documents
3. The knowledge plugin will automatically process and index new content

### Customization
- **Character**: Modify `src/character.ts` to adjust personality and behavior
- **Plugins**: Add additional plugins in the character configuration
- **Knowledge**: Expand the knowledge base with new documents
- **Settings**: Update `.env` for different configurations

## Local Organizations & Resources

The agent has knowledge about:
- **Som Energia**: Renewable energy cooperative
- **Fab City Barcelona**: Local production and circular economy
- **Impact Hub Barcelona**: Social innovation incubator
- **Barcelona Activa**: Municipal business development
- **22@ Innovation District**: Tech and sustainability startups
- **IAAC**: Institute for Advanced Architecture of Catalonia

## Architecture

Built on ElizaOS with:
- **Core Runtime**: Agent execution and management
- **Knowledge Plugin**: RAG-powered document search
- **OpenAI Plugin**: Language understanding and generation
- **SQL Plugin**: Local database for memory and knowledge storage
- **Bootstrap Plugin**: Core message handling and interactions

## Contributing

To contribute to the ReFi Barcelona agent:
1. Add new knowledge documents to the `knowledge/` directory
2. Update character configuration for new capabilities
3. Test changes with the local development environment
4. Submit improvements and expansions

## License

This project follows the ElizaOS licensing terms.

## Support

For questions about:
- **ReFi concepts**: Ask the agent directly
- **Barcelona resources**: The agent has extensive local knowledge
- **Technical issues**: Check ElizaOS documentation
- **Local involvement**: Agent can connect you with relevant organizations

---

**Ready to explore regenerative finance in Barcelona? Start chatting with the agent at http://localhost:3000!**
