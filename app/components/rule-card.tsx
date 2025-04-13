import { Link } from "react-router";
import {
  Card,
  CardTitle,
  CardDescription,
  CardHeader,
  CardContent,
} from "./ui/card";
import { formatDate, getGitHubUsername } from "~/lib/utils";
import { Badge } from "./ui/badge";

type Props = {
  title: string;
  description: string;
  tags: string;
  githubUrl: string;
  createdAt: Date;
};

export function RuleCard({
  title,
  description,
  tags,
  githubUrl,
  createdAt,
}: Props) {
  const username = getGitHubUsername(githubUrl);
  return (
    <Card className="shadow-sm hover:shadow-md transition-shadow">
      <CardHeader>
        <CardTitle className="text-xl font-serif">
          <Link to={`${githubUrl}`} target="_blank" className="hover:underline">
            {title}
          </Link>
        </CardTitle>
        <div className="flex gap-x-1 flex-wrap">
          {tags.split(",").map((tag, index) => (
            <Badge key={tag} variant="secondary">
              {tag}
            </Badge>
          ))}
        </div>
        <CardDescription>{description}</CardDescription>
      </CardHeader>

      <CardContent>
        <div className="flex items-center text-sm text-muted-foreground">
          <span>
            {username || "Anonymous"} • {formatDate(new Date(createdAt))}
          </span>
        </div>
      </CardContent>
    </Card>
  );
}
