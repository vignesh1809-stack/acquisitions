# Acquisitions API

A modern Node.js REST API built with Express.js, featuring authentication, security middleware, and database integration using Drizzle ORM.

## Features

- 🔐 **Authentication System** - Sign up, sign in, and sign out functionality
- 🛡️ **Security** - Arcjet integration for shield protection, bot detection, and rate limiting
- 📊 **Database** - PostgreSQL with Drizzle ORM for type-safe database operations
- 🐳 **Docker Support** - Development and production Docker configurations
- 📝 **Logging** - Winston logger with file-based logging
- ✅ **Validation** - Zod schema validation for request validation
- 🔒 **JWT Authentication** - Secure token-based authentication
- 🏥 **Health Checks** - Built-in health check endpoints

## Tech Stack

- **Runtime**: Node.js 22
- **Framework**: Express.js 5
- **Database**: PostgreSQL (Neon)
- **ORM**: Drizzle ORM
- **Security**: Arcjet, Helmet, CORS
- **Authentication**: JWT, bcrypt
- **Validation**: Zod
- **Logging**: Winston, Morgan
- **Code Quality**: ESLint, Prettier

## Prerequisites

- Node.js 22 or higher
- npm or yarn
- Docker and Docker Compose (for containerized development)
- PostgreSQL database (or Neon database)

## Installation

1. Clone the repository:
```bash
git clone https://github.com/vignesh1809-stack/acquisitions.git
cd acquisitions
```

2. Install dependencies:
```bash
npm install
```

3. Set up environment variables:
```bash
cp .env.example .env
# Edit .env with your configuration
```

## Environment Variables

Create a `.env` file in the root directory with the following variables:

```env
# Server Configuration
PORT=3001
NODE_ENV=development

# Database
DATABASE_URL=postgresql://user:password@localhost:5432/dbname

# JWT Configuration
JWT_SECRET=your-secret-key-here
JWT_EXPIRES_IN=7d

# Arcjet Configuration (if using)
ARCJET_KEY=your-arcjet-key
```

For Docker development, also create:
- `.env.development` - Development environment variables
- `.env.neon.local` - Neon local database configuration

## Running the Project

### Development Mode (Local)

```bash
npm run dev
```

The server will start on `http://localhost:3001` (or the port specified in your `.env` file).

### Production Mode

```bash
npm start
```

### Using Docker

#### Development Environment

```bash
docker-compose -f docker-compose.dev.yml up
```

This will:
- Start the application in development mode with hot reload
- Start a local Neon PostgreSQL database
- Mount volumes for live code changes

#### Production Environment

```bash
docker-compose -f docker-compose.prod.yml up
```

## Database Setup

### Generate Migrations

```bash
npm run db:generate
```

### Run Migrations

```bash
npm run db:migrate
```

### Open Drizzle Studio

```bash
npm run db:studio
```

This opens Drizzle Studio at `http://localhost:4983` for database visualization and management.

## API Endpoints

### Health Check
- `GET /health` - Health check endpoint
- `GET /api` - API status endpoint
- `GET /` - Root endpoint

### Authentication
- `POST /api/auth/sign-up` - User registration
- `POST /api/auth/sign-in` - User login
- `POST /api/auth/sign-out` - User logout

## Project Structure

```
acquisitions/
├── src/
│   ├── app.js                 # Express app configuration
│   ├── server.js              # Server initialization
│   ├── index.js               # Entry point
│   ├── configs/               # Configuration files
│   │   ├── arcjet.js          # Arcjet security config
│   │   ├── database.js        # Database connection
│   │   └── logger.js          # Winston logger config
│   ├── controllers/           # Request handlers
│   │   └── auth.controller.js
│   ├── middlewares/           # Express middlewares
│   │   └── security.middleware.js
│   ├── models/                # Database models (Drizzle)
│   │   └── user.models.js
│   ├── routes/                # API routes
│   │   └── auth.router.js
│   ├── services/              # Business logic
│   │   └── auth.service.js
│   ├── utils/                 # Utility functions
│   │   ├── cookies.js
│   │   ├── format.js
│   │   └── jwt.js
│   └── validations/           # Zod validation schemas
│       └── auth.validation.js
├── drizzle/                   # Database migrations
├── logs/                      # Application logs
├── Dockerfile                 # Production Docker image
├── docker-compose.dev.yml     # Development Docker setup
├── docker-compose.prod.yml   # Production Docker setup
├── drizzle.config.js          # Drizzle ORM configuration
└── package.json
```

## Available Scripts

- `npm run dev` - Start development server with watch mode
- `npm start` - Start production server
- `npm run lint` - Run ESLint
- `npm run lint:fix` - Fix ESLint errors automatically
- `npm run format` - Format code with Prettier
- `npm run format:check` - Check code formatting
- `npm run db:generate` - Generate database migrations
- `npm run db:migrate` - Run database migrations
- `npm run db:studio` - Open Drizzle Studio

## Code Quality

The project uses ESLint and Prettier for code quality and formatting:

```bash
# Check for linting errors
npm run lint

# Auto-fix linting errors
npm run lint:fix

# Format code
npm run format

# Check formatting
npm run format:check
```

## Logging

Application logs are stored in the `logs/` directory:
- `combined.log` - All logs
- `error.log` - Error logs only

Logs are also output to the console in development mode.

## Security Features

- **Helmet** - Sets various HTTP headers for security
- **CORS** - Cross-Origin Resource Sharing configuration
- **Arcjet** - Advanced security with shield, bot detection, and rate limiting
- **JWT** - Secure token-based authentication
- **bcrypt** - Password hashing

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

ISC

## Support

For issues and questions, please open an issue on [GitHub](https://github.com/vignesh1809-stack/acquisitions/issues).

## Author

[Your Name]

---

Built with ❤️ using Node.js and Express.js
