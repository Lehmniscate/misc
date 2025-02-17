
# About the job

# We are a Stanford startup working on an AI-driven residential real estate marketplace

# (https://www.homekeys.casa/meet-our-team). With a mix of decades of research experience across Econometrics, Marketplace Design, AI, and Real Estate, our founding team includes domain experts like Norm Miller (Real Estate, UC San Diego), Guido Imbens (Causal Inference, Stanford), and Al Roth (Marketplace Design, Stanford).

# We are currently partnered with the Stanford Faculty and Staff Housing office to make it easy for people to buy and sell houses, providing an alternative to the traditional Realtor model. We cover everything from price determination, auctioning, search, to document comprehension, a voice-based copilot and workflow management. Our focus right now is the AI-incorporated workflow.


# https://marketdesigner.blogspot.com/2025/02/ai-assisted-home-buying-and-selling-at.html

# In light of the 2024 National Association of Realtor ruling, we see and are executing on an exciting opportunity to design tools from the ground up, making the real estate processes smoother and more efficient with AI at the core.


# Our tech stack:

#     Render, Vercel, Clerk, React, Python, Postgres, GraphQL.


# We are looking for full-stack engineers with at least 5 years of full-time work experience.

# If you are interested in building the future of real estate, we'd love to chat!

class RecentCounter
  def initialize()
      @counter = []
      @previousIndex = 0
  end


=begin
  :type t: Integer
  :rtype: Integer
=end
  def ping(t)
      @counter.append(t)
      while @counter[@previousIndex] + 3000 < t do
          @previousIndex += 1
      end
      @counter.length - @previousIndex
  end


end

# Your RecentCounter object will be instantiated and called as such:
# obj = RecentCounter.new()
# param_1 = obj.ping(t)