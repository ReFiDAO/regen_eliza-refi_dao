#!/bin/bash

# ReFi Local Node Setup Script
# This script helps you quickly customize the template for your local region

set -e

echo "🌱 ReFi Local Node Setup Script"
echo "================================"
echo ""

# Get region name
read -p "Enter your region name (e.g., 'Berlin', 'Portland', 'Nairobi'): " REGION_NAME

if [ -z "$REGION_NAME" ]; then
    echo "❌ Region name is required. Exiting."
    exit 1
fi

echo ""
echo "Setting up ReFi $REGION_NAME agent..."

# Update package.json
echo "📦 Updating package.json..."
sed -i.bak "s/refi-local-node-agent/refi-$REGION_NAME/g" package.json
sed -i.bak "s/ElizaOS agent template for ReFi Local Nodes/ReFi $REGION_NAME agent/g" package.json

# Update character.ts
echo "🤖 Updating character configuration..."
sed -i.bak "s/ReFi Local Node/ReFi $REGION_NAME/g" src/character.ts
sed -i.bak "s/your specific region/$REGION_NAME/g" src/character.ts

# Create .env.example if it doesn't exist
if [ ! -f ".env.example" ]; then
    echo "🔧 Creating .env.example..."
    cat > .env.example << EOF
# LLM Provider API Keys (configure at least one)
OPENAI_API_KEY=your_openai_api_key_here
ANTHROPIC_API_KEY=your_anthropic_api_key_here
GOOGLE_GENERATIVE_AI_API_KEY=your_google_ai_api_key_here
OPENROUTER_API_KEY=your_openrouter_api_key_here
OLLAMA_API_ENDPOINT=http://localhost:11434

# Platform Integrations (optional)
DISCORD_API_TOKEN=your_discord_token_here
TWITTER_API_KEY=your_twitter_api_key_here
TWITTER_API_SECRET_KEY=your_twitter_secret_here
TWITTER_ACCESS_TOKEN=your_twitter_access_token_here
TWITTER_ACCESS_TOKEN_SECRET=your_twitter_access_secret_here
TELEGRAM_BOT_TOKEN=your_telegram_bot_token_here

# Agent Configuration
LOAD_DOCS_ON_STARTUP=true
PGLITE_DATA_DIR=./data
EOF
fi

# Update README
echo "📖 Updating README..."
sed -i.bak "s/refi-local-node-agent/refi-$REGION_NAME/g" README.md
sed -i.bak "s/ReFi Local Node Agent Template/ReFi $REGION_NAME Agent/g" README.md

# Create customization checklist
echo "✅ Creating customization checklist..."
cat > CUSTOMIZATION_CHECKLIST.md << EOF
# ReFi $REGION_NAME Customization Checklist

## Required Customizations

- [ ] **Agent Identity**: Update agent name and character in \`src/character.ts\`
- [ ] **Local Knowledge**: Customize \`knowledge/local-region/local-sustainability-initiatives-template.md\`
- [ ] **Getting Started Guide**: Update \`knowledge/refi/getting-started-refi-local-template.md\`
- [ ] **Case Studies**: Add local examples to \`knowledge/refi/refi-projects-case-studies.md\`

## Local Information to Add

- [ ] **Climate Plans**: Add $REGION_NAME's climate action plans and policies
- [ ] **Organizations**: List local sustainability organizations and contact info
- [ ] **Educational Institutions**: Include relevant degree programs and courses
- [ ] **Funding Sources**: Document local grants, investment opportunities
- [ ] **Events**: Add local sustainability events and meetups
- [ ] **Projects**: Include local ReFi and sustainability project examples

## Technical Setup

- [ ] **Environment Variables**: Configure API keys in \`.env\` file
- [ ] **Platform Integrations**: Set up Discord/Twitter/Telegram if needed
- [ ] **Testing**: Test with local community members
- [ ] **Deployment**: Deploy to your preferred hosting platform

## Next Steps

1. Copy \`.env.example\` to \`.env\` and configure your API keys
2. Customize the knowledge base files with $REGION_NAME-specific information
3. Test the agent locally with \`elizaos start\`
4. Share with your local ReFi community!

EOF

echo ""
echo "🎉 Setup complete! Your ReFi $REGION_NAME agent is ready for customization."
echo ""
echo "Next steps:"
echo "1. Copy .env.example to .env and configure your API keys"
echo "2. Follow the CUSTOMIZATION_CHECKLIST.md to add local information"
echo "3. Test with 'elizaos start'"
echo ""
echo "Happy building! 🌱" 