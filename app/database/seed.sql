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

-- Insert seed rules
INSERT OR IGNORE INTO rule (title, description, steps, example, userId, votes, commentsCount, createdAt, updatedAt)
VALUES
  (
    'Quick Navigation with Ctrl+P',
    'Navigate to any file in your project quickly using the keyboard.',
    '1. Press Ctrl+P (Cmd+P on Mac)
2. Type part of the filename
3. Use arrow keys to select the file
4. Press Enter to open it',
    '```
# For example, to find ''UserController.ts'':
1. Press Ctrl+P
2. Type ''usercon''
3. Select ''UserController.ts'' from the list
4. Press Enter
```',
    'user_seed_1',
    42,
    5,
    unixepoch(),
    unixepoch()
  ),
  (
    'Multi-Cursor Editing',
    'Edit multiple lines simultaneously to increase productivity.',
    '1. Hold Alt (Option on Mac) and click where you want cursors
2. Or use Ctrl+Alt+Up/Down to add cursors above/below
3. Type or edit text at all cursor positions simultaneously',
    '```tsx
// Before: Need to change multiple variable names
const item1 = getItem();
const item2 = getItem();
const item3 = getItem();

// After using multi-cursor:
// Place cursors at each ''item'' and type ''product'' instead
const product1 = getItem();
const product2 = getItem();
const product3 = getItem();
```',
    'user_seed_1',
    38,
    7,
    unixepoch(),
    unixepoch()
  ),
  (
    'Code Folding',
    'Collapse code blocks to focus on relevant sections.',
    '1. Click the fold icon in the gutter next to a function/block
2. Or use Ctrl+Shift+[ (Cmd+Option+[ on Mac) to fold the current block
3. Use Ctrl+Shift+] (Cmd+Option+] on Mac) to unfold',
    '```typescript
// This entire function can be folded to a single line
function calculateTotal(items) {
  let total = 0;
  for (const item of items) {
    total += item.price * item.quantity;
  }
  return total;
}
```',
    'user_seed_1',
    27,
    3,
    unixepoch(),
    unixepoch()
  ),
  (
    'Find All References',
    'Quickly locate all usages of a variable, function, or class.',
    '1. Right-click on a symbol (variable, function, etc.)
2. Select ''Find All References'' from the context menu
3. Or use Shift+F12 (keyboard shortcut)',
    '```typescript
function calculateDiscount(price, percentage) {
  return price * (percentage / 100);
}

// Find all references will show these usages:
const discount1 = calculateDiscount(100, 10);
const discount2 = calculateDiscount(50, 20);
```',
    'user_seed_1',
    31,
    2,
    unixepoch(),
    unixepoch()
  ),
  (
    'Rename Symbol',
    'Safely rename variables, functions, and classes across your codebase.',
    '1. Place cursor on the symbol you want to rename
2. Press F2 (or right-click and select ''Rename Symbol'')
3. Type the new name
4. Press Enter to apply changes everywhere',
    '```typescript
// Before rename:
function getData() {
  return fetchData();
}

// After renaming ''getData'' to ''fetchUserData'':
function fetchUserData() {
  return fetchData();
}

// All calls to getData() are also updated automatically
```',
    'user_seed_1',
    45,
    8,
    unixepoch(),
    unixepoch()
  ),
  (
    'Column Selection Mode',
    'Select and edit text in rectangular blocks rather than by line.',
    '1. Hold Shift+Alt (Shift+Option on Mac) and drag with mouse
2. Or press Ctrl+Shift+Alt+Arrow keys to expand selection
3. Edit the selected rectangular region',
    '```
// Selecting the first column of this data:
user1 | data1 | info1
user2 | data2 | info2
user3 | data3 | info3

// After column selection, you can edit just the first column
```',
    'user_seed_1',
    22,
    4,
    unixepoch(),
    unixepoch()
  ),
  (
    'Quick Fix with Ctrl+.',
    'Apply suggested fixes for errors and warnings with a keyboard shortcut.',
    '1. Move cursor to a line with an error or warning
2. Press Ctrl+. (Cmd+. on Mac)
3. Select from the list of available fixes
4. Press Enter to apply',
    '```typescript
// Error: Cannot find name ''consle''
consle.log(''Hello'');

// After Quick Fix (Ctrl+.), it becomes:
console.log(''Hello'');
```',
    'user_seed_1',
    36,
    3,
    unixepoch(),
    unixepoch()
  ),
  (
    'Extract Method Refactoring',
    'Convert a code block into a reusable method with proper parameters.',
    '1. Select the code block you want to extract
2. Right-click and select ''Extract Method''
3. Enter a name for the new method
4. Review the generated method and its call site',
    '```typescript
// Before extraction:
function process() {
  const data = fetchData();
  const filtered = data.filter(item => item.active);
  const mapped = filtered.map(item => item.name);
  return mapped;
}

// After extracting the filter and map operations:
function process() {
  const data = fetchData();
  return processActiveItems(data);
}

function processActiveItems(data) {
  const filtered = data.filter(item => item.active);
  const mapped = filtered.map(item => item.name);
  return mapped;
}
```',
    'user_seed_1',
    29,
    6,
    unixepoch(),
    unixepoch()
  ),
  (
    'Bracket Pair Colorization',
    'Visually match opening and closing brackets with colors for better code readability.',
    '1. Enable bracket pair colorization in settings
2. Each nested level of brackets will have a different color
3. Makes it easier to identify matching pairs and nesting depth',
    '```typescript
function nestedExample() {
  if (condition) {
    array.forEach(item => {
      if (item.valid) {
        process({
          data: item.data,
          options: { enabled: true }
        });
      }
    });
  }
}
// Each pair of brackets has a distinct color
```',
    'user_seed_1',
    33,
    2,
    unixepoch(),
    unixepoch()
  ),
  (
    'Code Snippets',
    'Use built-in snippets to quickly insert common code patterns.',
    '1. Type a snippet prefix (e.g., ''for'' for a for loop)
2. Press Tab or Enter to expand the snippet
3. Tab through placeholder positions to fill in details',
    '```typescript
// Type ''if'' and press Tab to get:
if (condition) {
    
}

// Type ''for'' and press Tab to get:
for (let index = 0; index < array.length; index++) {
    const element = array[index];
    
}
```',
    'user_seed_1',
    40,
    5,
    unixepoch(),
    unixepoch()
  ),
  (
    'Toggle Line Comment',
    'Quickly comment or uncomment lines of code.',
    '1. Select one or more lines of code
2. Press Ctrl+/ (Cmd+/ on Mac)
3. Selected lines will be commented out if not commented, or uncommented if already commented',
    '```typescript
// Before toggle:
const a = 1;
const b = 2;

// After toggle:
// const a = 1;
// const b = 2;

// Toggle again to uncomment
```',
    'user_seed_1',
    25,
    1,
    unixepoch(),
    unixepoch()
  ),
  (
    'Zen Mode',
    'Focus on your code by hiding all UI elements except the editor.',
    '1. Press Ctrl+K Z (Cmd+K Z on Mac)
2. All UI elements except the editor will be hidden
3. Press Escape twice to exit Zen Mode',
    '```
// No specific code example needed
// Zen Mode is about the editor UI, not the code itself
```',
    'user_seed_1',
    18,
    4,
    unixepoch(),
    unixepoch()
  ),
  (
    'Git Blame',
    'See who last modified each line of code and when.',
    '1. Right-click in the editor gutter
2. Select ''Toggle Git Blame'' or similar option
3. Each line will show author and commit information',
    '```
// The gutter will show information like:
// John Doe, 2 days ago: Fix null reference exception
```',
    'user_seed_1',
    30,
    3,
    unixepoch(),
    unixepoch()
  ),
  (
    'Terminal Integration',
    'Use the integrated terminal without leaving your editor.',
    '1. Press Ctrl+` (backtick) to toggle the terminal panel
2. Run commands directly in the integrated terminal
3. Multiple terminals can be created with the + button',
    '```bash
# Run your tests from the integrated terminal
npm test

# Start your development server
npm run dev
```',
    'user_seed_1',
    35,
    6,
    unixepoch(),
    unixepoch()
  ),
  (
    'Emmet Abbreviations',
    'Write HTML and CSS quickly using Emmet abbreviations.',
    '1. Type an Emmet abbreviation
2. Press Tab to expand it
3. Fill in any placeholders',
    '```html
<!-- Type this Emmet abbreviation: -->
div.container>ul.list>li.item*3>a

<!-- After pressing Tab, it expands to: -->
<div class="container">
  <ul class="list">
    <li class="item"><a href=""></a></li>
    <li class="item"><a href=""></a></li>
    <li class="item"><a href=""></a></li>
  </ul>
</div>
```',
    'user_seed_1',
    38,
    7,
    unixepoch(),
    unixepoch()
  );
