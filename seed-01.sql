
-- Rules Seeder SQL Script for Cloudflare D1
-- Created: 2025-04-29

-- Insert data for each rule file
INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Clean Code Guidelines',
    'Guidelines for writing clean, maintainable, and human-readable code. Apply these rules when writing or reviewing code to ensure consistency and quality.',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules-new/clean-code.mdc',
    'Cursor,CleanCode,BestPractices,CodeQuality',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Code Quality Guidelines',
    'Code Quality Guidelines',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules-new/codequality.mdc',
    'Cursor,CodeQuality,BestPractices',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'C++ Programming Guidelines',
    'C++ programming best practices and guidelines',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules-new/cpp.mdc',
    'Cursor,C++,Programming,Guidelines',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Database Best Practices',
    'Database best practices focusing on Prisma and Supabase integration',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules-new/database.mdc',
    'Cursor,Database,Prisma,Supabase',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'FastAPI Best Practices',
    'FastAPI best practices and patterns for building modern Python web APIs',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules-new/fastapi.mdc',
    'Cursor,FastAPI,Python,API',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Gitflow Workflow Rules',
    'Gitflow Workflow Rules. These rules should be applied when performing git operations.',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules-new/gitflow.mdc',
    'Cursor,Git,Workflow,DevOps',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Next.js Best Practices',
    'Next.js with TypeScript and Tailwind UI best practices',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules-new/nextjs.mdc',
    'Cursor,NextJS,TypeScript,TailwindUI',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Node.js and Express.js Best Practices',
    'Node.js and Express.js best practices for backend development',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules-new/node-express.mdc',
    'Cursor,NodeJS,ExpressJS,Backend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Python Best Practices',
    'Python best practices and patterns for modern software development with Flask and SQLite',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules-new/python.mdc',
    'Cursor,Python,Flask,SQLite',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'React Best Practices',
    'React best practices and patterns for modern web applications',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules-new/react.mdc',
    'Cursor,React,Frontend,WebDevelopment',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Svelte Best Practices',
    'Svelte best practices and patterns for modern web applications',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules-new/svelte.mdc',
    'Cursor,Svelte,Frontend,WebDevelopment',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Tailwind CSS Best Practices',
    'Tailwind CSS and UI component best practices for modern web applications',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules-new/tailwind.mdc',
    'Cursor,TailwindCSS,CSS,UI',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript Best Practices',
    'TypeScript coding standards and best practices for modern web development',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules-new/typescript.mdc',
    'Cursor,TypeScript,JavaScript,WebDevelopment',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Vue.js Best Practices',
    'Vue.js best practices and patterns for modern web applications',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules-new/vue.mdc',
    'Cursor,VueJS,Frontend,WebDevelopment',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript NodeJS React Vite',
    'Best practices for development with TypeScript, Node.js, React, and Vite',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-nodejs-react-vite-cursorrules-prompt-fi',
    'Cursor,TypeScript,NodeJS,React,Vite',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript React',
    'Guidelines for React development with TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-react-cursorrules-prompt-file',
    'Cursor,TypeScript,React,Frontend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript React NextJS Cloudflare',
    'Best practices for full-stack development with TypeScript, React, Next.js, and Cloudflare',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-react-nextjs-cloudflare-cursorrules-pro',
    'Cursor,TypeScript,React,NextJS,Cloudflare',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript React NextUI Supabase',
    'Guidelines for development with TypeScript, React, NextUI, and Supabase',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-react-nextui-supabase-cursorrules-promp',
    'Cursor,TypeScript,React,NextUI,Supabase',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript Shadcn UI NextJS',
    'Best practices for Next.js development with TypeScript and Shadcn UI',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-shadcn-ui-nextjs-cursorrules-prompt-fil',
    'Cursor,TypeScript,ShadcnUI,NextJS',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript Vite Tailwind',
    'Guidelines for frontend development with TypeScript, Vite, and Tailwind',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-vite-tailwind-cursorrules-prompt-file',
    'Cursor,TypeScript,Vite,Tailwind',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript VueJS',
    'Best practices for Vue.js development with TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-vuejs-cursorrules-prompt-file',
    'Cursor,TypeScript,VueJS,Frontend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript Zod Tailwind NextJS',
    'Guidelines for Next.js development with TypeScript, Zod, and Tailwind',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-zod-tailwind-nextjs-cursorrules-prompt-',
    'Cursor,TypeScript,Zod,Tailwind,NextJS',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'UIKit Guidelines',
    'Best practices for iOS development with UIKit',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/uikit-guidelines-cursorrules-prompt-file',
    'Cursor,UIKit,iOS,Mobile',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Unity C#',
    'Guidelines for game development with Unity and C#',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/unity-cursor-ai-c-cursorrules-prompt-file',
    'Cursor,Unity,CSharp,GameDevelopment',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Vue 3 Nuxt 3 Development',
    'Best practices for web development with Vue 3 and Nuxt 3',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/vue-3-nuxt-3-development-cursorrules-prompt-file',
    'Cursor,Vue3,Nuxt3,Frontend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Vue 3 Nuxt 3 TypeScript',
    'Guidelines for Vue 3 and Nuxt 3 development with TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/vue-3-nuxt-3-typescript-cursorrules-prompt-file',
    'Cursor,Vue3,Nuxt3,TypeScript',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Vue3 Composition API',
    'Best practices for Vue 3 development with Composition API',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/vue3-composition-api-cursorrules-prompt-file',
    'Cursor,Vue3,CompositionAPI,Frontend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Web App Optimization',
    'Guidelines for optimizing web applications',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/web-app-optimization-cursorrules-prompt-file',
    'Cursor,WebApp,Optimization,Performance',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'WebAssembly Z80 Cellular Automata',
    'Best practices for WebAssembly development with Z80 and cellular automata',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/webassembly-z80-cellular-automata-cursorrules-prom',
    'Cursor,WebAssembly,Z80,CellularAutomata',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'WordPress PHP Guzzle Gutenberg',
    'Guidelines for WordPress development with PHP, Guzzle, and Gutenberg',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/wordpress-php-guzzle-gutenberg-cursorrules-prompt-',
    'Cursor,WordPress,PHP,Guzzle,Gutenberg',
    unixepoch(),
    unixepoch()
);

-- Rules Directory Seeder SQL Script for Cloudflare D1 (Part 3)
-- Created: 2025-04-29

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Python Flask JSON Guide',
    'Guidelines for working with JSON in Python Flask',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/python-flask-json-guide-cursorrules-prompt-file',
    'Cursor,Python,Flask,JSON',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Python GitHub Setup',
    'Best practices for setting up Python projects on GitHub',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/python-github-setup-cursorrules-prompt-file',
    'Cursor,Python,GitHub,ProjectSetup',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Python LLM ML Workflow',
    'Guidelines for machine learning workflows with Python and LLMs',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/python-llm-ml-workflow-cursorrules-prompt-file',
    'Cursor,Python,LLM,MachineLearning',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Python Projects Guide',
    'Best practices for Python project structure and organization',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/python-projects-guide-cursorrules-prompt-file',
    'Cursor,Python,ProjectStructure,BestPractices',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'PyTorch Scikit-Learn',
    'Guidelines for machine learning with PyTorch and Scikit-Learn',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/pytorch-scikit-learn-cursorrules-prompt-file',
    'Cursor,PyTorch,ScikitLearn,MachineLearning',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Qwik Basic',
    'Basic guidelines for Qwik development',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/qwik-basic-cursorrules-prompt-file',
    'Cursor,Qwik,Frontend,JavaScript',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Qwik Tailwind',
    'Best practices for Qwik development with Tailwind',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/qwik-tailwind-cursorrules-prompt-file',
    'Cursor,Qwik,Tailwind,Frontend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'React Chakra UI',
    'Guidelines for React development with Chakra UI',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/react-chakra-ui-cursorrules-prompt-file',
    'Cursor,React,ChakraUI,Frontend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'React Components Creation',
    'Best practices for creating React components',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/react-components-creation-cursorrules-prompt-file',
    'Cursor,React,Components,Frontend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'React GraphQL Apollo Client',
    'Guidelines for React development with GraphQL and Apollo Client',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/react-graphql-apollo-client-cursorrules-prompt-file',
    'Cursor,React,GraphQL,ApolloClient',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'React MobX',
    'Best practices for React development with MobX state management',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/react-mobx-cursorrules-prompt-file',
    'Cursor,React,MobX,StateManagement',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'React Native Expo',
    'Guidelines for React Native development with Expo',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/react-native-expo-cursorrules-prompt-file',
    'Cursor,ReactNative,Expo,Mobile',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'React Native Expo Router TypeScript Windows',
    'Best practices for React Native development with Expo Router and TypeScript on Windows',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/react-native-expo-router-typescript-windows-cursorrules-prompt-file',
    'Cursor,ReactNative,Expo,TypeScript,Windows',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'React NextJS UI Development',
    'Guidelines for UI development with React and Next.js',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/react-nextjs-ui-development-cursorrules-prompt-fil',
    'Cursor,React,NextJS,UI',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'React Query',
    'Best practices for data fetching with React Query',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/react-query-cursorrules-prompt-file',
    'Cursor,React,ReactQuery,DataFetching',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'React Redux TypeScript',
    'Guidelines for React development with Redux and TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/react-redux-typescript-cursorrules-prompt-file',
    'Cursor,React,Redux,TypeScript',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'React Styled Components',
    'Best practices for styling React components with Styled Components',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/react-styled-components-cursorrules-prompt-file',
    'Cursor,React,StyledComponents,CSS',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'React TypeScript NextJS NodeJS',
    'Guidelines for full-stack development with React, TypeScript, Next.js, and Node.js',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/react-typescript-nextjs-nodejs-cursorrules-prompt-',
    'Cursor,React,TypeScript,NextJS,NodeJS',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'React TypeScript Symfony',
    'Best practices for full-stack development with React, TypeScript, and Symfony',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/react-typescript-symfony-cursorrules-prompt-file',
    'Cursor,React,TypeScript,Symfony',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Solidity Foundry',
    'Guidelines for Solidity development with Foundry',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/solidity-foundry-cursorrules-prompt-file',
    'Cursor,Solidity,Foundry,Blockchain',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Solidity Hardhat',
    'Best practices for Solidity development with Hardhat',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/solidity-hardhat-cursorrules-prompt-file',
    'Cursor,Solidity,Hardhat,Blockchain',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Solidity React Blockchain Apps',
    'Guidelines for building blockchain applications with Solidity and React',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/solidity-react-blockchain-apps-cursorrules-prompt-',
    'Cursor,Solidity,React,Blockchain',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'SolidJS Basic',
    'Basic guidelines for SolidJS development',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/solidjs-basic-cursorrules-prompt-file',
    'Cursor,SolidJS,Frontend,JavaScript',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'SolidJS Tailwind',
    'Best practices for SolidJS development with Tailwind',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/solidjs-tailwind-cursorrules-prompt-file',
    'Cursor,SolidJS,Tailwind,Frontend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'SolidJS TypeScript',
    'Guidelines for SolidJS development with TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/solidjs-typescript-cursorrules-prompt-file',
    'Cursor,SolidJS,TypeScript,Frontend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Svelte 5 vs Svelte 4',
    'Comparison guidelines between Svelte 5 and Svelte 4',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/svelte-5-vs-svelte-4-cursorrules-prompt-file',
    'Cursor,Svelte,Frontend,JavaScript',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'SvelteKit RESTful API Tailwind CSS',
    'Best practices for building RESTful APIs with SvelteKit and Tailwind CSS',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/sveltekit-restful-api-tailwind-css-cursorrules-pro',
    'Cursor,SvelteKit,RESTful,TailwindCSS',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'SvelteKit TailwindCSS TypeScript',
    'Guidelines for SvelteKit development with TailwindCSS and TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/sveltekit-tailwindcss-typescript-cursorrules-promp',
    'Cursor,SvelteKit,TailwindCSS,TypeScript',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'SvelteKit TypeScript Guide',
    'Best practices for SvelteKit development with TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/sveltekit-typescript-guide-cursorrules-prompt-file',
    'Cursor,SvelteKit,TypeScript,Frontend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'SwiftUI Guidelines',
    'Guidelines for iOS development with SwiftUI',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/swiftui-guidelines-cursorrules-prompt-file',
    'Cursor,SwiftUI,iOS,Mobile',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Tailwind CSS NextJS Guide',
    'Best practices for Next.js development with Tailwind CSS',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/tailwind-css-nextjs-guide-cursorrules-prompt-file',
    'Cursor,TailwindCSS,NextJS,Frontend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Tailwind React Firebase',
    'Guidelines for full-stack development with Tailwind, React, and Firebase',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/tailwind-react-firebase-cursorrules-prompt-file',
    'Cursor,Tailwind,React,Firebase',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Tailwind Shadcn UI Integration',
    'Best practices for integrating Tailwind with Shadcn UI',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/tailwind-shadcn-ui-integration-cursorrules-prompt-',
    'Cursor,Tailwind,ShadcnUI,Frontend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Tauri Svelte TypeScript Guide',
    'Guidelines for desktop app development with Tauri, Svelte, and TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/tauri-svelte-typescript-guide-cursorrules-prompt-f',
    'Cursor,Tauri,Svelte,TypeScript',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Temporal Python',
    'Best practices for working with Temporal in Python',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/temporal-python-cursorrules',
    'Cursor,Temporal,Python,Workflow',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript Axios',
    'Guidelines for making HTTP requests with TypeScript and Axios',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-axios-cursorrules-prompt-file',
    'Cursor,TypeScript,Axios,HTTP',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript Clasp',
    'Best practices for Google Apps Script development with TypeScript and Clasp',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-clasp-cursorrules-prompt-file',
    'Cursor,TypeScript,Clasp,GoogleAppsScript',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript Code Convention',
    'Coding conventions and standards for TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-code-convention-cursorrules-prompt-file',
    'Cursor,TypeScript,CodeConvention,Standards',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript Expo Jest Detox',
    'Guidelines for React Native testing with TypeScript, Expo, Jest, and Detox',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-expo-jest-detox-cursorrules-prompt-file',
    'Cursor,TypeScript,Expo,Jest,Detox',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript LLM Tech Stack',
    'Best practices for building LLM applications with TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-llm-tech-stack-cursorrules-prompt-file',
    'Cursor,TypeScript,LLM,AI',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript NestJS Best Practices',
    'Best practices for TypeScript development with NestJS',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-nestjs-best-practices-cursorrules-promp',
    'Cursor,TypeScript,NestJS,Backend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript NextJS',
    'Guidelines for Next.js development with TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-nextjs-cursorrules-prompt-file',
    'Cursor,TypeScript,NextJS,Frontend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript NextJS React',
    'Best practices for Next.js development with TypeScript and React',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-nextjs-react-cursorrules-prompt-file',
    'Cursor,TypeScript,NextJS,React',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript NextJS React Tailwind Supabase',
    'Guidelines for full-stack development with TypeScript, Next.js, React, Tailwind, and Supabase',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-nextjs-react-tailwind-supabase-cursorru',
    'Cursor,TypeScript,NextJS,React,Tailwind,Supabase',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript NextJS Supabase',
    'Best practices for Next.js development with TypeScript and Supabase',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-nextjs-supabase-cursorrules-prompt-file',
    'Cursor,TypeScript,NextJS,Supabase',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript NodeJS NextJS AI',
    'Guidelines for AI development with TypeScript, Node.js, and Next.js',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-nodejs-nextjs-ai-cursorrules-prompt-fil',
    'Cursor,TypeScript,NodeJS,NextJS,AI',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript NodeJS NextJS App',
    'Best practices for building applications with TypeScript, Node.js, and Next.js',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-nodejs-nextjs-app-cursorrules-prompt-fi',
    'Cursor,TypeScript,NodeJS,NextJS',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'TypeScript NodeJS NextJS React UI CSS',
    'Guidelines for full-stack development with TypeScript, Node.js, Next.js, React, and CSS',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/typescript-nodejs-nextjs-react-ui-css-cursorrules-',
    'Cursor,TypeScript,NodeJS,NextJS,React,CSS',
    unixepoch(),
    unixepoch()
);

-- Rules Directory Seeder SQL Script for Cloudflare D1 (Part 2)
-- Created: 2025-04-29

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Knative Istio Typesense GPU',
    'Guidelines for working with Knative, Istio, Typesense, and GPU',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/knative-istio-typesense-gpu-cursorrules-prompt-fil',
    'Cursor,Knative,Istio,Typesense,GPU',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Kubernetes MkDocs Documentation',
    'Best practices for documenting Kubernetes with MkDocs',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/kubernetes-mkdocs-documentation-cursorrules-prompt',
    'Cursor,Kubernetes,MkDocs,Documentation',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Laravel PHP 8.3',
    'Guidelines for Laravel development with PHP 8.3',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/laravel-php-83-cursorrules-prompt-file',
    'Cursor,Laravel,PHP,Backend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Laravel TALL Stack Best Practices',
    'Best practices for Laravel development with TALL stack',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/laravel-tall-stack-best-practices-cursorrules-prom',
    'Cursor,Laravel,TALL,Livewire',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Linux NVIDIA CUDA Python',
    'Guidelines for working with NVIDIA CUDA and Python on Linux',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/linux-nvidia-cuda-python-cursorrules-prompt-file',
    'Cursor,Linux,NVIDIA,CUDA,Python',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Netlify Official',
    'Official guidelines for Netlify deployment',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/netlify-official-cursorrules-prompt-file',
    'Cursor,Netlify,Deployment,Hosting',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Next Type LLM',
    'Guidelines for working with LLMs in Next.js',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/next-type-llm',
    'Cursor,NextJS,TypeScript,LLM',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'NextJS App Router',
    'Best practices for using the App Router in Next.js',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/nextjs-app-router-cursorrules-prompt-file',
    'Cursor,NextJS,AppRouter,React',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'NextJS Material UI Tailwind CSS',
    'Guidelines for Next.js development with Material UI and Tailwind CSS',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/nextjs-material-ui-tailwind-css-cursorrules-prompt',
    'Cursor,NextJS,MaterialUI,TailwindCSS',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'NextJS React Tailwind',
    'Best practices for Next.js development with React and Tailwind',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/nextjs-react-tailwind-cursorrules-prompt-file',
    'Cursor,NextJS,React,Tailwind',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'NextJS React TypeScript',
    'Guidelines for Next.js development with React and TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/nextjs-react-typescript-cursorrules-prompt-file',
    'Cursor,NextJS,React,TypeScript',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'NextJS SEO Dev',
    'Best practices for SEO optimization in Next.js',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/nextjs-seo-dev-cursorrules-prompt-file',
    'Cursor,NextJS,SEO,WebDevelopment',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'NextJS Supabase Shadcn PWA',
    'Guidelines for building PWAs with Next.js, Supabase, and Shadcn',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/nextjs-supabase-shadcn-pwa-cursorrules-prompt-file',
    'Cursor,NextJS,Supabase,Shadcn,PWA',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'NextJS Supabase Todo App',
    'Best practices for building todo apps with Next.js and Supabase',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/nextjs-supabase-todo-app-cursorrules-prompt-file',
    'Cursor,NextJS,Supabase,TodoApp',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'NextJS Tailwind TypeScript Apps',
    'Guidelines for building applications with Next.js, Tailwind, and TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/nextjs-tailwind-typescript-apps-cursorrules-prompt',
    'Cursor,NextJS,Tailwind,TypeScript',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'NextJS TypeScript App',
    'Best practices for Next.js applications with TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/nextjs-typescript-app-cursorrules-prompt-file',
    'Cursor,NextJS,TypeScript,WebApp',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'NextJS TypeScript',
    'Guidelines for Next.js development with TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/nextjs-typescript-cursorrules-prompt-file',
    'Cursor,NextJS,TypeScript,Frontend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'NextJS TypeScript Tailwind',
    'Best practices for Next.js development with TypeScript and Tailwind',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/nextjs-typescript-tailwind-cursorrules-prompt-file',
    'Cursor,NextJS,TypeScript,Tailwind',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'NextJS Vercel Supabase',
    'Guidelines for Next.js development with Vercel and Supabase',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/nextjs-vercel-supabase-cursorrules-prompt-file',
    'Cursor,NextJS,Vercel,Supabase',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'NextJS Vercel TypeScript',
    'Best practices for Next.js development with Vercel and TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/nextjs-vercel-typescript-cursorrules-prompt-file',
    'Cursor,NextJS,Vercel,TypeScript',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'NextJS 15 React 19 Vercel AI Tailwind',
    'Guidelines for Next.js 15 with React 19, Vercel AI, and Tailwind',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/nextjs15-react19-vercelai-tailwind-cursorrules-prompt-file',
    'Cursor,NextJS,React,VercelAI,Tailwind',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'NodeJS MongoDB Tutorial',
    'Tutorial guidelines for Node.js with MongoDB',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/nodejs-mongodb-cursorrules-prompt-file-tutorial',
    'Cursor,NodeJS,MongoDB,Backend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'NodeJS MongoDB JWT Express React',
    'Best practices for full-stack development with Node.js, MongoDB, JWT, Express, and React',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/nodejs-mongodb-jwt-express-react-cursorrules-promp',
    'Cursor,NodeJS,MongoDB,JWT,Express,React',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Optimize DRY SOLID Principles',
    'Guidelines for optimizing code with DRY and SOLID principles',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/optimize-dry-solid-principles-cursorrules-prompt-f',
    'Cursor,DRY,SOLID,CodeOptimization',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Optimize Rell Blockchain Code',
    'Best practices for optimizing Rell blockchain code',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/optimize-rell-blockchain-code-cursorrules-prompt-f',
    'Cursor,Rell,Blockchain,Optimization',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Pandas Scikit-Learn Guide',
    'Guidelines for data analysis with Pandas and Scikit-Learn',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/pandas-scikit-learn-guide-cursorrules-prompt-file',
    'Cursor,Pandas,ScikitLearn,DataScience',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Plasticode Telegram API',
    'Best practices for working with Telegram API using Plasticode',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/plasticode-telegram-api-cursorrules-prompt-file',
    'Cursor,Plasticode,TelegramAPI,Messaging',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Python Fast API',
    'Guidelines for building APIs with Python and FastAPI',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/py-fast-api',
    'Cursor,Python,FastAPI,API',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'PyQt6 EEG Processing',
    'Best practices for EEG data processing with PyQt6',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/pyqt6-eeg-processing-cursorrules-prompt-file',
    'Cursor,PyQt6,EEG,DataProcessing',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Python TypeScript Guide',
    'Guidelines for using Python and TypeScript together',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/python--typescript-guide-cursorrules-prompt-file',
    'Cursor,Python,TypeScript,FullStack',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Python 3.12 FastAPI Best Practices',
    'Best practices for Python 3.12 with FastAPI',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/python-312-fastapi-best-practices-cursorrules-prom',
    'Cursor,Python,FastAPI,API',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Python Containerization',
    'Guidelines for containerizing Python applications',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/python-containerization-cursorrules-prompt-file',
    'Cursor,Python,Docker,Containerization',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Python Best Practices',
    'Best practices for Python development',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/python-cursorrules-prompt-file-best-practices',
    'Cursor,Python,BestPractices,Programming',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Python Developer',
    'Guidelines for Python developers',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/python-developer-cursorrules-prompt-file',
    'Cursor,Python,Development,Programming',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Python Django Best Practices',
    'Best practices for Python development with Django',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/python-django-best-practices-cursorrules-prompt-fi',
    'Cursor,Python,Django,WebDevelopment',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Python FastAPI Best Practices',
    'Best practices for Python development with FastAPI',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/python-fastapi-best-practices-cursorrules-prompt-f',
    'Cursor,Python,FastAPI,API',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Python FastAPI',
    'Guidelines for building APIs with Python and FastAPI',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/python-fastapi-cursorrules-prompt-file',
    'Cursor,Python,FastAPI,API',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Python FastAPI Scalable API',
    'Best practices for building scalable APIs with Python and FastAPI',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/python-fastapi-scalable-api-cursorrules-prompt-fil',
    'Cursor,Python,FastAPI,Scalability',
    unixepoch(),
    unixepoch()
);

-- Rules Directory Seeder SQL Script for Cloudflare D1 (Part 1)
-- Created: 2025-04-29

-- Insert data for each rule directory
INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Android Jetpack Compose',
    'Guidelines for Android development with Jetpack Compose',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/android-jetpack-compose-cursorrules-prompt-file',
    'Cursor,Android,JetpackCompose,Mobile',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Angular Novo Elements',
    'Best practices for Angular development with Novo Elements',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/angular-novo-elements-cursorrules-prompt-file',
    'Cursor,Angular,NovoElements,Frontend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Angular TypeScript',
    'Guidelines for Angular development with TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/angular-typescript-cursorrules-prompt-file',
    'Cursor,Angular,TypeScript,Frontend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'ASCII Simulation Game',
    'Guidelines for developing ASCII-based simulation games',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/ascii-simulation-game-cursorrules-prompt-file',
    'Cursor,ASCII,GameDevelopment,Simulation',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'ASP.NET ABP',
    'Best practices for ASP.NET development with ABP framework',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/aspnet-abp-cursorrules-prompt-file',
    'Cursor,ASPNET,ABP,Backend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Astro TypeScript',
    'Guidelines for developing with Astro and TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/astro-typescript-cursorrules-prompt-file',
    'Cursor,Astro,TypeScript,Frontend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Chrome Extension Development',
    'Best practices for Chrome extension development with JavaScript and TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/chrome-extension-dev-js-typescript-cursorrules-pro',
    'Cursor,ChromeExtension,JavaScript,TypeScript',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Code Guidelines',
    'General code quality guidelines and best practices',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/code-guidelines-cursorrules-prompt-file',
    'Cursor,CodeQuality,BestPractices,Guidelines',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Convex',
    'Guidelines for development with Convex backend',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/convex-cursorrules-prompt-file',
    'Cursor,Convex,Backend,Database',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'C++ Programming Guidelines',
    'Best practices and standards for C++ programming',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/cpp-programming-guidelines-cursorrules-prompt-file',
    'Cursor,C++,Programming,Guidelines',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'React TypeScript Shadcn UI',
    'Guidelines for React development with TypeScript and Shadcn UI',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/cursor-ai-react-typescript-shadcn-ui-cursorrules-p',
    'Cursor,React,TypeScript,ShadcnUI',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'NextJS 14 Tailwind SEO',
    'Best practices for NextJS 14 with Tailwind and SEO optimization',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/cursorrules-cursor-ai-nextjs-14-tailwind-seo-setup',
    'Cursor,NextJS,Tailwind,SEO',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'WordPress Draft MacOS',
    'Guidelines for WordPress development on MacOS',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/cursorrules-cursor-ai-wordpress-draft-macos-prompt',
    'Cursor,WordPress,MacOS,CMS',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Python FastAPI API',
    'Best practices for building APIs with Python and FastAPI',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/cursorrules-file-cursor-ai-python-fastapi-api',
    'Cursor,Python,FastAPI,API',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Deno Integration Techniques',
    'Guidelines for integrating Deno in your projects',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/deno-integration-techniques-cursorrules-prompt-fil',
    'Cursor,Deno,JavaScript,TypeScript',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'DragonRuby Best Practices',
    'Best practices for game development with DragonRuby',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/dragonruby-best-practices-cursorrules-prompt-file',
    'Cursor,DragonRuby,GameDevelopment,Ruby',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Drupal 11',
    'Guidelines for Drupal 11 development',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/drupal-11-cursorrules-prompt-file',
    'Cursor,Drupal,PHP,CMS',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Elixir Engineer Guidelines',
    'Best practices for Elixir engineering',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/elixir-engineer-guidelines-cursorrules-prompt-file',
    'Cursor,Elixir,FunctionalProgramming,Backend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Elixir Phoenix Docker Setup',
    'Guidelines for setting up Elixir Phoenix with Docker',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/elixir-phoenix-docker-setup-cursorrules-prompt-fil',
    'Cursor,Elixir,Phoenix,Docker',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'ES Module NodeJS Guidelines',
    'Best practices for using ES Modules with NodeJS',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/es-module-nodejs-guidelines-cursorrules-prompt-fil',
    'Cursor,ESModules,NodeJS,JavaScript',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Flutter App Expert',
    'Expert guidelines for Flutter app development',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/flutter-app-expert-cursorrules-prompt-file',
    'Cursor,Flutter,Mobile,Dart',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Flutter Development Guidelines',
    'Comprehensive guidelines for Flutter development',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/flutter-development-guidelines-cursorrules-prompt-file',
    'Cursor,Flutter,Mobile,Dart',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Flutter Riverpod',
    'Best practices for Flutter development with Riverpod state management',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/flutter-riverpod-cursorrules-prompt-file',
    'Cursor,Flutter,Riverpod,StateManagement',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Git Conventional Commit Messages',
    'Guidelines for writing conventional commit messages in Git',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/git-conventional-commit-messages',
    'Cursor,Git,CommitMessages,Conventions',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'GitHub Code Quality',
    'Best practices for maintaining code quality on GitHub',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/github-code-quality-cursorrules-prompt-file',
    'Cursor,GitHub,CodeQuality,CI',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'GitHub Instructions',
    'Guidelines for working with GitHub repositories',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/github-cursorrules-prompt-file-instructions',
    'Cursor,GitHub,Git,Collaboration',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Go Backend Scalability',
    'Best practices for building scalable backends with Go',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/go-backend-scalability-cursorrules-prompt-file',
    'Cursor,Go,Backend,Scalability',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Go ServeMux REST API',
    'Guidelines for building REST APIs with Go ServeMux',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/go-servemux-rest-api-cursorrules-prompt-file',
    'Cursor,Go,ServeMux,REST',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Graphical Apps Development',
    'Best practices for developing graphical applications',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/graphical-apps-development-cursorrules-prompt-file',
    'Cursor,Graphics,UI,AppDevelopment',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'HTML Tailwind CSS JavaScript',
    'Guidelines for web development with HTML, Tailwind CSS, and JavaScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/html-tailwind-css-javascript-cursorrules-prompt-fi',
    'Cursor,HTML,TailwindCSS,JavaScript',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'HTMX Basic',
    'Basic guidelines for developing with HTMX',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/htmx-basic-cursorrules-prompt-file',
    'Cursor,HTMX,Frontend,JavaScript',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'HTMX Django',
    'Best practices for using HTMX with Django',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/htmx-django-cursorrules-prompt-file',
    'Cursor,HTMX,Django,Python',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'HTMX Flask',
    'Guidelines for integrating HTMX with Flask',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/htmx-flask-cursorrules-prompt-file',
    'Cursor,HTMX,Flask,Python',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'HTMX Go Basic',
    'Basic guidelines for using HTMX with Go',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/htmx-go-basic-cursorrules-prompt-file',
    'Cursor,HTMX,Go,Backend',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'HTMX Go Fiber',
    'Best practices for using HTMX with Go Fiber',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/htmx-go-fiber-cursorrules-prompt-file',
    'Cursor,HTMX,Go,Fiber',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Java General Purpose',
    'General purpose guidelines for Java development',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/java-general-purpose-cursorrules-prompt-file',
    'Cursor,Java,Backend,Programming',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'Java SpringBoot JPA',
    'Best practices for Java development with SpringBoot and JPA',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/java-springboot-jpa-cursorrules-prompt-file',
    'Cursor,Java,SpringBoot,JPA',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'JavaScript Astro Tailwind CSS',
    'Guidelines for web development with JavaScript, Astro, and Tailwind CSS',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/javascript-astro-tailwind-css-cursorrules-prompt-f',
    'Cursor,JavaScript,Astro,TailwindCSS',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'JavaScript Chrome APIs',
    'Best practices for working with Chrome APIs in JavaScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/javascript-chrome-apis-cursorrules-prompt-file',
    'Cursor,JavaScript,ChromeAPIs,WebExtension',
    unixepoch(),
    unixepoch()
);

INSERT INTO rule (id, title, description, githubUrl, tags, createdAt, updatedAt)
VALUES (
    lower(hex(randomblob(16))),
    'JavaScript TypeScript Code Quality',
    'Code quality guidelines for JavaScript and TypeScript',
    'https://github.com/PatrickJS/awesome-cursorrules/blob/main/rules/javascript-typescript-code-quality-cursorrules-pro',
    'Cursor,JavaScript,TypeScript,CodeQuality',
    unixepoch(),
    unixepoch()
);
