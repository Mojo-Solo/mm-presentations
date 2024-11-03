import React from 'react';
import { Presentation, Heading, Slide, Text, OrderedList, ListItem, CodeSpan, SlideLayout, UnorderedList, Notes } from '@/components/Presentation';

export default function MyPresentation() {
  return (
    <Presentation>

      <Slide>
        <Heading>AI Agents Platform</Heading>
        <Text>A multi-purpose chatbot that orchestrates expert agents to solve complex problems</Text>
        <Notes>
          Welcome to the AI Agents platform! This innovative chatbot enables users to interact with a CEO character named Alex, who leads a team of specialized AI experts to comprehensively address a wide variety of challenges. Through structured yet free-flowing collaboration, this platform delivers actionable solutions aligned with user goals.
        </Notes>
      </Slide>

      <Slide>
        <Heading>Key Features</Heading>
        <UnorderedList>
          <ListItem>Handles diverse problem domains and requests</ListItem>
          <ListItem>Productive, structured agent interactions</ListItem>
          <ListItem>Dynamic generation of expert agents</ListItem>
          <ListItem>Seamless UX with clear communication and results</ListItem>
        </UnorderedList>
        <Notes>
          The AI Agents platform is designed to excel in four key areas:
          1) Adaptability to handle a breadth of problems
          2) Fostering structured yet natural collaboration between agents 
          3) Flexibly creating new expert agents on-demand
          4) Delivering a polished user experience from start to end
        </Notes>
      </Slide>

      <Slide>
        <Heading>Workflow</Heading>
        <OrderedList>
          <ListItem><Text>User Alignment</Text></ListItem>
          <ListItem><Text>Team Creation</Text></ListItem>
          <ListItem><Text>Collaborative Problem Solving</Text></ListItem>
          <ListItem><Text>User Involvement</Text></ListItem>
          <ListItem><Text>Refinement through Feedback</Text></ListItem>
          <ListItem><Text>Conclusive Assistance</Text></ListItem>
        </OrderedList>
        <Notes>
          The AI Agents platform follows a 6-step workflow:
          1) Gathering context and goals from the user
          2) Building a team of expert agents suited to the task
          3) Facilitating collaborative solutioning discussions 
          4) Allowing users to modify and expand the agent team
          5) Iteratively improving based on user feedback
          6) Supporting the user until the goal is fully met
        </Notes>
      </Slide>

      <Slide>
        <Heading>Commands</Heading>
        <UnorderedList>
          <ListItem><CodeSpan>/initiate</CodeSpan> - Begin interaction and gather requirements</ListItem>
          <ListItem><CodeSpan>/createagents</CodeSpan> - Form teams to solve sub-problems</ListItem>
          <ListItem><CodeSpan>/brainstorm</CodeSpan> - Open discussion among agents</ListItem>
          <ListItem><CodeSpan>/feedback</CodeSpan> - Capture user input on agent performance</ListItem>
          <ListItem><CodeSpan>/finalize</CodeSpan> - Summarize recommendations and next steps</ListItem>
          <ListItem><CodeSpan>/reset</CodeSpan> - Clear previous context and start over</ListItem>
        </UnorderedList>
        <Notes>
          Users can control the AI Agents platform using these simple commands:
          - /initiate: Kick off the interaction with an intro and requirements gathering
          - /createagents: Assemble specialized agent teams 
          - /brainstorm: Facilitate an open discussion between agents
          - /feedback: Gather user feedback on the agents' work
          - /finalize: Deliver a consumable solution and clear next steps
          - /reset: Wipe previous context and begin a new request
        </Notes>
      </Slide>

      <Slide>
        <Heading>Experience It Now!</Heading>
        <Text>
          Initiate an AI Agents interaction of your own - simply use the <CodeSpan>/initiate</CodeSpan> command to get started. We look forward to demonstrating how this innovative chatbot platform can powerfully address your toughest challenges through intelligent collaboration. 
        </Text>
        <Notes>
          Thank you for your interest in the AI Agents platform. We invite you to take it for a test drive and see firsthand how it can help you solve complex, multi-faceted problems. Whenever you're ready, use the /initiate command and our team of expert agents, led by Alex, will spring into action. We're excited to show you the future of collaborative chatbots!
        </Notes>
      </Slide>
        
    </Presentation>
  )
}
