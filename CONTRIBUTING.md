# Contributing to Flutter Banking App

## Security First

This is a financial application. All contributions must meet strict security standards.

### Before Contributing

1. **Security Assessment**
   - Review SECURITY.md
   - Understand PCI DSS requirements
   - Follow OWASP Mobile Top 10

2. **Dependency Updates**
   ```bash
   flutter pub outdated
   flutter pub upgrade
   flutter pub get
   ```

3. **No Secrets in Code**
   - Never commit API keys, tokens, or credentials
   - Use environment variables
   - Use `.env` files (in `.gitignore`)

### Code Review Process

1. Create feature branch: `git checkout -b feature/description`
2. Make changes following security guidelines
3. Test thoroughly
4. Submit pull request
5. Address security reviewer feedback
6. Maintainers merge after approval

### Security Guidelines

✅ DO:
- Validate all user inputs
- Use `flutter_secure_storage` for sensitive data
- Implement certificate pinning for APIs
- Use biometric authentication
- Encrypt data at rest and in transit
- Log transaction activities (not PII)
- Test on both iOS and Android

❌ DON'T:
- Store credentials in code
- Log sensitive data
- Use HTTP (always HTTPS)
- Hardcode API endpoints
- Skip input validation
- Use deprecated packages
- Disable security features for convenience

### Testing Requirements

```bash
# Run tests
flutter test

# Check code quality
flutter analyze

# Check for common issues
dartanalyzer lib/
```

### Commit Message Format

```
🔒 Type: Brief description

- More detailed explanation
- Reference issue #123
```

Types:
- 🔒 Security fix
- ✨ Feature
- 🐛 Bug fix
- 📦 Dependency update

### Reporting Security Issues

For vulnerabilities:
1. **DO NOT** create a public issue
2. Email: security@banking-app.com
3. Include severity, description, and reproduction steps

## Development Setup

```bash
git clone https://github.com/MalNko/flutter-banking-app.git
cd flutter-banking-app

# Setup environment
cp .env.example .env
# Edit .env with your values

# Get dependencies
flutter pub get

# Run on device/emulator
flutter run
```

## Code Standards

- Follow Dart style guide
- Use meaningful variable names
- Add documentation comments
- Write tests for new features
- Run formatter: `dart format lib/`
- Use analyzer: `flutter analyze`

Thank you for contributing securely! 🎉
