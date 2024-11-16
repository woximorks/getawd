Document.destroy_all
=begin
3.times do |i|
  Document.create!(
    title: "Document Title #{i + 1}",
    subheadings: ["What We Do", "Step 1", "Step 2"],
    body: [
      "This is the elevator speech paragraph of document #{i + 1}. It provides an introduction to the topic, and explains what we doin.",
      "This is the second paragraph of document #{i + 1}. It covers step 1.",
      "This is the third paragraph of document #{i + 1}. It covers step 2."
    ],
    images: [
      { url: "document#{i + 1}", alt: "Placeholder Main Image", caption: "Caption for Main Image" },
      { url: "document#{i + 1}-1", alt: "Placeholder Image for step 1", caption: "Figure 1 - Caption for Step 1" },
      { url: "document#{i + 1}-2", alt: "Placeholder Image 2", caption: "Figure 2 - Caption for Step 2" }
    ],
    youtube_id: ["dQw4w9WgXcQ", "3JZ_D3ELwOQ"], # Example YouTube video IDs
    metadata: { author: "Author #{i + 1}", published_at: Time.now - i.days }
  )
end
=end
Document.destroy_all
Document.create!(
    title: "Documentation Section",
    subheadings: ["What's a documentation?", "Step 1", "Step 2"],
    body: [
      "General guidelines for this documentation section. How to use it, how to update it, etc.",
      "subheadings, body, and images all correlate. Index 0 = the main image, paragraph, subheading, etc. When adding documentation, each related step will correspond to the index, ie step 1 = index 1. Don't add a step without an image.",
      "Those are the rules."
    ],
    images: [
      { url: "document1", alt: "Placeholder Main Image", caption: "Caption for Main Image" },
      { url: "document1-1", alt: "Placeholder Image for step 1", caption: "Figure 1 - Caption for Step 1" },
      { url: "document1-2", alt: "Placeholder Image 2", caption: "Figure 2 - Caption for Step 2" }
    ],
    youtube_id: [""], # Example YouTube video IDs
    metadata: { author: "Aaron W", published_at: Time.now }
  )