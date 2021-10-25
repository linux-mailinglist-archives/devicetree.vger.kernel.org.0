Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98105439D41
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 19:17:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231799AbhJYRTe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 13:19:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231686AbhJYRTe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 13:19:34 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB01FC061745
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:17:11 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id w15so10476935wra.3
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YADa4hYl+JiOePTY0aHuCw2sEqk4bxs10mc/FGpmQPc=;
        b=hvzU5TqVueH7s4YOB0PnbDyIIeSKFaNrAhILagqWth30v1Ejf3nWFP+IuMYRziSC5c
         +Q9yMDHqNDFUmxt2YwvsllAgaqtkxUP6j+LPG0/0g4lJajKytfW9vhxevHkh6fpHXM3p
         HbYYerJmAq/EzG8zVprvLOuEYCGktW3l3SIiXK+fgLgFHSdiOvKy/9EfKtbqcDsCjRPY
         NPFItGXns6NbK4hUwgyMdnmsjb9a/I+gmVymsF+m0X8l3N0tDmls0hfadbZrJW4j8Ow/
         Ftw+YyCpy15KqQi5Clkbko7G79Xp8u0PzBZw984Lso2yLH735RiYma7GtYbhVX432FHt
         AjFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YADa4hYl+JiOePTY0aHuCw2sEqk4bxs10mc/FGpmQPc=;
        b=j/XTNxOE8iTx6KBQASjKPDE06PCH9Yt2tfniyHKKqvTGbkhZlB1Cv5/THM4x+hUnk6
         yDQ4p5dAFkc61qPcuxrrFGVPrM9KQN03PMpbuGbmB/AWBzhpYZk16/fcPo9ML4F0v+M+
         gvwuw1twnMDfAQHWuLYmFlM9DXjYkJbeBoMl7Mw9vx/TVMvmSyf40FLbTutEGZz27qNM
         Z8nwK14thYwlOlEzQ8gjWgm16nKXHbv5HX5Og482oMpOYcUGjcULpR1ZcslCqx0fiKzA
         O/EwVJpvSe7JGhXp/aGOyRRNBZFYirgxQ5Ekhfcsp4shwsP3WCbePUS0OfrznCKNcZeO
         IVPQ==
X-Gm-Message-State: AOAM530XIlmdayhRDnBm3kNe8KXd8betUAzVj8nkNSh82GkW3tdHpGO7
        bGNSLrnedSCrVh7mq/PZ2j6rTg==
X-Google-Smtp-Source: ABdhPJy+u8xg4OtIwL7L9nd5fOcQjKuIQlEHffkVZM72zGFBFgCx5VEO/UaIpUgeKwPkGs7QTXDRcQ==
X-Received: by 2002:a5d:6708:: with SMTP id o8mr25436836wru.113.1635182230117;
        Mon, 25 Oct 2021 10:17:10 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id r11sm5181012wrt.42.2021.10.25.10.17.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 10:17:09 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v10 00/17] ASoC: qcom: Add AudioReach support
Date:   Mon, 25 Oct 2021 18:16:32 +0100
Message-Id: <20211025171649.17730-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mark,

This version is a respin of v9 fixing a build error in 12/17 patch.

QCOM SoC relevant non-audio patches in this series has been merged into
the Qualcomm drivers-for-5.16 tree, as this series depends those patches
an immutable tag is available at:
https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/20210927135559.738-6-srinivas.kandagatla@linaro.org

This patchset adds ASoC driver support to configure signal processing
framework ("AudioReach") which is integral part of Qualcomm next
generation audio SDK and will be deployed on upcoming Qualcomm chipsets.
It makes use of ASoC Topology to load graphs on to the DSP which is then
managed by APM (Audio Processing Manager) service to prepare/start/stop.

Here is simplified high-level block diagram of AudioReach:

 ___________________________________________________________
|                 CPU (Application Processor)               |
|  +---------+          +---------+         +----------+    |
|  |  q6apm  |          |  q6apm  |         |  q6apm   |    |
|  |   dais  | <------> |         | <-----> |lpass-dais|    |
|  +---------+          +---------+         +----------+    |
|                            ^  ^                           |
|                            |  |           +---------+     |
|  +---------+               v  +---------->|topology |     |
|  | q6prm   |          +---------+         |         |     |
|  |         |<-------->|   GPR   |         +---------+     |
|  +---------+          +---------+                         |
|       ^                    ^                              |
|       |                    |                              |
|  +----------+              |                              |
|  |   q6prm  |              |                              |
|  |lpass-clks|              |                              |
|  +----------+              |                              |
|____________________________|______________________________|
                             |  
                             | RPMSG (IPC over GLINK)              
 ____________________________|______________________________
|                            |                              |
|    +-----------------------+                              |
|    |                       |                              |
|    v                       v              q6 (Audio DSP)  |
|+-----+    +----------------------------------+            |
|| PRM |    | APM (Audio Processing Manager)   |            |
|+-----+    |  . Graph Management              |            |  
|           |  . Command Handing               |            |  
|           |  . Event Management              |            |  
|           |  ...                             |            |  
|           +----------------------------------+            |  
|                            ^                              |
|____________________________|______________________________|
                             |  
                             |   LPASS AIF
 ____________________________|______________________________
|                            |            Audio I/O         |
|                            v                              |
|   +--------------------------------------------------+    |
|    |                Audio devices                     |   |
|    | CODEC | HDMI-TX | PCM  | SLIMBUS | I2S |MI2S |...|   |
|    |                                                  |   |
|    +--------------------------------------------------+   |
|___________________________________________________________|

AudioReach has constructs of sub-graph, container and modules.
Each sub-graph can have N containers and each Container can have N Modules
and connections between them can be linear or non-linear.
An audio function can be realized with one or many connected
sub-graphs. There are also control/event paths between modules that can
be wired up while building graph to achieve various control mechanism
between modules. These concepts of Sub-Graph, Containers and Modules
are represented in ASoC topology.

Here is simple I2S graph with a Write Shared Memory and a
Volume control module within a single Subgraph (1) with one Container (1)
and 5 modules.

  ____________________________________________________________
 |                        Sub-Graph [1]                       |
 |  _______________________________________________________   |
 | |                       Container [1]                   |  |
 | | [WR_SH] -> [PCM DEC] -> [PCM CONV] -> [VOL]-> [I2S-EP]|  |
 | |_______________________________________________________|  |
 |____________________________________________________________|

For now this graph is split into two subgraphs to achieve dpcm like below:
 ________________________________________________    _________________
|                Sub-Graph [1]                   |  |  Sub-Graph [2]  |
|  ____________________________________________  |  |  _____________  |
| |              Container [1]                 | |  | |Container [2]| |
| | [WR_SH] -> [PCM DEC] -> [PCM CONV] -> [VOL]| |  | |   [I2S-EP]  | |
| |____________________________________________| |  | |_____________| |
|________________________________________________|  |_________________|

                                                      _________________
                                                    |  Sub-Graph [3]  |
                                                    |  _____________  |
                                                    | |Container [3]| |
                                                    | |  [DMA-EP]   | |
                                                    | |_____________| |
                                                    |_________________|


This patchset adds very minimal support for AudioReach which includes
supporting sub-graphs containing CODEC DMA ports and simple PCM
Decoder/Encoder and Logger Modules. Additional capabilities will
be built over time to expose features offered by AudioReach. 

This patchset is Tested on SM8250 SoC based Qualcomm Robotics Platform RB5
and SM9250 MTP with WSA881X Smart Speaker Amplifiers, DMICs connected via
VA Macro and WCD938x Codec connected via TX and RX Macro and HDMI audio
via I2S.

First 10 Patches are mostly reorganization existing Old QDSP Audio
Framework code and bindings so that we could reuse them on AudioReach.

ASoC topology graphs for DragonBoard RB5 and SM8250 MTP are available at 
https://git.linaro.org/people/srinivas.kandagatla/audioreach-topology.git/
and Qualcomm AudioReach DSP headers are available at:
https://source.codeaurora.org/quic/la/platform/vendor/opensource/arspf-headers

Note: There is one false positive warning in this patchset:
audioreach.c:80:45: warning: array of flexible structures

Thanks,
srini

Changes since v9:
- fix build error during arm64 defconfig build reported by Mark in 12/17 patch

Srinivas Kandagatla (17):
  ASoC: dt-bindings: move LPASS dai related bindings out of q6afe
  ASoC: dt-bindings: move LPASS clocks related bindings out of q6afe
  ASoC: dt-bindings: rename q6afe.h to q6dsp-lpass-ports.h
  ASoC: qdsp6: q6afe-dai: move lpass audio ports to common file
  ASoC: qdsp6: q6afe-clocks: move audio-clocks to common file
  ASoC: dt-bindings: q6dsp: add q6apm-lpass-dai compatible
  ASoC: dt-bindings: lpass-clocks: add q6prm clocks compatible
  ASoC: dt-bindings: add q6apm digital audio stream bindings
  ASoC: qdsp6: audioreach: add basic pkt alloc support
  ASoC: qdsp6: audioreach: add q6apm support
  ASoC: qdsp6: audioreach: add module configuration command helpers
  ASoC: qdsp6: audioreach: add Kconfig and Makefile
  ASoC: qdsp6: audioreach: add topology support
  ASoC: qdsp6: audioreach: add q6apm-dai support
  ASoC: qdsp6: audioreach: add q6apm lpass dai support
  ASoC: qdsp6: audioreach: add q6prm support
  ASoC: qdsp6: audioreach: add support for q6prm-clocks

 .../devicetree/bindings/sound/qcom,q6afe.txt  |  181 ---
 .../bindings/sound/qcom,q6apm-dai.yaml        |   53 +
 .../sound/qcom,q6dsp-lpass-clocks.yaml        |   77 ++
 .../sound/qcom,q6dsp-lpass-ports.yaml         |  205 +++
 include/dt-bindings/sound/qcom,q6afe.h        |  203 +--
 .../sound/qcom,q6dsp-lpass-ports.h            |  208 +++
 include/uapi/sound/snd_ar_tokens.h            |  208 +++
 sound/soc/qcom/Kconfig                        |   22 +
 sound/soc/qcom/qdsp6/Makefile                 |   11 +-
 sound/soc/qcom/qdsp6/audioreach.c             | 1130 +++++++++++++++++
 sound/soc/qcom/qdsp6/audioreach.h             |  726 +++++++++++
 sound/soc/qcom/qdsp6/q6afe-clocks.c           |  187 +--
 sound/soc/qcom/qdsp6/q6afe-dai.c              |  687 +---------
 sound/soc/qcom/qdsp6/q6apm-dai.c              |  416 ++++++
 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c       |  260 ++++
 sound/soc/qcom/qdsp6/q6apm.c                  |  822 ++++++++++++
 sound/soc/qcom/qdsp6/q6apm.h                  |  152 +++
 sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c     |  186 +++
 sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.h     |   30 +
 sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c      |  627 +++++++++
 sound/soc/qcom/qdsp6/q6dsp-lpass-ports.h      |   22 +
 sound/soc/qcom/qdsp6/q6prm-clocks.c           |   85 ++
 sound/soc/qcom/qdsp6/q6prm.c                  |  202 +++
 sound/soc/qcom/qdsp6/q6prm.h                  |   78 ++
 sound/soc/qcom/qdsp6/topology.c               | 1113 ++++++++++++++++
 25 files changed, 6664 insertions(+), 1227 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
 create mode 100644 include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
 create mode 100644 include/uapi/sound/snd_ar_tokens.h
 create mode 100644 sound/soc/qcom/qdsp6/audioreach.c
 create mode 100644 sound/soc/qcom/qdsp6/audioreach.h
 create mode 100644 sound/soc/qcom/qdsp6/q6apm-dai.c
 create mode 100644 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
 create mode 100644 sound/soc/qcom/qdsp6/q6apm.c
 create mode 100644 sound/soc/qcom/qdsp6/q6apm.h
 create mode 100644 sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c
 create mode 100644 sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.h
 create mode 100644 sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c
 create mode 100644 sound/soc/qcom/qdsp6/q6dsp-lpass-ports.h
 create mode 100644 sound/soc/qcom/qdsp6/q6prm-clocks.c
 create mode 100644 sound/soc/qcom/qdsp6/q6prm.c
 create mode 100644 sound/soc/qcom/qdsp6/q6prm.h
 create mode 100644 sound/soc/qcom/qdsp6/topology.c

-- 
2.21.0

