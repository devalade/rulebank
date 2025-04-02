import { Link, useNavigate } from "react-router";
import { formatDistanceToNow } from "date-fns";
import { ChevronUp, MessageSquare } from "lucide-react";

import { Button } from "~/components/ui/button";
import { Card } from "~/components/ui/card";
import { Separator } from "~/components/ui/separator";
import { Badge } from "~/components/ui/badge";

export const meta = () => [{ title: "RuleBank | Home" }];

// Mock data for demonstration purposes
const mockRules = [
  {
    id: 1,
    title: "Always use TypeScript for type safety",
    description:
      "TypeScript provides compile-time type checking which reduces runtime errors.",
    author: "johndoe",
    votes: 42,
    createdAt: "2025-03-28",
    commentsCount: 12,
  },
  {
    id: 2,
    title: "Prefer functional components over class components in React",
    description:
      "Functional components are more concise and easier to test and maintain.",
    author: "janedoe",
    votes: 38,
    createdAt: "2025-03-29",
    commentsCount: 8,
  },
  {
    id: 3,
    title: "Follow the Single Responsibility Principle",
    description:
      "Each class or function should have only one reason to change.",
    author: "bobsmith",
    votes: 35,
    createdAt: "2025-03-30",
    commentsCount: 5,
  },
  {
    id: 4,
    title: "Use meaningful variable names",
    description:
      "Clear naming conventions make code more readable and maintainable.",
    author: "alicejones",
    votes: 31,
    createdAt: "2025-03-31",
    commentsCount: 7,
  },
  {
    id: 5,
    title: "Write tests for critical business logic",
    description:
      "Tests ensure your code works as expected and prevent regressions.",
    author: "samgreen",
    votes: 29,
    createdAt: "2025-03-31",
    commentsCount: 3,
  },
];

export default function Home() {
  const navigate = useNavigate();
  
  return (
    <div className="relative container mx-auto py-8 px-4 max-w-5xl">
      {/* Page texture overlay - Ghibli-inspired */}
      <div className="texture" />
      
      {/* Header section */}
      <div className="mb-8">
        <div className="flex items-center justify-between">
          <h1 className="text-3xl font-serif font-bold text-foreground">RuleBank</h1>
          <Button 
            onClick={() => navigate("/submit")} 
            className="shadow-primary"
          >
            Submit New Rule
          </Button>
        </div>
        <p className="text-muted-foreground mt-2">A collection of community-curated coding rules and best practices</p>
        <Separator className="mt-4" />
      </div>
      
      {/* Rules list */}
      <div className="space-y-4">
        {mockRules.map((rule, index) => (
          <Card key={rule.id} className="p-0 overflow-hidden border-2 shadow-sm hover:shadow-primary transition-shadow">
            <div className="flex">
              {/* Vote column */}
              <div className="flex flex-col items-center justify-center p-4 bg-muted w-16 border-r-2">
                <Button variant="ghost" size="sm" className="px-2 py-1">
                  <ChevronUp className="h-5 w-5" />
                </Button>
                <span className="font-bold text-lg">{rule.votes}</span>
              </div>
              
              {/* Content column */}
              <div className="flex-1 p-4">
                <div className="flex flex-col">
                  {/* Rule number and title */}
                  <div className="flex items-baseline gap-2">
                    <span className="text-muted-foreground font-mono">{index + 1}.</span>
                    <Link 
                      to={`/rules/${rule.id}`} 
                      className="text-lg font-serif font-bold hover:text-primary transition-colors"
                    >
                      {rule.title}
                    </Link>
                  </div>
                  
                  {/* Description */}
                  <p className="mt-2 text-muted-foreground">{rule.description}</p>
                  
                  {/* Meta information */}
                  <div className="flex items-center gap-2 mt-3 text-xs text-muted-foreground">
                    <span>by <Link to={`/users/${rule.author}`} className="text-foreground hover:text-primary">{rule.author}</Link></span>
                    <span>•</span>
                    <span>{formatDistanceToNow(new Date(rule.createdAt))} ago</span>
                    <span>•</span>
                    <Link to={`/rules/${rule.id}#comments`} className="flex items-center gap-1 hover:text-primary">
                      <MessageSquare className="h-3 w-3" />
                      <span>{rule.commentsCount} comments</span>
                    </Link>
                    
                    {/* Tags would go here if we had them */}
                    <div className="ml-auto">
                      <Badge variant="outline" className="ml-2">TypeScript</Badge>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </Card>
        ))}
      </div>
      
      {/* Pagination */}
      <div className="flex justify-center mt-8">
        <div className="flex space-x-2">
          <Button variant="outline" size="sm" disabled>Previous</Button>
          <Button variant="outline" size="sm" className="shadow-primary">1</Button>
          <Button variant="outline" size="sm">2</Button>
          <Button variant="outline" size="sm">3</Button>
          <Button variant="outline" size="sm">Next</Button>
        </div>
      </div>
    </div>
  );
}
