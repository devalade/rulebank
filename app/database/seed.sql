-- Insert seed user
INSERT OR IGNORE INTO user (id, name, email, emailVerified, createdAt, updatedAt)
VALUES (
  'user_seed_1',
  'Alade Yessoufou',
  'alade@devalade.me',
  1,
  unixepoch(),
  unixepoch()
);

-- Insert seed rules (without example column)
INSERT OR IGNORE INTO rule (title, description, content, userId, votes, commentsCount, createdAt, updatedAt)
VALUES
  (
    'Quick Navigation with Ctrl+P',
    'Navigate to any file in your project quickly using the keyboard.',
    '1. Press Ctrl+P (Cmd+P on Mac)\n2. Type part of the filename\n3. Use arrow keys to select the file\n4. Press Enter to open it',
    'user_seed_1',
    42,
    5,
    unixepoch(),
    unixepoch()
  ),
  (
    'Multi-Cursor Editing',
    'Edit multiple lines simultaneously to increase productivity.',
    '1. Hold Alt (Option on Mac) and click where you want cursors\n2. Or use Ctrl+Alt+Up/Down to add cursors above/below\n3. Type or edit text at all cursor positions simultaneously',
    'user_seed_1',
    38,
    7,
    unixepoch(),
    unixepoch()
  ),
  (
    'Code Folding',
    'Collapse code blocks to focus on relevant sections.',
    '1. Click the fold icon in the gutter next to a function/block\n2. Or use Ctrl+Shift+[ (Cmd+Option+[ on Mac) to fold the current block\n3. Use Ctrl+Shift+] (Cmd+Option+] on Mac) to unfold',
    'user_seed_1',
    27,
    3,
    unixepoch(),
    unixepoch()
  ),
  (
    'Find All References',
    'Quickly locate all usages of a variable, function, or class.',
    '1. Right-click on a symbol (variable, function, etc.)\n2. Select ''Find All References'' from the context menu\n3. Or use Shift+F12 (keyboard shortcut)',
    'user_seed_1',
    31,
    2,
    unixepoch(),
    unixepoch()
  ),
  (
    'Rename Symbol',
    'Safely rename variables, functions, and classes across your codebase.',
    '1. Place cursor on the symbol you want to rename\n2. Press F2 (or right-click and select ''Rename Symbol'')\n3. Type the new name\n4. Press Enter to apply changes everywhere',
    'user_seed_1',
    45,
    8,
    unixepoch(),
    unixepoch()
  ),
  (
    'Column Selection Mode',
    'Select and edit text in rectangular blocks rather than by line.',
    '1. Hold Shift+Alt (Shift+Option on Mac) and drag with mouse\n2. Or press Ctrl+Shift+Alt+Arrow keys to expand selection\n3. Edit the selected rectangular region',
    'user_seed_1',
    22,
    4,
    unixepoch(),
    unixepoch()
  ),
  (
    'Quick Fix with Ctrl+.',
    'Apply suggested fixes for errors and warnings with a keyboard shortcut.',
    '1. Move cursor to a line with an error or warning\n2. Press Ctrl+. (Cmd+. on Mac)\n3. Select from the list of available fixes\n4. Press Enter to apply',
    'user_seed_1',
    36,
    3,
    unixepoch(),
    unixepoch()
  ),
  (
    'Extract Method Refactoring',
    'Convert a code block into a reusable method with proper parameters.',
    '1. Select the code block you want to extract\n2. Right-click and select ''Extract Method''\n3. Enter a name for the new method\n4. Review the generated method and its call site',
    'user_seed_1',
    29,
    6,
    unixepoch(),
    unixepoch()
  ),
  (
    'Bracket Pair Colorization',
    'Visually match opening and closing brackets with colors for better code readability.',
    '1. Enable bracket pair colorization in settings\n2. Each nested level of brackets will have a different color\n3. Makes it easier to identify matching pairs and nesting depth',
    'user_seed_1',
    33,
    2,
    unixepoch(),
    unixepoch()
  ),
  (
    'Code Snippets',
    'Use built-in snippets to quickly insert common code patterns.',
    '1. Type a snippet prefix (e.g., ''for'' for a for loop)\n2. Press Tab or Enter to expand the snippet\n3. Tab through placeholder positions to fill in details',
    'user_seed_1',
    40,
    5,
    unixepoch(),
    unixepoch()
  ),
  (
    'Toggle Line Comment',
    'Quickly comment or uncomment lines of code.',
    '1. Select one or more lines of code\n2. Press Ctrl+/ (Cmd+/ on Mac)\n3. Selected lines will be commented out if not commented, or uncommented if already commented',
    'user_seed_1',
    25,
    1,
    unixepoch(),
    unixepoch()
  ),
  (
    'Zen Mode',
    'Focus on your code by hiding all UI elements except the editor.',
    '1. Press Ctrl+K Z (Cmd+K Z on Mac)\n2. All UI elements except the editor will be hidden\n3. Press Escape twice to exit Zen Mode',
    'user_seed_1',
    18,
    4,
    unixepoch(),
    unixepoch()
  ),
  (
    'Git Blame',
    'See who last modified each line of code and when.',
    '1. Right-click in the editor gutter\n2. Select ''Toggle Git Blame'' or similar option\n3. Each line will show author and commit information',
    'user_seed_1',
    30,
    3,
    unixepoch(),
    unixepoch()
  ),
  (
    'Terminal Integration',
    'Use the integrated terminal without leaving your editor.',
    '1. Press Ctrl+` (backtick) to toggle the terminal panel\n2. Run commands directly in the integrated terminal\n3. Multiple terminals can be created with the + button',
    'user_seed_1',
    35,
    6,
    unixepoch(),
    unixepoch()
  ),
  (
    'Emmet Abbreviations',
    'Write HTML and CSS quickly using Emmet abbreviations.',
    '1. Type an Emmet abbreviation\n2. Press Tab to expand it\n3. Fill in any placeholders',
    'user_seed_1',
    38,
    7,
    unixepoch(),
    unixepoch()
  );