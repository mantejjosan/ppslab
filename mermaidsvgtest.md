## FLow Chart

### Problem:

Draw flow chart to find biggest among three given number

## Solution

You may find biggest among three numbers, by comparing systematically two numbers at a time, as shown in flowchart below:

![Mermaid svg](https://www.mermaidchart.com/raw/355d457a-ae82-4df0-b281-289cbb46b900?theme=light&version=v0.1&format=svg)

## Markdown code

Markdown used at [MerMaid](https://mermaid-js.github.io/mermaid-live-editor/).

```
graph TD
1([Start]) --> 2["a ← x<br/> b ← y<br/>c ← z<br/>"]
2 --> 3{a > b}
3 -->|Yes| 4{a > c}
4 -->|No| 8[/Output c/]
4 --> |Yes| 6[/Output a/]
3 -->|No| 5{b > c}
5 --> |No| 6
5 --> |Yes| 7[/Output b/]
7 --> 9([Stop])
6 --> 9
8 --> 9
```
