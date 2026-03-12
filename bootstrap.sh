#!/bin/bash

echo "Creating ACME showcase scaffold..."

mkdir -p .github/workflows
mkdir -p _layouts
mkdir -p _includes
mkdir -p _milestones
mkdir -p _devlogs
mkdir -p _stories
mkdir -p _team
mkdir -p _products
mkdir -p assets/css
mkdir -p assets/img
mkdir -p assets/badges
mkdir -p company
mkdir -p screenshots

cat <<EOF > _config.yml
title: ACME ClawWorks
description: A radically transparent AI-assisted engineering studio built with OpenClaw.
markdown: kramdown
permalink: pretty

collections:
  milestones:
    output: true
    permalink: /milestones/:name/
  devlogs:
    output: true
    permalink: /devlogs/:name/
  stories:
    output: true
    permalink: /stories/:name/
  team:
    output: true
    permalink: /team/:name/
  products:
    output: true
    permalink: /products/:name/
EOF

cat <<EOF > index.md
---
layout: home
title: ACME ClawWorks
permalink: /
---

Welcome to **ACME ClawWorks**.

A radically transparent AI-assisted engineering studio built with OpenClaw.
EOF

cat <<EOF > company/how-acme-works.md
---
title: How ACME Works
layout: page
permalink: /company/how-acme-works/
---

ACME ClawWorks is a founder-led AI-assisted engineering studio.

Ideas begin with the CTO and flow through product, architecture,
engineering, QA, and milestone publication.
EOF

cat <<EOF > _milestones/ORB-M1-acme-infrastructure-online.md
---
title: "ORB-M1 — ACME Infrastructure Online"
milestone_id: "ORB-M1"
product: "ACME-Orbit"
milestone_type: "company"
published_on: 2026-03-12
showcase_candidate: true
---

ACME ClawWorks is officially online.

This milestone marks the moment the company structure,
governance model, and workflow became operational.
EOF

cat <<EOF > _devlogs/week-01-the-company-begins.md
---
title: "Week 01 — The Company Begins"
week: 1
published_on: 2026-03-12
---

The first week of ACME ClawWorks focused on defining
how the company operates before building products.
EOF

cat <<EOF > _team/alex-mercer.md
---
title: "Alex Mercer"
role: "Program Director"
marker: "⚙️"
order: 1
---

Alex Mercer keeps ACME running smoothly by coordinating work
through the product funnel and milestone system.
EOF

cat <<EOF > assets/css/site.css
body {
  font-family: system-ui, sans-serif;
  margin: 0;
  padding: 0;
}
EOF

cat <<EOF > README.md
# ACME Showcase Template

This repository contains the starter template for the
ACME ClawWorks public documentary site.
EOF

echo "Scaffold created."
