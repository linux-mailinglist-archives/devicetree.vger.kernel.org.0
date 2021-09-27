Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4032F419579
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 15:56:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234644AbhI0N6C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 09:58:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234589AbhI0N6C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 09:58:02 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82994C061575
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 06:56:23 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id k7so234604wrd.13
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 06:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=skpmWe/1uiOpbBIfFTvwGVn/0aLhFQldEvFdC3o9zh8=;
        b=Oso+liAdlx1kuCAgLixDmjGwsz2lZain1C/fs4P2TPlO8n+u6hedW3jTUWL0ZOfKnw
         CVOn6BIII0Oxbna8Pb8pPs6OaIhivbzH73mxjeKdl/w8u4CGgRgkDcYGvdW2s2UsLk1X
         FKZclBTkNvtWhaBwTt5cBAa2pyk2EAhvLhD26iDhSN1YTl9mx2VUCacocaZr6yoRPwGw
         rcTnXxYz2cLQSJDoi8VCTcQNfUFQ0FKxlg+6DYM/Gmd34oERHx3+Ij7q2lHK9hhrQFef
         YNJdoiG6p87FaQJgdJA2zHVugqvsEBjYPxETNiC+luozC+Whw351IL2r1tuwN6yon6EE
         WFig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=skpmWe/1uiOpbBIfFTvwGVn/0aLhFQldEvFdC3o9zh8=;
        b=bBFVgx8gm42Qq3NqQmJApgeDQPDJ2rzj+jsYtTtrU9GCyh5Fq4sHWAzYAWqXNQZKrO
         uea3/5cvJksnfsntALzH0HOZwv0M4iwxrYGbRHV3KKXN+uLZ6eVoXtma9d/szKMOzGvT
         KQR22a8xxZKlFPCnZXqWVCJBmItUj2VMTtO8X5kqPmrkbx+23/WxfckQtQE0czjU8uvT
         QDYAamZOoXrWNNy2h9gIDmFAOceLHhusLDxYO6bj/mVJQ5wR9WHNSjIHvs+6I/hjjU7X
         DQi797vl7IfO114O3qpfBHYA3hszFFTDowqT2MIuwlziBeG6pmi+/iyWHtQHBGCJvdjp
         OPYA==
X-Gm-Message-State: AOAM532m2I3+TyvM02ou99xUTxKwqKcxiDkw4jjJnHFoSs7ppv38Mpy9
        x3Ms/9tOU6wWrHtYZBWdyGQ4sw==
X-Google-Smtp-Source: ABdhPJyqTriBbvzcPxvtgW32Y1YqyjBKLFB7Iss6wNbO/D9Dz/eCLdXVgxXjU6dtWl3/oUTZemNtog==
X-Received: by 2002:a5d:6c6f:: with SMTP id r15mr28571813wrz.428.1632750982096;
        Mon, 27 Sep 2021 06:56:22 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b7sm20485606wrm.9.2021.09.27.06.56.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 06:56:21 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v8 00/22] ASoC: qcom: Add AudioReach support
Date:   Mon, 27 Sep 2021 14:55:37 +0100
Message-Id: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Many thanks for reviewing v7 This version addresses all the comments
raised as part of v8 review.

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

Changes since v7:
- removed returning errors in dsp command callbacks as it has no effect
- removed uncessary err prints 
- removed default topology file as its impossible to have one for all boards.
- removed references of Elite in commit log
- return correct error codes returned from functions.


Srinivas Kandagatla (22):
  soc: dt-bindings: qcom: apr: convert to yaml
  soc: dt-bindings: qcom: apr: deprecate qcom,apr-domain property
  soc: qcom: apr: make code more reuseable
  soc: dt-bindings: qcom: add gpr bindings
  soc: qcom: apr: Add GPR support
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

 .../devicetree/bindings/soc/qcom/qcom,apr.txt |  134 --
 .../bindings/soc/qcom/qcom,apr.yaml           |  177 +++
 .../devicetree/bindings/sound/qcom,q6afe.txt  |  181 ---
 .../bindings/sound/qcom,q6apm-dai.yaml        |   53 +
 .../sound/qcom,q6dsp-lpass-clocks.yaml        |   77 ++
 .../sound/qcom,q6dsp-lpass-ports.yaml         |  205 +++
 drivers/soc/qcom/Kconfig                      |    2 +-
 drivers/soc/qcom/apr.c                        |  287 ++++-
 include/dt-bindings/soc/qcom,gpr.h            |   19 +
 include/dt-bindings/sound/qcom,q6afe.h        |  203 +--
 .../sound/qcom,q6dsp-lpass-ports.h            |  208 +++
 include/linux/soc/qcom/apr.h                  |   70 +-
 include/uapi/sound/snd_ar_tokens.h            |  208 +++
 sound/soc/qcom/Kconfig                        |   22 +
 sound/soc/qcom/qdsp6/Makefile                 |   11 +-
 sound/soc/qcom/qdsp6/audioreach.c             | 1135 +++++++++++++++++
 sound/soc/qcom/qdsp6/audioreach.h             |  726 +++++++++++
 sound/soc/qcom/qdsp6/q6afe-clocks.c           |  187 +--
 sound/soc/qcom/qdsp6/q6afe-dai.c              |  687 +---------
 sound/soc/qcom/qdsp6/q6apm-dai.c              |  415 ++++++
 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c       |  260 ++++
 sound/soc/qcom/qdsp6/q6apm.c                  |  823 ++++++++++++
 sound/soc/qcom/qdsp6/q6apm.h                  |  152 +++
 sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c     |  186 +++
 sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.h     |   30 +
 sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c      |  627 +++++++++
 sound/soc/qcom/qdsp6/q6dsp-lpass-ports.h      |   22 +
 sound/soc/qcom/qdsp6/q6prm-clocks.c           |   85 ++
 sound/soc/qcom/qdsp6/q6prm.c                  |  202 +++
 sound/soc/qcom/qdsp6/q6prm.h                  |   78 ++
 sound/soc/qcom/qdsp6/topology.c               | 1113 ++++++++++++++++
 31 files changed, 7170 insertions(+), 1415 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt
 create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
 create mode 100644 include/dt-bindings/soc/qcom,gpr.h
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

