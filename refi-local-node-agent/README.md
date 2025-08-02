# ReF[AI] Local Node Agent Template

An ElizaOS agent template specialized in Regenerative Finance (ReFi) and local sustainability ecosystem development. This template provides a foundation for creating region-specific ReFi agents that can educate users about regenerative finance concepts, connect them with local sustainability initiatives, and provide insights on regenerative economic models in their specific regional context.

## Overview

The ReF[AI] Local Node Agent Template is designed to:
- **Educate** users about regenerative finance concepts and applications
- **Connect** people with local sustainability initiatives and regional organizations  
- **Guide** individuals and organizations in implementing ReFi projects
- **Bridge** traditional finance with innovative regenerative approaches
- **Promote** community-driven environmental and social impact
- **Adapt** to any region's unique sustainability ecosystem and opportunities

## Features

### 🧠 Knowledge Base Template
The agent includes comprehensive knowledge templates about:
- **ReFi Fundamentals**: Core principles, mechanisms, and technology stack
- **Local Sustainability**: Template for documenting regional climate plans, energy cooperatives, circular economy initiatives
- **Getting Started**: Practical guides for individuals, organizations, and investors
- **Case Studies**: Real-world ReFi projects and applications
- **Local Resources**: Template for documenting organizations, events, funding opportunities, and networks

### 🤖 Capabilities
- Expert-level conversations about regenerative finance
- Local context for regional green economy
- Practical guidance for getting involved in ReFi
- Connection to relevant local initiatives and organizations
- Educational content accessible to both beginners and experts

### 🔧 Technical Features
- **Knowledge Plugin**: RAG-enabled document search and retrieval
- **Multi-LLM Support**: OpenAI, Anthropic, Google, OpenRouter, and Ollama integration
- **Web Interface**: Accessible through browser at http://localhost:3000
- **Real-time Learning**: Continuous knowledge base updates
- **Multi-platform Support**: Discord, Twitter, and Telegram integrations

## Quick Start

### Prerequisites
- Node.js 18+ or Bun
- At least one LLM provider API key (OpenAI, Anthropic, Google, etc.)

### Installation & Setup

1. **Navigate to the project directory:**
   ```bash
   cd refi-local-node-agent
   ```

2. **Install dependencies:**
   ```bash
   bun install
   ```

3. **Configure environment:**
   Copy the example environment file and configure your settings:
   ```bash
   cp .env.example .env
   ```
   
   Configure at least one LLM provider:
   - `OPENAI_API_KEY`: Your OpenAI API key
   - `ANTHROPIC_API_KEY`: Your Anthropic API key
   - `GOOGLE_GENERATIVE_AI_API_KEY`: Your Google AI API key
   - `OPENROUTER_API_KEY`: Your OpenRouter API key
   - `OLLAMA_API_ENDPOINT`: Your local Ollama endpoint

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

## Customization Guide

### Step 1: Update Agent Identity

Edit `src/character.ts` to customize the agent for your region:

```typescript
export const character: Character = {
  name: 'ReFi [Your Region]', // Update with your region name
  system: 'You are a ReFi [Your Region] agent...', // Customize system prompt
  // Update bio, topics, and message examples with regional context
};
```

### Step 2: Customize Knowledge Base

1. **Update Local Region Information:**
   - Edit `knowledge/local-region/local-sustainability-initiatives-template.md`
   - Replace all placeholder text with your region's specific information
   - Add local organizations, climate plans, and initiatives

2. **Customize Getting Started Guide:**
   - Edit `knowledge/refi/getting-started-refi-local-template.md`
   - Add local educational institutions, organizations, and opportunities
   - Include region-specific funding sources and support programs

3. **Add Regional Case Studies:**
   - Update `knowledge/refi/refi-projects-case-studies.md`
   - Add local ReFi project examples
   - Include regional success stories and lessons learned

### Step 3: Configure Platform Integrations

Enable platform integrations by setting environment variables:

```bash
# Discord integration
DISCORD_API_TOKEN=your_discord_token

# Twitter integration
TWITTER_API_KEY=your_twitter_api_key
TWITTER_API_SECRET_KEY=your_twitter_secret
TWITTER_ACCESS_TOKEN=your_access_token
TWITTER_ACCESS_TOKEN_SECRET=your_access_secret

# Telegram integration
TELEGRAM_BOT_TOKEN=your_telegram_token
```

### Step 4: Test and Deploy

1. **Test locally:**
   ```bash
   elizaos start
   ```

2. **Run tests:**
   ```bash
   bun run test
   ```

3. **Deploy to your preferred hosting platform**

## Knowledge Base Structure

The agent's knowledge is organized in the `knowledge/` directory:

```
knowledge/
├── basics/
│   └── what-is-refi.md                    # Comprehensive ReFi introduction
├── local-region/
│   └── local-sustainability-initiatives-template.md  # Regional context template
└── refi/
    ├── getting-started-refi-local-template.md        # Involvement guide template
    └── refi-projects-case-studies.md                 # Project examples
```

### Customization Checklist

- [ ] Update agent name and character configuration
- [ ] Replace placeholder content in knowledge files
- [ ] Add local organizations and contact information
- [ ] Include regional climate plans and policies
- [ ] Document local funding sources and opportunities
- [ ] Add region-specific case studies and examples
- [ ] Configure platform integrations
- [ ] Test with local community members
- [ ] Deploy and share with your network

## Usage Examples

### For Individuals
- "How can I get involved in our region's sustainability scene?"
- "What is regenerative finance and how does it work?"
- "Are there any local energy cooperatives I can join?"
- "What career opportunities exist in ReFi?"

### For Organizations
- "How can our business implement ReFi principles?"
- "What are some successful circular economy projects in our region?"
- "How do we measure and tokenize environmental impact?"
- "What local partners should we connect with?"

### For Investors
- "What ReFi investment opportunities exist in our region?"
- "How do I evaluate impact investments?"
- "What are the key success factors for ReFi projects?"
- "Where can I find green bonds and impact funds?"

## Architecture

Built on ElizaOS with:
- **Core Runtime**: Agent execution and management
- **Knowledge Plugin**: RAG-powered document search
- **Multi-LLM Support**: Flexible language model integration
- **SQL Plugin**: Local database for memory and knowledge storage
- **Bootstrap Plugin**: Core message handling and interactions
- **Platform Plugins**: Discord, Twitter, Telegram integrations

## Contributing

To contribute to the ReF[AI] Local Node Agent Template:
1. Add new knowledge document templates
2. Improve customization instructions
3. Add new platform integrations
4. Enhance regional adaptation features
5. Submit improvements and expansions

## License

This project follows the ElizaOS licensing terms.

## Support

For questions about:
- **ReFi concepts**: Ask the agent directly
- **Local customization**: Follow the customization guide
- **Technical issues**: Check ElizaOS documentation
- **Regional adaptation**: Connect with other local nodes

## Template Usage

This template serves as a foundation for creating region-specific ReFi agents. Each local node should:

1. **Customize the content** for their specific region
2. **Add local knowledge** and resources
3. **Configure platform integrations** relevant to their community
4. **Test with local users** to ensure relevance
5. **Share learnings** with the broader ReFi network

---

**Ready to create your local ReFi agent? Start customizing this template for your region!**
