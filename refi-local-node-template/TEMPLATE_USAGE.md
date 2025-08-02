# ReF[AI] Local Node Template Usage Guide

This guide explains how to use the ReF[AI] Local Node Agent Template to create a region-specific ReFi agent for your local community.

## What is a ReFi Local Node?

A ReFi Local Node is a place-based community that serves as a living laboratory for regenerative finance in your region. As part of the ReFi DAO network, local nodes:

- **Build local regenerative economies** through events, media, software, capital raising, and land projects
- **Experiment with and implement** ReFi tools and systems
- **Operate with regional autonomy** while maintaining alignment with ReFi DAO's global vision
- **Share knowledge and learnings** with the broader network

## Quick Start

### Option 1: Automated Setup (Recommended)

1. **Run the setup script:**
   ```bash
   cd refi-local-node-template
   ./scripts/setup-local-node.sh
   ```

2. **Follow the prompts** to enter your region name

3. **Configure your environment:**
   ```bash
   cp .env.example .env
   # Edit .env with your API keys
   ```

4. **Customize the knowledge base** following the generated checklist

### Option 2: Manual Setup

1. **Clone or copy the template**
2. **Update package.json** with your region name
3. **Customize src/character.ts** with regional context
4. **Update knowledge files** with local information
5. **Configure environment variables**

## Detailed Customization Guide

### Step 1: Agent Identity

Update `src/character.ts` to reflect your region:

```typescript
export const character: Character = {
  name: 'ReFi [Your Region]', // e.g., 'ReFi Berlin', 'ReFi Portland'
  system: 'You are a ReFi [Your Region] agent...', // Customize system prompt
  // Update bio, topics, and message examples
};
```

**Key areas to customize:**
- Agent name and identity
- System prompt with regional context
- Bio and expertise areas
- Topics relevant to your region
- Message examples with local references

### Step 2: Local Knowledge Base

#### A. Regional Sustainability Information

Edit `knowledge/local-region/local-sustainability-initiatives-template.md`:

- **Climate Plans**: Add your region's climate action plans and targets
- **Energy Initiatives**: Document local renewable energy projects and cooperatives
- **Circular Economy**: List local circular economy initiatives and organizations
- **Organizations**: Add local sustainability organizations with contact information
- **Funding Sources**: Document local grants and investment opportunities

#### B. Getting Started Guide

Update `knowledge/refi/getting-started-refi-local-template.md`:

- **Educational Institutions**: Add local universities and training programs
- **Community Organizations**: List local groups and how to get involved
- **Events and Meetups**: Include local sustainability events
- **Career Opportunities**: Document local ReFi job opportunities
- **Investment Opportunities**: List local impact investment options

#### C. Case Studies

Enhance `knowledge/refi/refi-projects-case-studies.md`:

- **Local Projects**: Add examples from your region
- **Success Stories**: Document local ReFi successes
- **Lessons Learned**: Include regional insights and challenges
- **Best Practices**: Share local implementation strategies

### Step 3: Platform Configuration

#### Environment Variables

Configure your `.env` file with at least one LLM provider:

```bash
# Required: At least one LLM provider
OPENAI_API_KEY=your_openai_key
ANTHROPIC_API_KEY=your_anthropic_key
GOOGLE_GENERATIVE_AI_API_KEY=your_google_key

# Optional: Platform integrations
DISCORD_API_TOKEN=your_discord_token
TWITTER_API_KEY=your_twitter_key
TELEGRAM_BOT_TOKEN=your_telegram_token
```

#### Platform Integrations

**Discord Integration:**
- Create a Discord bot application
- Add the bot to your local ReFi community server
- Configure permissions for the bot

**Twitter Integration:**
- Create a Twitter developer account
- Set up a Twitter app with read/write permissions
- Configure webhook endpoints if needed

**Telegram Integration:**
- Create a Telegram bot via @BotFather
- Add the bot to your local community groups
- Configure bot commands and responses

### Step 4: Testing and Validation

#### Local Testing

1. **Start the agent:**
   ```bash
   elizaos start
   ```

2. **Test basic functionality:**
   - Ask about ReFi concepts
   - Request local information
   - Test platform integrations

3. **Validate local knowledge:**
   - Verify local organization information
   - Check contact details and links
   - Test regional context responses

#### Community Testing

1. **Share with local community members**
2. **Gather feedback on relevance and accuracy**
3. **Test with different user types (individuals, organizations, investors)**
4. **Validate platform integrations with community members**

### Step 5: Deployment

#### Local Deployment

For local community use:
```bash
# Build the agent
bun run build

# Start the server
elizaos start
```

#### Cloud Deployment

For wider community access:

1. **Choose a hosting platform** (Railway, Fly.io, Heroku, etc.)
2. **Set up environment variables** in your hosting platform
3. **Configure domain and SSL** if needed
4. **Set up monitoring and logging**

## Best Practices

### Content Guidelines

1. **Keep it Local**: Focus on region-specific information and opportunities
2. **Stay Current**: Regularly update local organization information and events
3. **Be Inclusive**: Include diverse perspectives and community voices
4. **Verify Information**: Double-check contact details and links
5. **Add Context**: Explain how global ReFi concepts apply locally

### Technical Guidelines

1. **Start Simple**: Begin with basic functionality and add features gradually
2. **Test Thoroughly**: Validate all integrations before community launch
3. **Monitor Performance**: Track usage and identify improvement areas
4. **Backup Regularly**: Keep backups of your knowledge base and configuration
5. **Document Changes**: Maintain a changelog of updates and improvements

### Community Guidelines

1. **Engage Locally**: Work with local sustainability organizations
2. **Share Learnings**: Contribute insights back to the ReFi DAO network
3. **Foster Collaboration**: Connect local initiatives with global networks
4. **Measure Impact**: Track how your agent helps local community members
5. **Iterate Based on Feedback**: Continuously improve based on user needs

## Troubleshooting

### Common Issues

**Agent not responding to local queries:**
- Check that local knowledge files are properly formatted
- Verify that the knowledge plugin is loading documents
- Ensure regional context is included in the system prompt

**Platform integrations not working:**
- Verify API keys and tokens are correct
- Check platform-specific permissions and settings
- Review logs for error messages

**Knowledge base not updating:**
- Restart the agent after making changes
- Check file permissions and paths
- Verify markdown formatting is correct

### Getting Help

1. **Check ElizaOS documentation** for technical issues
2. **Join ReFi DAO Discord** for community support
3. **Review other local node implementations** for examples
4. **Share issues and solutions** with the broader network

## Examples and Inspiration

### Successful Local Node Implementations

- **ReFi Barcelona**: Focus on Mediterranean sustainability and circular economy
- **ReFi Berlin**: Emphasis on climate tech and urban regeneration
- **ReFi Portland**: Community-based renewable energy and local food systems

### Key Success Factors

1. **Strong Local Partnerships**: Work with existing sustainability organizations
2. **Community Engagement**: Involve local stakeholders in development
3. **Regular Updates**: Keep information current and relevant
4. **Clear Value Proposition**: Make it easy for users to understand benefits
5. **Measurable Impact**: Track how the agent helps local initiatives

## Next Steps

1. **Complete the customization checklist**
2. **Test with your local community**
3. **Deploy and share with your network**
4. **Contribute learnings back to the ReFi DAO network**
5. **Help other regions set up their local nodes**

---

**Ready to build your local ReFi ecosystem? Start with the setup script and customize for your region!** 