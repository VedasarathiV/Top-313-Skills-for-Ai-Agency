# 🚀 Top 313 Skills for AI Agency

[![Skills](https://img.shields.io/badge/Total%20Skills-313-blue.svg)](./skills_manifest.json)
[![Supported IDEs](https://img.shields.io/badge/IDEs-Antigravity%20%7C%20Claude%20%7C%20Cursor%20%7C%20Codex%20%7C%20Windsurf%20%7C%20Freebuf-purple.svg)](#-how-to-add-to-different-ides--ai-platforms)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](#)

A production-grade collection of **313 specialized AI agency skills** ready to power your AI assistant in **Antigravity**, **Claude Code**, **Cursor**, **Codex / ChatGPT**, **Windsurf**, and **Freebuf / DevSecOps** workflows.

Turn any AI model into an autonomous specialist team spanning full-stack engineering, growth marketing, 3D/game engines, cybersecurity, GIS, and enterprise operations.

---

## ⚡ Quick Clone

```bash
git clone https://github.com/VedasarathiV/Top-313-Skills-for-Ai-Agency.git
cd Top-313-Skills-for-Ai-Agency
chmod +x install.sh
```

---

## 💻 How to Add to Different IDEs & AI Platforms

### 1. 🪐 Google Antigravity & Gemini IDE
Antigravity automatically discovers skills inside `~/.gemini/config/skills/`.
```bash
# One-click install for Antigravity
./install.sh --antigravity
```
*Restart or reload Antigravity, and all 313 skills will be auto-indexed.*

---

### 2. 🤖 Anthropic Claude (Claude Code & Claude Desktop)
#### For Claude Code (CLI):
```bash
./install.sh --claude
```
#### For Claude Desktop & Projects:
1. Open **Claude** → Navigate to **Projects**.
2. Select your project → Go to **Project Knowledge**.
3. Upload `skills_manifest.json` and any specific skill folders from `skills/` (such as `skills/agency-frontend-developer/SKILL.md`).
4. In the **Project Instructions / Custom Instructions**, add:
   ```markdown
   Refer to the skill modules in project knowledge (e.g. SKILL.md) to adopt specialist personas, standards, and verification checklists.
   ```

---

### 3. ⚡ Cursor IDE
Cursor supports agent rules in `.cursor/rules/`.
```bash
# Install into your current project's Cursor rules
./install.sh --cursor .

# Or install into a specific project path
./install.sh --cursor /path/to/my-project
```
*Tip: In Cursor's Chat/Composer, tag `@.cursor/rules` or reference specific skills directly!*

---

### 4. 🧠 OpenAI Codex / ChatGPT / Aider
#### For Aider (Terminal AI):
Copy your chosen skills into your project's conventions:
```bash
cat skills/agency-backend-architect/SKILL.md >> .aider.conventions.md
```
#### For ChatGPT / Custom GPTs / Codex:
1. Open **ChatGPT** → **Explore GPTs** → **Create a GPT**.
2. Under **Knowledge**, attach `skills_manifest.json` or zip archives of the specific skills you need.
3. In the **Instructions** prompt box, specify:
   ```markdown
   You are an AI Agency orchestrator with 313 specialized skills. Consult the provided knowledge base to execute tasks with specialist standards.
   ```

---

### 5. 🌊 Windsurf / Cascade
Windsurf supports project rules inside `.windsurf/rules/`:
```bash
./install.sh --windsurf .
```
Or append key standards into `.windsurfrules`:
```bash
cat skills/agency-frontend-developer/SKILL.md >> .windsurfrules
```

---

### 6. 🛡️ Freebuf / DevSecOps & Security Tools
For cybersecurity analysts, bug bounty hunters, and researchers on Freebuf:
The pack includes specialized offensive, defensive, and reverse-engineering capabilities:
* `reverse-engineer-anything`: Binary decompilation, Ghidra/Frida runtime instrumentation & APK extraction.
* `agency-penetration-tester`: OWASP Top 10, network reconnaissance & CVE weaponization checks.
* `agency-application-security-engineer`: Threat modeling, SAST/DAST automation, and secure code review.
* `agency-blockchain-security-auditor`: Smart contract reentrancy, flash loan attack analysis, and audit matrices.

To export solely the security and reverse engineering tools into your security workspace:
```bash
mkdir -p ~/security-tools/skills
cp -R skills/*security* skills/*reverse* skills/*threat* ~/security-tools/skills/
```

---

## 🛠️ Python Universal Installer (Cross-Platform)

Works identically on **macOS**, **Linux**, and **Windows**:

```bash
# Install to Antigravity
python3 install.py --ide antigravity

# Install to Claude Code
python3 install.py --ide claude

# Install to a Cursor project
python3 install.py --ide cursor --project /path/to/my-project

# Install to a Windsurf project
python3 install.py --ide windsurf --project /path/to/my-project

# Install to any custom directory
python3 install.py --target /my/custom/path
```

---

## 📊 Skill Categories Overview (313 Total)

| Category | Count | Key Skills Included |
| :--- | :--- | :--- |
| **Executive & Management** | 12 | `agency-chief-of-staff`, `agency-chief-financial-officer`, `agency-operations-manager`, `agency-sprint-prioritizer` |
| **Frontend & UI/UX** | 22 | `build-ui`, `ui-states`, `shadcn`, `tailwind-patterns`, `react-patterns`, `agency-frontend-developer`, `agency-ui-designer` |
| **Backend & Architecture**| 18 | `api-design-principles`, `api-endpoint-builder`, `agency-backend-architect`, `database-design`, `kubernetes-architect` |
| **Sales & Growth Marketing**| 25 | `agency-growth-hacker`, `agency-seo-specialist`, `agency-sales-engineer`, `agency-outbound-strategist`, `agency-deal-strategist` |
| **Social & APAC Expansion** | 20 | `agency-twitter-engager`, `agency-linkedin-content-creator`, `agency-tiktok-strategist`, `agency-wechat-mini-program-developer` |
| **Game Engines & 3D / XR** | 24 | Unreal Engine 5, Unity, Godot 4, Roblox, VisionOS Spatial Metal, WebXR |
| **GIS & Mapping** | 12 | `agency-gis-analyst`, `agency-web-gis-developer`, ArcPy geoprocessing, GeoAI ML, drone mapping |
| **Cybersecurity & Reversing**| 19 | `reverse-engineer-anything`, `agency-penetration-tester`, `agency-application-security-engineer`, `agency-blockchain-security-auditor` |
| **AI, Prompting & Agents** | 12 | `agency-prompt-engineer`, `agency-rag-pipeline-engineer`, `agency-mcp-builder`, `agency-multi-agent-systems-architect` |
| **Domain Specialists** | 30+ | Legal, Healthcare, Real Estate, HR, Financial Analysis, Technical Writing, Grant Writing |

---

## 📁 Repository Structure

```
Top-313-Skills-for-Ai-Agency/
├── skills/                     # 313 individual skill packages
│   ├── agency-frontend-developer/
│   ├── agency-backend-architect/
│   ├── build-ui/
│   ├── react-patterns/
│   ├── reverse-engineer-anything/
│   └── ... (313 skills)
├── install.sh                  # Multi-IDE Bash installer
├── install.py                  # Multi-IDE Python installer
├── skills_manifest.json        # Machine-readable JSON directory of all skills
└── README.md
```

---

## 📄 License
MIT License. Free to use, modify, and distribute in personal and commercial AI agent workflows.
