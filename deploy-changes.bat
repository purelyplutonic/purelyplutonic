@echo off
echo Copying changed files to your project...

set DEST="C:\Users\sbthm\OneDrive\Desktop\bolt"

echo Copying vite.config.ts...
copy /Y "vite.config.ts" %DEST%\vite.config.ts

echo Copying couple linking migration...
copy /Y "supabase\migrations\20251109185858_add_couple_linking.sql" %DEST%\supabase\migrations\20251109185858_add_couple_linking.sql

echo Copying CoupleLinkingModal component...
copy /Y "src\components\CoupleLinkingModal.tsx" %DEST%\src\components\CoupleLinkingModal.tsx

echo Copying updated Dashboard...
copy /Y "src\components\Dashboard.tsx" %DEST%\src\components\Dashboard.tsx

echo.
echo Done! Files copied to your project.
echo.
echo Next steps:
echo 1. Open your project folder in VS Code or Terminal
echo 2. Run: git add .
echo 3. Run: git commit -m "Add couple linking and fix vite config"
echo 4. Run: git push
echo.
echo Vercel will automatically deploy your changes!
pause
