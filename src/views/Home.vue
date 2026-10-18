<script setup>
import LazyVideo from '../components/LazyVideo.vue';
import avatarImg from '@/assets/images/portrait.jpeg';
import bfmZeroPlaceholder from '@/assets/images/publications/bfm.mp4';
import hdmiVideo from '@/assets/images/publications/suitcase_4x.mp4';
import facetVideo from '@/assets/images/publications/facet.mp4';
import threeDgsVideo from '@/assets/images/publications/3dgs_640-fast.mp4';
import rlfpPoster from '@/assets/images/publications/rlfp.png';
import vlaPoster from '@/assets/images/projects/multi-noise.drawio.png';
import cyberDribbleVideo from '@/assets/images/projects/cyber_dribble.mp4';
import gaussFusionVideo from '@/assets/images/projects/gauss_fusion.mp4';
import audioReactiveVideo from '@/assets/images/projects/audio_reactive_controls.mp4';
import rumbaVideo from '@/assets/images/extra/rumba.mp4';

const hero = {
  displayName: 'Haoyang Weng 「翁颢洋」',
  description: [
    'I\'m a final-year undergraduate at <strong>Yao Class, Tsinghua</strong>. Currently, I work with Prof. <strong>Yang Gao</strong> at IIIS and previously interned at <strong>LeCAR Lab</strong>, advised by Prof. <strong>Guanya Shi</strong>.',
    // 'I am intersted in the intersection between Machine Learning and Robotics. My goal is to build scalable and efficient robot learning algorithms.',
    // '<strong>Goal:</strong> To build scalable and efficient robot learning algorithms.',
    '<strong>Research Interests:</strong> reinforcement learning, large scale machine learning, whole-body loco-manipulation, humanoid robots.',
    'I aim to build scalable frameworks with clean engineering to <strong>unify reasoning, perception and agility</strong>. I believe that the combination of clean implementation of <strong>minimal algorithmic priors</strong> and <strong>large-scale multi-source data</strong> will lead to generalizable robot learning algorithms.'
  ],
  avatar: avatarImg,
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
    },
    {
      label: 'Blog',
      href: '#blog'
    }
  ]
};

const blogPosts = [
  {
    title: 'Beyond Motion Tracking: Steerable Physical Interaction Competence',
    summary: 'Dynamics-grounded controllers and expressive interfaces that realize interaction intent in the physical world.',
    date: '2026-10-18',
    month: 'Oct 2026',
    meta: 'Robotics · S0 · Physical interaction',
    href: '/blog/2026-10-steerable-interaction-competence/en/'
  }
];

const entryDestination = (item, label) => item.links?.find((link) => link.label === label)?.href;

const isVideo = (path) => typeof path === 'string' && path.toLowerCase().endsWith('.mp4');

const publications = [
  // {
  //   title: 'BFM-Zero: A Promptable Behavioral Foundation Model for Humanoid Control Using Unsupervised Reinforcement Learning',
  //   authors:
  //     'Yitang Li*, Zhengyi Luo*, Tonghe Zhang$, Cunxi Dai$, Anssi Kanervisto, Andrea Tirinzoni, <strong><u>Haoyang Weng</u></strong>, Kris Kitani, Mateusz Guzek, Ahmed Touati, Alessandro Lazaric, Matteo Pirotta†, Guanya Shi†',
  //   summary:
  //       'Forward-backward model enables test-time reward optimization and natural skill interpolations.',
  //   image: bfmZeroPlaceholder,
  //   badges: ['Humanoids', 'Unsupervised RL', 'Behavioral Foundation Models'],
  //   links: [
  //     {
  //       label: 'ArXiv',
  //       href: 'https://arxiv.org/abs/2511.04131'
  //     },
  //     {
  //       label: 'Twitter',
  //       href: 'https://x.com/li_yitang/status/1986819109959712815'
  //     },
  //     {
  //       label: 'Website',
  //       href: 'https://lecar-lab.github.io/BFM-Zero/'
  //     },
  //     {
  //       label: 'Video',
  //       href: 'https://www.youtube.com/watch?v=jYI-LZNvUY4'
  //     },
  //   ]
  // },
  // {
  //   title: 'HDMI: Learning Interactive Humanoid Whole-Body Control from Human Videos',
  //   authors: '<strong><u>Haoyang Weng</u></strong>, Yitang Li, Nikhil Sobanbabu, Zihan Wang, Zhengyi Luo, Tairan He, Deva Ramanan, Guanya Shi',
  //   summary:
  //     'Robot-object co-tracking enables acquiring whole-body interactive skills from videos.',
  //   image: hdmiVideo,
  //   badges: ['Humanoids', 'Learning from Demonstrations', 'Reinforcement Learning'],
  //   links: [
  //     {
  //       label: 'ArXiv',
  //       href: 'http://arxiv.org/abs/2509.16757'
  //     },
  //     {
  //       label: 'Twitter',
  //       href: 'https://x.com/ElijahGalahad/status/1970187645948174842'
  //     },
  //     {
  //       label: 'Website',
  //       href: 'https://hdmi-humanoid.github.io/'
  //     },
  //     {
  //       label: 'Video',
  //       href: 'https://www.youtube.com/watch?v=-BDmzuvm778'
  //     },
  //     {
  //       label: 'Code',
  //       href: 'https://github.com/LeCAR-Lab/HDMI'
  //     },
  //   ]
  // },
  {
    title: 'FACET: Force-Adaptive Control via Impedance Reference Tracking for Legged Robots',
    authors: 'Botian Xu*, <strong><u>Haoyang Weng</u></strong>*, Qingzhou Lu*, Yang Gao, Huazhe Xu',
    summary:
      'Impedance reference tracking enables variable impedance control.',
    image: facetVideo,
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
    authors: 'Hexu Zhao, <strong><u>Haoyang Weng</u></strong>*, Daohan Lu*, Ang Li, Jinyang Li, Aurojit Panda, Saining Xie',
    summary:
      '√batch-size learning-rate scaling enables near-linear speedup in distributed 3DGS training.',
    image: threeDgsVideo,
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
    authors: 'Weirui Ye, Yunsheng Zhang, <strong><u>Haoyang Weng</u></strong>, Xianfan Gu, Shengjie Wang, Tong Zhang, Mengchen Wang, Pieter Abbeel, Yang Gao',
    summary:
      'Policy and value foundation model guidance enables efficient real-world RL.',
    image: rlfpPoster,
    badges: ['CoRL 2024 (Oral)', 'Reinforcement Learning', 'Foundation Models'],
    links: [
      {
        label: 'ArXiv',
        href: 'https://arxiv.org/abs/2310.02635'
      },
      {
        label: 'Website',
        href: 'https://yewr.github.io/rlfp/'
      }
    ]
  }
];

const projects = [
  {
    title: 'VLA-Scratch',
    summary:
      'A flow VLA from scratch, with system-level and optimization-level acceleration techniques.',
    image: vlaPoster,
    badges: ['Vision-Language-Action Models', 'Robotics'],
    links: [
      {
        label: 'Code',
        href: 'https://github.com/EGalahad/vla-scratch'
      }
    ]
  },
  // {
  //   title: 'Accelerating Model-based Learning of Locomotion with Pretrained Demonstrations',
  //   summary:
  //     'PPO-trained A1 robot locomotion in IsaacGym with Dreamer-based online fine-tuning in MuJoCo.',
  //   image: '/images/projects/gym2mjc.png',
  //   badges: ['Model-based RL', 'Robotics']
  // },
  {
    title: 'Cyber Dribble: Flexible Framework for Agile Dribbling with Cyberdog2',
    summary:
      'A full-stack deployment pipeline for agile dribbling on Cyberdog2 with pybind11.',
    image: cyberDribbleVideo,
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
    image: gaussFusionVideo,
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
      'Custom music player driving ferrofluids and LED strips with low-latency audio processing in C++/libpulse.',
    image: audioReactiveVideo,
    badges: ['Embedded Systems', 'C++/libpulse', 'Raspberry Pi'],
    links: [
      {
        label: 'Code',
        href: 'https://github.com/EGalahad/AudioReactiveControls'
      }
    ]
  }
];

const extracurricular = [
  {
    title: 'Tsinghua Ballroom Dance Team',
    summary: 'Majors in Latin dance.',
    image: rumbaVideo,
    links: [
      { label: 'Video', href: 'https://www.youtube.com/watch?v=rBfd060oc5k' }
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
      <v-col cols="12" md="3" class="bio-photo">
        <v-sheet class="portrait-frame" elevation="0">
          <v-img :src="hero.avatar" :alt="`Portrait of ${hero.displayName}`" cover class="portrait" />
        </v-sheet>
        <v-list class="link-list" density="comfortable">
          <v-list-item class="link-line">
            <template #title>
              <span class="link-pipe">|</span>
              <span v-for="(link, index) in hero.links" :key="link.href">
                <a :href="link.href" :target="link.href.startsWith('#') ? undefined : '_blank'" rel="noopener noreferrer">{{ link.label }}</a>
                <span class="link-pipe">|</span>
                <span v-if="index === 1" class="link-break" />
              </span>
            </template>
          </v-list-item>
        </v-list>
      </v-col>
      <v-col cols="12" md="9" class="bio-text">
        <v-list class="bio-list" density="comfortable">
          <v-list-item v-for="line in hero.description" :key="line" class="bio-line">
            <template #title>
              <span v-html="line" />
            </template>
          </v-list-item>
        </v-list>
      </v-col>
    </v-row>

    <v-row id="blog" class="section blog-section">
      <v-col cols="12">
        <h2 class="section-heading">Blog</h2>
        <v-divider class="section-divider" />
        <a v-for="post in blogPosts" :key="post.href" :href="post.href" class="blog-entry">
          <time class="blog-date" :datetime="post.date">{{ post.month }}</time>
          <div class="blog-body">
            <h3 class="blog-title">{{ post.title }}</h3>
            <p class="blog-summary">{{ post.summary }}</p>
            <span class="blog-meta">{{ post.meta }}</span>
          </div>
          <span class="blog-arrow" aria-hidden="true">→</span>
        </a>
      </v-col>
    </v-row>

    <v-row class="section">
      <v-col cols="12">
        <h2 class="section-heading">Publications</h2>
        <v-divider class="section-divider" />
      </v-col>
      <v-col cols="12" v-for="item in publications" :key="item.title">
        <v-row class="entry entry-clickable publication-entry" align="start">
          <v-col cols="12" sm="4" class="entry-media">
            <v-sheet class="entry-frame" elevation="0">
              <LazyVideo
                v-if="isVideo(item.image)"
                :src="item.image"
                class="entry-video"
                autoplay
                muted
                loop
                playsinline
                preload="metadata"
              />
              <v-img
                v-else
                :src="item.image"
                :alt="`${item.title} preview`"
                cover
                class="entry-image"
              />
            </v-sheet>
          </v-col>
          <v-col cols="12" sm="8" class="entry-body">
            <h3 class="entry-title"><a :href="entryDestination(item, 'Website')" class="publication-main-link" target="_blank" rel="noopener noreferrer">{{ item.title }}</a><span class="entry-arrow" aria-hidden="true">→</span></h3>
            <p v-if="item.authors" class="entry-authors"><span v-html="item.authors" /></p>
            <p class="entry-summary">{{ item.summary }}</p>
            <div class="entry-tags">
              <span v-for="badge in item.badges" :key="badge" class="tag">{{ badge }}</span>
            </div>
            <div class="entry-links publication-links">
              <a v-for="link in item.links.filter((link) => link.label !== 'Website')" :key="link.href" :href="link.href" target="_blank" rel="noopener noreferrer">{{ link.label }}</a>
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
        <v-row tag="a" :href="entryDestination(item, 'Code')" target="_blank" rel="noopener noreferrer" class="entry entry-clickable" align="start">
          <v-col cols="12" sm="4" class="entry-media">
            <v-sheet class="entry-frame" elevation="0">
              <LazyVideo
                v-if="isVideo(item.image)"
                :src="item.image"
                class="entry-video"
                autoplay
                muted
                loop
                playsinline
                preload="metadata"
              />
              <v-img
                v-else
                :src="item.image"
                :alt="`${item.title} preview`"
                cover
                class="entry-image"
                lazy-src
              />
            </v-sheet>
          </v-col>
          <v-col cols="12" sm="8" class="entry-body">
            <h3 class="entry-title"><span>{{ item.title }}</span><span class="entry-arrow" aria-hidden="true">→</span></h3>
            <p class="entry-summary">{{ item.summary }}</p>
            <div class="entry-tags">
              <span v-for="badge in item.badges" :key="badge" class="tag">{{ badge }}</span>
            </div>
          </v-col>
        </v-row>
        <v-divider class="entry-divider" />
      </v-col>
    </v-row>

    <v-row class="section">
      <v-col cols="12">
        <h2 class="section-heading">Extracurricular</h2>
        <v-divider class="section-divider" />
      </v-col>
      <v-col cols="12" v-for="item in extracurricular" :key="item.title">
        <v-row tag="a" :href="entryDestination(item, 'Video')" target="_blank" rel="noopener noreferrer" class="entry entry-clickable" align="start">
          <v-col cols="12" sm="4" class="entry-media">
            <v-sheet class="entry-frame" elevation="0">
              <LazyVideo
                v-if="isVideo(item.image)"
                :src="item.image"
                class="entry-video"
                autoplay
                muted
                loop
                playsinline
                preload="metadata"
              />
              <v-img
                v-else
                :src="item.image"
                :alt="`${item.title} preview`"
                cover
                class="entry-image"
              />
            </v-sheet>
          </v-col>
          <v-col cols="12" sm="8" class="entry-body">
            <h3 class="entry-title"><span>{{ item.title }}</span><span class="entry-arrow" aria-hidden="true">→</span></h3>
            <p class="entry-authors">{{ item.timeframe }}</p>
            <p class="entry-summary">{{ item.summary }}</p>
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
  font-size: 0.95rem;
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

.publication-entry {
  position: relative;
}

.publication-main-link {
  color: inherit;
}

.publication-main-link::after {
  content: '';
  position: absolute;
  inset: 0;
  z-index: 1;
  border-radius: 8px;
}

.publication-main-link:focus-visible {
  outline: none;
}

.publication-main-link:focus-visible::after {
  outline: 2px solid #1772d0;
  outline-offset: 4px;
}

.publication-links {
  position: relative;
  z-index: 2;
  pointer-events: none;
  display: flex;
  flex-wrap: wrap;
  font-size: 0.8rem;
  gap: 12px;
  font-weight: 600;
}

.publication-links a {
  pointer-events: auto;
}

.entry-clickable {
  color: #1a1a1a;
  border-radius: 8px;
  transition: background-color 160ms ease;
  text-decoration: none;
}

.entry-clickable:hover {
  background: #f5f7f3;
  color: #1a1a1a;
}

.entry-clickable:focus-visible {
  outline: 2px solid #1772d0;
  outline-offset: 4px;
}

.entry-clickable:hover .entry-title {
  color: #1772d0;
}

.entry-clickable .entry-title {
  display: flex;
  align-items: flex-start;
  gap: 18px;
}

.entry-arrow {
  flex-shrink: 0;
  margin-left: auto;
  color: #7d8975;
  font-size: 1.4rem;
  font-weight: 400;
  line-height: 1.2;
}

.entry-clickable .entry-media {
  pointer-events: none;
}

.entry-media {
  display: flex;
}

.entry-frame {
  width: 100%;
  overflow: hidden;
  border-radius: 10px;
  aspect-ratio: 16 / 9;
}

.entry-image {
  width: 100%;
  height: 100%;
}

.entry-video {
  width: 100%;
  height: 100%;
  object-fit: cover;
  border: 0;
  display: block;
  background: #000;
}

.entry-placeholder {
  width: 100%;
  height: 100%;
  min-height: 200px;
  background: linear-gradient(120deg, #f2f4f7 0%, #eaedf3 50%, #f2f4f7 100%);
  background-size: 200% 100%;
  animation: placeholder-shimmer 1.2s ease-in-out infinite;
  border-radius: 10px;
}

@keyframes placeholder-shimmer {
  0% {
    background-position: 100% 0;
  }
  100% {
    background-position: -100% 0;
  }
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
  font-size: 1.2rem;
  font-weight: 600;
  color: #1a1a1a;
}

.entry-authors {
  margin: 0;
  color: #4a4a4a;
  font-size: 0.7rem;
  line-height: 1.4;
}

.entry-summary {
  margin: 0;
  color: #343434;
  font-size: 0.8rem;
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
  font-size: 0.8rem;
  font-weight: 600;
}

.entry-divider {
  margin: 8px 0;
}

.blog-section {
  scroll-margin-top: 32px;
}

.blog-entry {
  display: grid;
  grid-template-columns: 94px minmax(0, 1fr) 24px;
  gap: 20px;
  padding: 18px 12px 22px;
  margin: -4px -12px 0;
  border-bottom: 1px solid #e4e7e1;
  color: #1a1a1a;
  border-radius: 6px 6px 0 0;
  transition: background-color 160ms ease;
}

.blog-entry:hover {
  background: #f5f7f3;
  color: #1a1a1a;
}

.blog-entry:focus-visible {
  outline: 2px solid #1772d0;
  outline-offset: 4px;
}

.blog-date {
  font-size: 0.85rem;
  color: #777d73;
  padding-top: 3px;
  white-space: nowrap;
}

.blog-title {
  font-size: 1.2rem;
  line-height: 1.45;
  font-weight: 600;
  margin: 0 0 9px;
}

.blog-entry:hover .blog-title {
  color: #1772d0;
}

.blog-summary {
  font-size: 0.9rem;
  line-height: 1.6;
  color: #52594e;
  margin: 0 0 12px;
}

.blog-meta {
  font-size: 0.75rem;
  color: #7a8175;
}

.blog-arrow {
  font-size: 1.4rem;
  line-height: 1.3;
  color: #7d8975;
}

@media (max-width: 600px) {
  .blog-entry {
    grid-template-columns: minmax(0, 1fr) 20px;
    gap: 8px 14px;
    padding-top: 14px;
  }

  .blog-date {
    grid-column: 1;
    font-size: 0.8rem;
  }

  .blog-body {
    grid-column: 1;
    grid-row: 2;
  }

  .blog-arrow {
    grid-column: 2;
    grid-row: 2;
  }

  .blog-title {
    font-size: 1.1rem;
  }
}

@media (prefers-reduced-motion: reduce) {
  .blog-entry, .entry-clickable {
    transition: none;
  }
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

  .bio-photo {
    display: none;
  }

  .bio-text {
    width: 100%;
  }
}
</style>
