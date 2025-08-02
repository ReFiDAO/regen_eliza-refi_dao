#!/bin/bash

# ReF[AI] Local Node Template Enhancement Script
# This script adds additional features and improvements to the template

set -e

echo "🚀 ReF[AI] Local Node Template Enhancement"
echo "======================================="
echo ""

# Create additional template files and directories

echo "📁 Creating additional template directories..."

# Create examples directory
mkdir -p examples
mkdir -p examples/berlin
mkdir -p examples/portland
mkdir -p examples/nairobi

# Create deployment directory
mkdir -p deployment
mkdir -p deployment/docker
mkdir -p deployment/railway
mkdir -p deployment/fly

# Create additional scripts directory
mkdir -p scripts/templates

echo "📝 Creating example configurations..."

# Create Berlin example
cat > examples/berlin/README.md << 'EOF'
# ReFi Berlin Example

This is an example of how the ReF[AI] Local Node Template can be customized for Berlin, Germany.

## Key Customizations

- **Climate Focus**: Berlin's commitment to climate neutrality by 2045
- **Energy Transition**: Emphasis on community energy projects and cooperatives
- **Circular Economy**: Berlin's strong circular economy initiatives
- **Tech Innovation**: Integration with Berlin's vibrant tech ecosystem

## Local Organizations

- **BürgerEnergie Berlin**: Community energy cooperative
- **Klimaneustart Berlin**: Climate action initiative
- **Circular Berlin**: Circular economy network
- **Impact Hub Berlin**: Social innovation hub

## Regional Context

Berlin's unique position as a city-state allows for innovative policy approaches to sustainability and regenerative finance.
EOF

# Create Portland example
cat > examples/portland/README.md << 'EOF'
# ReFi Portland Example

This is an example of how the ReF[AI] Local Node Template can be customized for Portland, Oregon.

## Key Customizations

- **Local Food Systems**: Emphasis on regenerative agriculture and local food networks
- **Community Solar**: Strong community solar and renewable energy initiatives
- **Biodiversity**: Focus on urban biodiversity and green infrastructure
- **Social Justice**: Integration of environmental and social justice principles

## Local Organizations

- **Energy Trust of Oregon**: Energy efficiency and renewable energy
- **Oregon Tilth**: Organic agriculture certification and support
- **Portland Clean Energy Fund**: Community-driven climate action
- **Sustainable Northwest**: Regional sustainability organization

## Regional Context

Portland's progressive policies and strong community engagement create opportunities for innovative ReFi approaches.
EOF

# Create Nairobi example
cat > examples/nairobi/README.md << 'EOF'
# ReFi Nairobi Example

This is an example of how the ReF[AI] Local Node Template can be customized for Nairobi, Kenya.

## Key Customizations

- **Mobile Money Integration**: Leveraging Kenya's mobile money ecosystem
- **Community-Based Conservation**: Focus on wildlife and ecosystem conservation
- **Agricultural Innovation**: Supporting smallholder farmers and regenerative agriculture
- **Youth Engagement**: Empowering young entrepreneurs in sustainability

## Local Organizations

- **M-Pesa Foundation**: Mobile money for social impact
- **Wildlife Works**: Community-based conservation and carbon credits
- **Shamba Centre**: Agricultural innovation and sustainability
- **Green Belt Movement**: Environmental conservation and community empowerment

## Regional Context

Nairobi's position as a regional hub for innovation and its strong mobile money ecosystem create unique opportunities for ReFi applications.
EOF

echo "🔧 Creating deployment configurations..."

# Create Docker deployment
cat > deployment/docker/Dockerfile << 'EOF'
FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./
COPY bun.lockb ./

# Install dependencies
RUN npm install -g bun
RUN bun install --frozen-lockfile

# Copy source code
COPY . .

# Build the application
RUN bun run build

# Expose port
EXPOSE 3000

# Start the application
CMD ["bun", "run", "start"]
EOF

# Create Railway deployment
cat > deployment/railway/railway.json << 'EOF'
{
  "$schema": "https://railway.app/railway.schema.json",
  "build": {
    "builder": "NIXPACKS"
  },
  "deploy": {
    "startCommand": "bun run start",
    "healthcheckPath": "/health",
    "healthcheckTimeout": 100,
    "restartPolicyType": "ON_FAILURE",
    "restartPolicyMaxRetries": 10
  }
}
EOF

# Create Fly.io deployment
cat > deployment/fly/fly.toml << 'EOF'
app = "refi-local-node"
primary_region = "iad"

[build]

[env]
  PORT = "3000"

[http_service]
  internal_port = 3000
  force_https = true
  auto_stop_machines = true
  auto_start_machines = true
  min_machines_running = 0
  processes = ["app"]

[[http_service.checks]]
  grace_period = "10s"
  interval = "30s"
  method = "GET"
  timeout = "5s"
  path = "/health"
EOF

echo "📋 Creating additional template files..."

# Create health check endpoint
cat > src/health.ts << 'EOF'
import { type Route } from '@elizaos/core';

export const healthRoute: Route = {
  type: 'GET',
  path: '/health',
  name: 'Health Check',
  handler: async () => {
    return {
      status: 'healthy',
      timestamp: new Date().toISOString(),
      version: process.env.npm_package_version || '1.0.0',
      uptime: process.uptime(),
    };
  },
  public: true,
};
EOF

# Create monitoring configuration
cat > monitoring/prometheus.yml << 'EOF'
global:
  scrape_interval: 15s

scrape_configs:
  - job_name: 'refi-local-node'
    static_configs:
      - targets: ['localhost:3000']
    metrics_path: '/metrics'
    scrape_interval: 5s
EOF

# Create logging configuration
cat > logging/winston.config.js << 'EOF'
const winston = require('winston');

const logger = winston.createLogger({
  level: 'info',
  format: winston.format.combine(
    winston.format.timestamp(),
    winston.format.errors({ stack: true }),
    winston.format.json()
  ),
  defaultMeta: { service: 'refi-local-node' },
  transports: [
    new winston.transports.File({ filename: 'logs/error.log', level: 'error' }),
    new winston.transports.File({ filename: 'logs/combined.log' }),
  ],
});

if (process.env.NODE_ENV !== 'production') {
  logger.add(new winston.transports.Console({
    format: winston.format.simple()
  }));
}

module.exports = logger;
EOF

echo "📊 Creating analytics and monitoring..."

# Create analytics configuration
cat > analytics/analytics.config.js << 'EOF'
// Analytics configuration for tracking agent usage and impact
module.exports = {
  // Basic usage tracking
  trackUsage: true,
  trackConversations: true,
  trackKnowledgeQueries: true,
  
  // Privacy settings
  anonymizeData: true,
  respectGDPR: true,
  
  // Metrics to track
  metrics: {
    conversations: true,
    knowledgeQueries: true,
    userEngagement: true,
    localConnections: true,
    impactMetrics: true,
  },
  
  // Local node specific metrics
  localMetrics: {
    regionalOrganizations: true,
    localProjects: true,
    communityConnections: true,
    sustainabilityImpact: true,
  }
};
EOF

echo "🔐 Creating security configurations..."

# Create security configuration
cat > security/security.config.js << 'EOF'
// Security configuration for the ReFi Local Node
module.exports = {
  // API rate limiting
  rateLimit: {
    windowMs: 15 * 60 * 1000, // 15 minutes
    max: 100, // limit each IP to 100 requests per windowMs
  },
  
  // CORS configuration
  cors: {
    origin: process.env.ALLOWED_ORIGINS?.split(',') || ['http://localhost:3000'],
    credentials: true,
  },
  
  // Input validation
  validation: {
    maxInputLength: 10000,
    sanitizeInput: true,
    validateUrls: true,
  },
  
  // Authentication (if needed)
  auth: {
    enabled: false, // Set to true if authentication is required
    method: 'jwt', // or 'api-key', 'oauth', etc.
  },
  
  // Data protection
  dataProtection: {
    encryptSensitiveData: true,
    dataRetentionDays: 90,
    allowDataExport: false,
  }
};
EOF

echo "📚 Creating additional documentation..."

# Create API documentation template
cat > docs/API.md << 'EOF'
# ReFi Local Node API Documentation

## Overview

This document describes the API endpoints available in the ReFi Local Node agent.

## Base URL

```
http://localhost:3000
```

## Endpoints

### Health Check

**GET** `/health`

Returns the health status of the agent.

**Response:**
```json
{
  "status": "healthy",
  "timestamp": "2024-01-01T00:00:00.000Z",
  "version": "1.0.0",
  "uptime": 3600
}
```

### Chat Interface

**POST** `/api/chat`

Send a message to the agent.

**Request Body:**
```json
{
  "message": "What ReFi projects are happening in our region?",
  "context": {
    "userId": "user123",
    "sessionId": "session456"
  }
}
```

**Response:**
```json
{
  "response": "Here are some local ReFi projects...",
  "sources": ["local-sustainability-initiatives.md"],
  "confidence": 0.95
}
```

### Knowledge Base

**GET** `/api/knowledge`

Get information about the agent's knowledge base.

**Response:**
```json
{
  "documents": 15,
  "topics": ["ReFi", "Local Sustainability", "Climate Action"],
  "lastUpdated": "2024-01-01T00:00:00.000Z"
}
```

## Authentication

Currently, the API does not require authentication. For production deployments, consider implementing appropriate authentication mechanisms.

## Rate Limiting

The API is rate-limited to 100 requests per 15-minute window per IP address.

## Error Handling

All errors return a JSON response with the following structure:

```json
{
  "error": "Error message",
  "code": "ERROR_CODE",
  "timestamp": "2024-01-01T00:00:00.000Z"
}
```
EOF

# Create contribution guidelines
cat > CONTRIBUTING.md << 'EOF'
# Contributing to ReF[AI] Local Node Template

Thank you for your interest in contributing to the ReF[AI] Local Node Template! This document provides guidelines for contributing to the template and helping improve it for the broader ReFi community.

## How to Contribute

### 1. Report Issues

If you find a bug or have a feature request:

1. Check if the issue has already been reported
2. Create a new issue with a clear description
3. Include steps to reproduce (for bugs)
4. Add relevant labels

### 2. Suggest Improvements

For template improvements:

1. Create an issue with the "enhancement" label
2. Describe the improvement and its benefits
3. Provide examples if possible
4. Consider the impact on other local nodes

### 3. Submit Code Changes

For code contributions:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

### 4. Share Local Node Experiences

Share your experience using the template:

1. Document your customization process
2. Share challenges and solutions
3. Provide feedback on the setup process
4. Suggest improvements based on real usage

## Development Setup

1. Clone the repository
2. Install dependencies: `bun install`
3. Run tests: `bun run test`
4. Start development server: `bun run dev`

## Code Style

- Follow TypeScript best practices
- Use meaningful variable and function names
- Add comments for complex logic
- Keep functions small and focused
- Write tests for new features

## Documentation

When adding new features:

1. Update the README if needed
2. Add examples to the documentation
3. Update the template usage guide
4. Include setup instructions

## Testing

- Write unit tests for new functionality
- Test the setup script with different regions
- Validate template customization process
- Test deployment configurations

## Release Process

1. Update version numbers
2. Update changelog
3. Create release notes
4. Tag the release
5. Announce to the community

## Community Guidelines

- Be respectful and inclusive
- Help other contributors
- Share knowledge and experiences
- Follow the ReFi DAO community covenant

## Questions?

If you have questions about contributing:

1. Check the documentation
2. Search existing issues
3. Join the ReFi DAO Discord
4. Create a discussion issue

Thank you for helping make the ReF[AI] Local Node Template better for everyone!
EOF

echo "🎯 Creating performance optimization files..."

# Create performance configuration
cat > performance/performance.config.js << 'EOF'
// Performance optimization configuration
module.exports = {
  // Caching settings
  cache: {
    enabled: true,
    ttl: 3600, // 1 hour
    maxSize: 1000, // Maximum number of cached items
  },
  
  // Database optimization
  database: {
    connectionPool: 10,
    queryTimeout: 30000,
    enableQueryLogging: false,
  },
  
  // Knowledge base optimization
  knowledge: {
    maxSearchResults: 10,
    searchTimeout: 5000,
    enableCaching: true,
    preloadFrequentQueries: true,
  },
  
  // LLM optimization
  llm: {
    maxTokens: 4000,
    temperature: 0.7,
    timeout: 30000,
    retryAttempts: 3,
  },
  
  // Memory management
  memory: {
    maxConversationHistory: 50,
    cleanupInterval: 3600000, // 1 hour
    enableCompression: true,
  }
};
EOF

echo ""
echo "✅ Template enhancement complete!"
echo ""
echo "New features added:"
echo "📁 Example configurations for Berlin, Portland, and Nairobi"
echo "🚀 Deployment configurations for Docker, Railway, and Fly.io"
echo "📊 Analytics and monitoring setup"
echo "🔐 Security configurations"
echo "📚 Additional documentation"
echo "🎯 Performance optimization settings"
echo ""
echo "The template is now more robust and ready for production use!" 