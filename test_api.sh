#!/bin/bash

# Translation API Test Script
# This script demonstrates how to use the translation API endpoints
# Note: You need a valid JWT token to use these endpoints

# Configuration
BASE_URL="http://localhost:8080/api/translations"
JWT_TOKEN="YOUR_JWT_TOKEN_HERE"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Translation API Test Script${NC}"
echo "=================================="

# Function to make authenticated requests
api_call() {
    local method=$1
    local endpoint=$2
    local data=$3
    
    if [ -z "$data" ]; then
        curl -s -X "$method" \
            -H "Authorization: Bearer $JWT_TOKEN" \
            -H "Content-Type: application/json" \
            "$BASE_URL$endpoint"
    else
        curl -s -X "$method" \
            -H "Authorization: Bearer $JWT_TOKEN" \
            -H "Content-Type: application/json" \
            -d "$data" \
            "$BASE_URL$endpoint"
    fi
}

echo -e "\n${YELLOW}1. Testing GET all translations...${NC}"
response=$(api_call "GET" "")
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Success${NC}"
    echo "$response" | jq '.[0:2]' 2>/dev/null || echo "$response"
else
    echo -e "${RED}✗ Failed${NC}"
fi

echo -e "\n${YELLOW}2. Testing search by content...${NC}"
response=$(api_call "GET" "/search/content?query=save")
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Success${NC}"
    echo "$response" | jq '.[0:2]' 2>/dev/null || echo "$response"
else
    echo -e "${RED}✗ Failed${NC}"
fi

echo -e "\n${YELLOW}3. Testing search by key...${NC}"
response=$(api_call "GET" "/search/key?query=button")
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Success${NC}"
    echo "$response" | jq '.[0:2]' 2>/dev/null || echo "$response"
else
    echo -e "${RED}✗ Failed${NC}"
fi

echo -e "\n${YELLOW}4. Testing search by tags...${NC}"
response=$(api_call "GET" "/search/tags?tags=ui,button")
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Success${NC}"
    echo "$response" | jq '.[0:2]' 2>/dev/null || echo "$response"
else
    echo -e "${RED}✗ Failed${NC}"
fi

echo -e "\n${YELLOW}5. Testing create new translation...${NC}"
new_translation='{"key":"test.message","localeCode":"en","content":"This is a test message"}'
response=$(api_call "POST" "" "$new_translation")
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Success${NC}"
    echo "$response" | jq '.' 2>/dev/null || echo "$response"
else
    echo -e "${RED}✗ Failed${NC}"
fi

echo -e "\n${YELLOW}6. Testing get specific translation...${NC}"
response=$(api_call "GET" "/test.message/en")
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Success${NC}"
    echo "$response" | jq '.' 2>/dev/null || echo "$response"
else
    echo -e "${RED}✗ Failed${NC}"
fi

echo -e "\n${YELLOW}7. Testing get all locales...${NC}"
response=$(api_call "GET" "/locales")
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Success${NC}"
    echo "$response" | jq '.' 2>/dev/null || echo "$response"
else
    echo -e "${RED}✗ Failed${NC}"
fi

echo -e "\n${YELLOW}8. Testing get all tags...${NC}"
response=$(api_call "GET" "/tags")
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Success${NC}"
    echo "$response" | jq '.' 2>/dev/null || echo "$response"
else
    echo -e "${RED}✗ Failed${NC}"
fi

echo -e "\n${YELLOW}9. Testing generic search...${NC}"
search_request='{"query":"error","searchType":"content"}'
response=$(api_call "POST" "/search" "$search_request")
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Success${NC}"
    echo "$response" | jq '.[0:2]' 2>/dev/null || echo "$response"
else
    echo -e "${RED}✗ Failed${NC}"
fi

echo -e "\n${YELLOW}Test completed!${NC}"
echo -e "\n${YELLOW}Note:${NC} To use this script with a real server:"
echo "1. Start the application: mvn spring-boot:run"
echo "2. Get a JWT token from /api/auth endpoint"
echo "3. Replace YOUR_JWT_TOKEN_HERE with the actual token"
echo "4. Run this script: ./test_api.sh"