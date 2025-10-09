<script setup>
const hero = {
  displayName: 'Haoyang Weng 「翁颢洋」',
  description: [
    'I\'m a final-year undergraduate at <strong>Institute for Interdisciplinary Information Sciences (IIIS), Tsinghua University</strong>. Currently, I work with Prof. <strong>Yang Gao</strong> at IIIS and previously interned at <strong>LeCAR Lab</strong>, advised by Prof. <strong>Guanya Shi</strong>.',
    // 'I am intersted in the intersection between Machine Learning and Robotics. My goal is to build scalable and efficient robot learning algorithms.',
    '<strong>Research Interests:</strong> Machine Learning for Robotics.',
    '<strong>Goal:</strong> To build scalable and efficient robot learning algorithms.',
    'I believe that the combination of <strong>clean implementation of minimal algorithmic priors</strong> and <strong>large scale multi-source data</strong> will lead to generalizable robot learning algorithms.'
  ],
  avatar: '/images/portrait.jpeg',
  links: [
    {
      label: 'CV',
      href: 'https://docs.google.com/document/d/17crYmr2iqoUm9oktdJ4WDM960CwqA_jkrdp36a6NkW8/edit?usp=sharing'
    },
    {
      label: 'Email',
      href: 'mailto:wenghy22@mails.tsinghua.edu.cn'
    },
    {
      label: 'GitHub',
      href: 'https://github.com/EGalahad'
    },
    {
      label: 'Twitter',
      href: 'https://x.com/ElijahGalahad'
    }
  ]
};

const publications = [
  {
    title: 'HDMI: Learning Interactive Humanoid Whole-Body Control from Human Videos',
    summary:
      'A simple and general framework for acquiring whole-body interactive skills directly from human videos.',
    image: '/images/projects/suitcase_4x.gif',
    badges: ['Humanoids', 'Learning from Demonstrations', 'Reinforcement Learning'],
    links: [
      {
        label: 'ArXiv',
        href: 'http://arxiv.org/abs/2509.16757'
      },
      {
        label: 'Twitter',
        href: 'https://x.com/ElijahGalahad/status/1970187645948174842'
      },
      {
        label: 'Website',
        href: 'https://hdmi-humanoid.github.io/'
      },
      {
        label: 'Video',
        href: 'https://www.youtube.com/watch?v=-BDmzuvm778'
      },
      {
        label: 'Code',
        href: 'https://github.com/LeCAR-Lab/HDMI'
      },
    ]
  },
  {
    title: 'FACET: Force-Adaptive Control via Impedance Reference Tracking for Legged Robots',
    summary:
      'Force-adaptive policy conditioned on desired stiffness as command input, enabling variable impedance control.',
    image: '/images/projects/impedance.gif',
    badges: ['CoRL 2025 (Oral)', 'Impedance Control', 'Reinforcement Learning'],
    links: [
      {
        label: 'ArXiv',
        href: 'https://arxiv.org/abs/2505.06883'
      },
      {
        label: 'Twitter',
        href: 'https://x.com/ElijahGalahad/status/1924465106655584749'
      },
      {
        label: 'Website',
        href: 'https://facet.pages.dev/'
      },
      {
        label: 'Live Demo',
        href: 'https://facet.pages.dev/#/demo'
      }
    ]
  },
  {
    title: 'On Scaling Up 3D Gaussian Splatting',
    summary:
      'Developed √batch-size learning-rate scaling that enables near-linear speedup in distributed 3DGS training.',
    image: '/images/projects/3dgs_640-fast.gif',
    badges: ['ICLR 2025 (Oral)', 'Optimization', 'Distributed Training'],
    links: [
      {
        label: 'ArXiv',
        href: 'https://arxiv.org/abs/2406.18533'
      },
      {
        label: 'Twitter',
        href: 'https://x.com/sainingxie/status/1806364570887569532'
      },
      {
        label: 'Website',
        href: 'https://daohanlu.github.io/scaling-up-3dgs/'
      }
    ]
  },
  {
    title: 'Reinforcement Learning with Foundation Priors: Let Embodied Agent Efficiently Learn on Its Own',
    summary:
      'Introduced the RLFP framework that leverages foundation models for policy and value guidance in real-world RL finetuning.',
    image: '/images/projects/rlfp.png',
    badges: ['CoRL 2024 (Oral)', 'Reinforcement Learning', 'Foundation Models'],
    links: [
      {
        label: 'ArXiv',
        href: 'https://arxiv.org/abs/2310.02635'
      }
    ]
  }
];

const projects = [
  {
    title: 'Accelerating Model-based Learning of Locomotion with Pretrained Demonstrations',
    summary:
      'PPO-trained A1 robot locomotion in IsaacGym with Dreamer-based online fine-tuning in MuJoCo.',
    image: '/images/projects/gym2mjc.png',
    badges: ['Model-based RL', 'Robotics']
  },
  {
    title: 'Cyber Dribble: Flexible Framework for Agile Dribbling with Cyberdog2',
    summary:
      'Trained an agile dribbling policy for Cyberdog2 and delivered a full-stack deployment pipeline with pybind11.',
    image: '/images/projects/cyber_dribble.gif',
    badges: ['Reinforcement Learning', 'C++/Pybind11', 'Sim2Real', 'Robotics'],
    links: [
      {
        label: 'Code',
        href: 'https://github.com/EGalahad/dribbling_cyberdog2'
      }
    ]
  },
  {
    title: 'Gauss Fusion: Seamless 3D Object Integration using Gaussian Splatting',
    summary:
      'Gaussian Splatting preprocessing and merging pipeline with interactive 3D visualization tools.',
    image: '/images/projects/gauss_fusion.gif',
    badges: ['Gaussian Splatting', '3D Reconstruction'],
    links: [
      {
        label: 'Code',
        href: 'https://github.com/EGalahad/GaussFusion'
      }
    ]
  },
  {
    title: 'Audio Reactive Controls: Real Time Visualization of Music on Customised Hardware',
    summary:
      'Custom hardware music player driving ferrofluids and LED strips with low-latency audio processing in C++/libpulse.',
    image: '/images/projects/audio_reactive_controls.gif',
    badges: ['Embedded Systems', 'C++/libpulse', 'Raspberry Pi'],
    links: [
      {
        label: 'Code',
        href: 'https://github.com/EGalahad/AudioReactiveControls'
      }
    ]
  }
];
</script>

<template>
  <v-container class="page" tag="main">
    <v-row justify="center">
      <v-col cols="12" class="text-center">
        <h1 class="page-heading">{{ hero.displayName }}</h1>
        <v-divider class="heading-divider" />
      </v-col>
    </v-row>

    <v-row class="bio-row" align="start">
      <v-col cols="12" md="4" class="bio-photo">
        <v-sheet class="portrait-frame" elevation="0">
          <v-img :src="hero.avatar" :alt="`Portrait of ${hero.displayName}`" cover class="portrait" />
        </v-sheet>
        <v-list class="link-list" density="comfortable">
          <v-list-item class="link-line">
            <template #title>
              <span class="link-pipe">|</span>
              <span v-for="(link, index) in hero.links" :key="link.href">
                <a :href="link.href" target="_blank" rel="noopener noreferrer">{{ link.label }}</a>
                <span class="link-pipe">|</span>
                <span v-if="index === 1" class="link-break" />
              </span>
            </template>
          </v-list-item>
        </v-list>
      </v-col>
      <v-col cols="12" md="8" class="bio-text">
        <v-list class="bio-list" density="comfortable">
          <v-list-item v-for="line in hero.description" :key="line" class="bio-line">
            <template #title>
              <span v-html="line" />
            </template>
          </v-list-item>
        </v-list>
      </v-col>
    </v-row>

    <v-row class="section">
      <v-col cols="12">
        <h2 class="section-heading">Publications</h2>
        <v-divider class="section-divider" />
      </v-col>
      <v-col cols="12" v-for="item in publications" :key="item.title">
        <v-row class="entry" align="start">
          <v-col cols="12" sm="4" class="entry-media">
            <v-sheet class="entry-frame" elevation="0">
              <v-img :src="item.image" :alt="`${item.title} preview`" cover class="entry-image" />
            </v-sheet>
          </v-col>
          <v-col cols="12" sm="8" class="entry-body">
            <h3 class="entry-title">{{ item.title }}</h3>
            <p class="entry-summary">{{ item.summary }}</p>
            <div class="entry-tags">
              <span v-for="badge in item.badges" :key="badge" class="tag">{{ badge }}</span>
            </div>
            <div v-if="item.links && item.links.length" class="entry-links">
              <a
                v-for="link in item.links"
                :key="link.href"
                :href="link.href"
                target="_blank"
                rel="noopener noreferrer"
              >
                {{ link.label }}
              </a>
            </div>
          </v-col>
        </v-row>
        <v-divider class="entry-divider" />
      </v-col>
    </v-row>

    <v-row class="section">
      <v-col cols="12">
        <h2 class="section-heading">Project Highlights</h2>
        <v-divider class="section-divider" />
      </v-col>
      <v-col cols="12" v-for="item in projects" :key="item.title">
        <v-row class="entry" align="start">
          <v-col cols="12" sm="4" class="entry-media">
            <v-sheet class="entry-frame" elevation="0">
              <v-img :src="item.image" :alt="`${item.title} preview`" cover class="entry-image" />
            </v-sheet>
          </v-col>
          <v-col cols="12" sm="8" class="entry-body">
            <h3 class="entry-title">{{ item.title }}</h3>
            <p class="entry-summary">{{ item.summary }}</p>
            <div class="entry-tags">
              <span v-for="badge in item.badges" :key="badge" class="tag">{{ badge }}</span>
            </div>
            <div v-if="item.links && item.links.length" class="entry-links">
              <a
                v-for="link in item.links"
                :key="link.href"
                :href="link.href"
                target="_blank"
                rel="noopener noreferrer"
              >
                {{ link.label }}
              </a>
            </div>
          </v-col>
        </v-row>
        <v-divider class="entry-divider" />
      </v-col>
    </v-row>
  </v-container>
</template>

<style scoped>
.page {
  max-width: 960px;
  margin: 72px auto 96px;
  padding: 0 24px;
}

.page-heading {
  font-size: clamp(2.6rem, 5vw, 3.4rem);
  font-weight: 400;
  letter-spacing: 0.02em;
  margin: 0 0 16px;
}

.heading-divider {
  width: 160px;
  margin: 0 auto 24px;
}

.bio-row {
  margin-bottom: 36px;
}

.bio-photo {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 16px;
}

.portrait-frame {
  width: 100%;
  overflow: hidden;
  border-radius: 12px;
}

.portrait {
  width: 100%;
  height: 100%;
}

.link-list {
  width: 100%;
}

.link-line {
  justify-content: center;
  text-align: center;
}

.link-pipe {
  margin: 0 6px;
  font-weight: 600;
  color: #1772d0;
}

.link-break {
  display: block;
}

.bio-text {
  display: flex;
  flex-direction: column;
}

.bio-list {
  padding: 0;
}

.bio-line {
  padding-inline: 0;
}

.bio-line :deep(.v-list-item-title) {
  color: #1f1f1f;
  font-size: 1rem;
  line-height: 1.7;
  display: block;
  white-space: normal;
  overflow: visible;
  text-overflow: initial;
}

.section {
  margin-top: 24px;
}

.section-heading {
  font-size: 1.75rem;
  font-weight: 600;
  margin: 0 0 12px;
}

.section-divider {
  margin-bottom: 16px;
}

.entry {
  margin-bottom: 6px;
}

.entry-media {
  display: flex;
}

.entry-frame {
  width: 100%;
  overflow: hidden;
  border-radius: 10px;
}

.entry-image {
  width: 100%;
  height: 100%;
}

.entry-image :deep(img) {
  object-fit: cover;
}

.entry-body {
  display: flex;
  flex-direction: column;
  gap: 8px;
}

.entry-title {
  margin: 0;
  font-size: 1.3rem;
  font-weight: 600;
  color: #1a1a1a;
}

.entry-summary {
  margin: 0;
  color: #343434;
  font-size: 0.95rem;
  line-height: 1.6;
}

.entry-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 6px;
}

.tag {
  padding: 2px 10px;
  border-radius: 12px;
  background-color: #eef4fb;
  color: #1f4f8a;
  font-size: 0.82rem;
  font-weight: 600;
}

.entry-links {
  display: flex;
  flex-wrap: wrap;
  gap: 12px;
  font-weight: 600;
}

.entry-divider {
  margin: 8px 0;
}

@media (max-width: 960px) {
  .page {
    margin: 48px auto 72px;
    padding: 0 16px;
  }

  .bio-photo {
    align-items: flex-start;
  }

  .link-line {
    text-align: left;
  }

  .heading-divider {
    margin-bottom: 16px;
  }
}

@media (max-width: 600px) {
  .page-heading {
    font-size: 2.4rem;
  }

  .entry {
    margin-bottom: 10px;
  }

  .entry-divider {
    margin: 6px 0;
  }
}
</style>
