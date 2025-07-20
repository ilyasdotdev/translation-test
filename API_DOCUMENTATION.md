# Translation API Documentation

This document describes the REST API endpoints for managing translations.

## Base URL
All endpoints are prefixed with `/api/translations`

**Note**: All endpoints require authentication (JWT token) except `/api/auth`.

## Endpoints

### 1. Create or Update Translation
**POST** `/api/translations`

Creates a new translation or updates an existing one.

**Request Body:**
```json
{
  "key": "button.save",
  "localeCode": "en",
  "content": "Save"
}
```

**Response:**
```json
{
  "id": 1,
  "key": "button.save",
  "localeCode": "en",
  "localeName": "English",
  "content": "Save",
  "updatedAt": "2024-01-01T12:00:00"
}
```

### 2. Get Translation by Key and Locale
**GET** `/api/translations/{key}/{localeCode}`

Retrieves a specific translation.

**Example:** `GET /api/translations/button.save/en`

**Response:**
```json
{
  "id": 1,
  "key": "button.save",
  "localeCode": "en",
  "localeName": "English",
  "content": "Save",
  "updatedAt": "2024-01-01T12:00:00"
}
```

### 3. Get All Translations for a Key
**GET** `/api/translations/key/{key}`

Retrieves all translations for a specific key across all locales.

**Example:** `GET /api/translations/key/button.save`

**Response:**
```json
[
  {
    "id": 1,
    "key": "button.save",
    "localeCode": "en",
    "localeName": "English",
    "content": "Save",
    "updatedAt": "2024-01-01T12:00:00"
  },
  {
    "id": 2,
    "key": "button.save",
    "localeCode": "es",
    "localeName": "Spanish",
    "content": "Guardar",
    "updatedAt": "2024-01-01T12:00:00"
  }
]
```

### 4. Get All Translations for a Locale
**GET** `/api/translations/locale/{localeCode}`

Retrieves all translations for a specific locale.

**Example:** `GET /api/translations/locale/en`

### 5. Get All Translations
**GET** `/api/translations`

Retrieves all translations in the system.

### 6. Search by Content
**GET** `/api/translations/search/content?query={searchTerm}`

Searches translations by content (case-insensitive).

**Example:** `GET /api/translations/search/content?query=save`

### 7. Search by Key Pattern
**GET** `/api/translations/search/key?query={searchTerm}`

Searches translations by key pattern.

**Example:** `GET /api/translations/search/key?query=button`

### 8. Search by Tags
**GET** `/api/translations/search/tags?tags={tag1,tag2}`

Searches translations by associated tags.

**Example:** `GET /api/translations/search/tags?tags=ui,button`

### 9. Generic Search
**POST** `/api/translations/search`

Generic search endpoint supporting multiple search types.

**Request Body:**
```json
{
  "query": "save",
  "searchType": "content"
}
```

**Search Types:**
- `content` - Search by translation content
- `key` - Search by translation key
- `tag` - Search by tags (comma-separated)

### 10. Update Translation
**PUT** `/api/translations/{key}/{localeCode}`

Updates an existing translation content.

**Request Body:** (Plain text)
```
New content here
```

### 11. Delete Translation
**DELETE** `/api/translations/{key}/{localeCode}`

Deletes a specific translation.

### 12. Get All Locales
**GET** `/api/translations/locales`

Retrieves all available locales.

**Response:**
```json
[
  {
    "id": 1,
    "code": "en",
    "name": "English",
    "createdAt": "2024-01-01T12:00:00"
  }
]
```

### 13. Get All Tags
**GET** `/api/translations/tags`

Retrieves all available tags.

### 14. Get All Translation Keys
**GET** `/api/translations/keys`

Retrieves all translation keys.

## Test Data

The application includes approximately 500+ test translation records covering:
- UI elements (buttons, forms, menus)
- Validation messages
- Success/error messages
- Modal dialogs
- Authentication flows
- Navigation elements

Test data is available in 4 languages: English (en), Spanish (es), French (fr), and German (de).

## Examples with cURL

```bash
# Get all translations
curl -H "Authorization: Bearer YOUR_JWT_TOKEN" \
  http://localhost:8080/api/translations

# Search by content
curl -H "Authorization: Bearer YOUR_JWT_TOKEN" \
  "http://localhost:8080/api/translations/search/content?query=save"

# Create new translation
curl -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_JWT_TOKEN" \
  -d '{"key":"test.message","localeCode":"en","content":"Test message"}' \
  http://localhost:8080/api/translations
```

## Error Responses

- `400 Bad Request` - Invalid request data
- `401 Unauthorized` - Missing or invalid authentication
- `404 Not Found` - Resource not found
- `500 Internal Server Error` - Server error