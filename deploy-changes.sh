#!/bin/bash

echo "Copying changed files to your project..."

DEST="/mnt/c/Users/sbthm/OneDrive/Documents/Purely Plutonic/project"

echo "Copying vite.config.ts..."
cp -f "vite.config.ts" "$DEST/vite.config.ts"

echo "Copying couple linking migration..."
mkdir -p "$DEST/supabase/migrations"
cp -f "supabase/migrations/20251109185858_add_couple_linking.sql" "$DEST/supabase/migrations/20251109185858_add_couple_linking.sql"

echo "Copying CoupleLinkingModal component..."
mkdir -p "$DEST/src/components"
cp -f "src/components/CoupleLinkingModal.tsx" "$DEST/src/components/CoupleLinkingModal.tsx"

echo "Copying updated Dashboard..."
cp -f "src/components/Dashboard.tsx" "$DEST/src/components/Dashboard.tsx"

echo ""
echo "Done! Files copied to your project."
echo ""
echo "Now running git commands..."
cd "$DEST"
git add .
git commit -m "Add couple linking and fix vite config"
git push

echo ""
echo "Vercel will automatically deploy your changes!"
