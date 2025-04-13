import { clsx, type ClassValue } from "clsx";
import { UNSAFE_invariant as invariant } from "react-router";
import { twMerge } from "tailwind-merge";

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

export function debounce<T extends (...args: any[]) => void>(
  func: T,
  wait: number,
): (...args: Parameters<T>) => void {
  let timeout: NodeJS.Timeout | null = null;

  return (...args: Parameters<T>) => {
    if (timeout !== null) {
      clearTimeout(timeout);
    }
    timeout = setTimeout(() => {
      func(...args);
    }, wait);
  };
}

export function getGitHubUsername(url: string) {
  try {
    const cleanedUrl = url.trim().split("?")[0];
    invariant(cleanedUrl, "Invalid github url");
    const parts = cleanedUrl.split("/").filter((part) => part.length > 0);
    if (!parts.includes("github.com") || parts.length < 3) {
      return null; // Invalid URL
    }
    const usernameIndex = parts.indexOf("github.com") + 1;
    return parts[usernameIndex] || null;
  } catch (error) {
    console.error("Error parsing GitHub URL:", error);
    return null;
  }
}

export function isValidEmailFormat(email: string): boolean {
  const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
  return emailRegex.test(email);
}

export function isValidTokenRegex(
  token: string,
  expectedLength: number,
): boolean {
  if (typeof token !== "string") {
    return false;
  }

  const regex = new RegExp(`^[a-zA-Z0-9_]{${expectedLength}}$`);
  return regex.test(token);
}

export function parseUserAgent(userAgent: string): {
  system: string;
  browser: string;
  isMobile: boolean;
} {
  const ua = userAgent.toLowerCase();

  let system = "Unknown";
  let isMobile = false;

  if (ua.includes("android")) {
    system = "Android";
    isMobile = true;
  } else if (
    ua.includes("ios") ||
    ua.includes("iphone") ||
    ua.includes("ipad")
  ) {
    system = "iOS";
    isMobile = true;
  } else if (ua.includes("windows")) {
    system = "Windows";
  } else if (ua.includes("mac os") || ua.includes("macos")) {
    system = "Macintosh";
  } else if (ua.includes("linux")) {
    system = "Linux";
  }

  const browserMatchers: {
    regex: RegExp;
    name: (match: RegExpMatchArray) => string;
  }[] = [
    { regex: /firefox\/(\d+(\.\d+)?)/, name: (match) => `Firefox ${match[1]}` },
    { regex: /edg\/(\d+(\.\d+)?)/, name: (match) => `Edge ${match[1]}` },
    { regex: /chrome\/(\d+(\.\d+)?)/, name: (match) => `Chrome ${match[1]}` },
    { regex: /safari\/(\d+(\.\d+)?)/, name: (match) => `Safari ${match[1]}` },
    {
      regex: /(opera|opr)\/(\d+(\.\d+)?)/,
      name: (match) => `Opera ${match[2]}`,
    },
  ];

  let browser = "Unknown";

  for (const matcher of browserMatchers) {
    const match = ua.match(matcher.regex);
    if (
      match &&
      !(matcher.regex.source.includes("safari") && ua.includes("chrome"))
    ) {
      browser = matcher.name(match);
      break;
    }
  }

  return { system, browser, isMobile };
}

export function formatDate(date: Date | string | null | undefined): string {
  if (!date) {
    return "unknown";
  }

  let dateObj: Date;
  if (typeof date === "string") {
    try {
      dateObj = new Date(date);
    } catch (_e) {
      return "Invalid Date";
    }
    if (Number.isNaN(dateObj.getTime())) {
      return "Invalid Date";
    }
  } else {
    dateObj = date;
  }

  return new Intl.DateTimeFormat("en-US", {
    year: "numeric",
    month: "numeric",
    day: "numeric",
    hour: "numeric",
    minute: "numeric",
    second: "numeric",
    hour12: true,
  }).format(dateObj);
}

export function callAll<Args extends Array<unknown>>(
  ...fns: Array<((...args: Args) => unknown) | undefined>
) {
  return (...args: Args) => {
    for (const fn of fns) {
      fn?.(...args);
    }
  };
}
