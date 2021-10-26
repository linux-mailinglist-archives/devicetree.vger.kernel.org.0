Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA36943AFBC
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 12:07:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235156AbhJZKJu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 06:09:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235161AbhJZKJq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 06:09:46 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E44D7C061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 03:07:22 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id d10so14105033wrb.1
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 03:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YjPP3S6hBhtyBoM4+0Amw1b69phDn7W2bgRiodBzYXQ=;
        b=Y8msvVFIU/mom+bFwxrRWBLZ6HVQnJM9uoyo/WBcAqze7RVldZan+0mAckMd501o3m
         VmKbCGT4lE1nZjRlqEx3SJdF2EQOt22WcVIlRp+dZ//h4CegYv0k0zpgoyedLFNrV8KM
         BLpUREB1+PD3Aa4XIiuLBfcSkQ9bpyXejw55LNziKOlVgJtYRPskzsSetxHeJk+EuJQ9
         CqX1mtEVNZzMjrcrvVqLFsxIZMbATBN+h00dzkF5sLk6iLjUHJ9lqL4KXLgP76Maymn3
         HU65cFFrI5VPe89/pIJaX3UiD6pycB60tr6lALtav4v2r9ThOqsgW8dcq9eijLB9DrL+
         y9GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YjPP3S6hBhtyBoM4+0Amw1b69phDn7W2bgRiodBzYXQ=;
        b=Dln8hIqkM0zUxjzWqnnGg7uQhBU/Z6eT6IR4Oa3aBInAOCIJgKHpswdjEg7CXVIh1A
         O7ORoAq0sLhsRANm9hi/YJ4haI1TD80wX53227bHTS0jVxyKqbx246Kct/3eO4ETm2Fu
         ziSDunS5XD4cnC4186iY+tKSFlAtXtbw1IlRpZlWAOjJNvR2cqO+wtnz348GQM+32LJ3
         IV3s4p8Bx4yGe3L4/51IRtDArPxjU0i21zydlY2vSDnzSvoZvG3eqEnbW41Ug11f1MSh
         3Ql2g5MsS7tqNPLTfQeznuapr2najxZ8OXt1qMjad+728XCEa/otg3eOp236Bg7TeFzr
         nWkA==
X-Gm-Message-State: AOAM533uNeRdRw5sdsXeatccgtgU8XGfkMRG7jHEgZaYGlA2Z90mWY6Y
        XpfMYIdn3NJorRHFv1FeeCH24A==
X-Google-Smtp-Source: ABdhPJz6NUixSUJUBd914jG4gObIrnSvtaiE9VOwALTdnx5n9o4rWncHd5SIuvWruCzmxIYtzD3P5Q==
X-Received: by 2002:adf:8919:: with SMTP id s25mr30739020wrs.185.1635242841397;
        Tue, 26 Oct 2021 03:07:21 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id f20sm173575wmq.38.2021.10.26.03.07.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Oct 2021 03:07:20 -0700 (PDT)
Subject: Re: [PATCH v10 00/17] ASoC: qcom: Add AudioReach support
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20211025171649.17730-1-srinivas.kandagatla@linaro.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <89d4f8e2-495a-a2be-620d-510db7f6291a@linaro.org>
Date:   Tue, 26 Oct 2021 11:07:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211025171649.17730-1-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mark,

On 25/10/2021 18:16, Srinivas Kandagatla wrote:
> Hi Mark,
> 
> This version is a respin of v9 fixing a build error in 12/17 patch.

I seems to have messed up sending this patchset, Am resending this one.
Really sorry for the noise.

-srini
> 
> QCOM SoC relevant non-audio patches in this series has been merged into
> the Qualcomm drivers-for-5.16 tree, as this series depends those patches
> an immutable tag is available at:
> https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/20210927135559.738-6-srinivas.kandagatla@linaro.org
> 
> This patchset adds ASoC driver support to configure signal processing
> framework ("AudioReach") which is integral part of Qualcomm next
> generation audio SDK and will be deployed on upcoming Qualcomm chipsets.
> It makes use of ASoC Topology to load graphs on to the DSP which is then
> managed by APM (Audio Processing Manager) service to prepare/start/stop.
> 
> Here is simplified high-level block diagram of AudioReach:
> 
>   ___________________________________________________________
> |                 CPU (Application Processor)               |
> |  +---------+          +---------+         +----------+    |
> |  |  q6apm  |          |  q6apm  |         |  q6apm   |    |
> |  |   dais  | <------> |         | <-----> |lpass-dais|    |
> |  +---------+          +---------+         +----------+    |
> |                            ^  ^                           |
> |                            |  |           +---------+     |
> |  +---------+               v  +---------->|topology |     |
> |  | q6prm   |          +---------+         |         |     |
> |  |         |<-------->|   GPR   |         +---------+     |
> |  +---------+          +---------+                         |
> |       ^                    ^                              |
> |       |                    |                              |
> |  +----------+              |                              |
> |  |   q6prm  |              |                              |
> |  |lpass-clks|              |                              |
> |  +----------+              |                              |
> |____________________________|______________________________|
>                               |
>                               | RPMSG (IPC over GLINK)
>   ____________________________|______________________________
> |                            |                              |
> |    +-----------------------+                              |
> |    |                       |                              |
> |    v                       v              q6 (Audio DSP)  |
> |+-----+    +----------------------------------+            |
> || PRM |    | APM (Audio Processing Manager)   |            |
> |+-----+    |  . Graph Management              |            |
> |           |  . Command Handing               |            |
> |           |  . Event Management              |            |
> |           |  ...                             |            |
> |           +----------------------------------+            |
> |                            ^                              |
> |____________________________|______________________________|
>                               |
>                               |   LPASS AIF
>   ____________________________|______________________________
> |                            |            Audio I/O         |
> |                            v                              |
> |   +--------------------------------------------------+    |
> |    |                Audio devices                     |   |
> |    | CODEC | HDMI-TX | PCM  | SLIMBUS | I2S |MI2S |...|   |
> |    |                                                  |   |
> |    +--------------------------------------------------+   |
> |___________________________________________________________|
> 
> AudioReach has constructs of sub-graph, container and modules.
> Each sub-graph can have N containers and each Container can have N Modules
> and connections between them can be linear or non-linear.
> An audio function can be realized with one or many connected
> sub-graphs. There are also control/event paths between modules that can
> be wired up while building graph to achieve various control mechanism
> between modules. These concepts of Sub-Graph, Containers and Modules
> are represented in ASoC topology.
> 
> Here is simple I2S graph with a Write Shared Memory and a
> Volume control module within a single Subgraph (1) with one Container (1)
> and 5 modules.
> 
>    ____________________________________________________________
>   |                        Sub-Graph [1]                       |
>   |  _______________________________________________________   |
>   | |                       Container [1]                   |  |
>   | | [WR_SH] -> [PCM DEC] -> [PCM CONV] -> [VOL]-> [I2S-EP]|  |
>   | |_______________________________________________________|  |
>   |____________________________________________________________|
> 
> For now this graph is split into two subgraphs to achieve dpcm like below:
>   ________________________________________________    _________________
> |                Sub-Graph [1]                   |  |  Sub-Graph [2]  |
> |  ____________________________________________  |  |  _____________  |
> | |              Container [1]                 | |  | |Container [2]| |
> | | [WR_SH] -> [PCM DEC] -> [PCM CONV] -> [VOL]| |  | |   [I2S-EP]  | |
> | |____________________________________________| |  | |_____________| |
> |________________________________________________|  |_________________|
> 
>                                                        _________________
>                                                      |  Sub-Graph [3]  |
>                                                      |  _____________  |
>                                                      | |Container [3]| |
>                                                      | |  [DMA-EP]   | |
>                                                      | |_____________| |
>                                                      |_________________|
> 
> 
> This patchset adds very minimal support for AudioReach which includes
> supporting sub-graphs containing CODEC DMA ports and simple PCM
> Decoder/Encoder and Logger Modules. Additional capabilities will
> be built over time to expose features offered by AudioReach.
> 
> This patchset is Tested on SM8250 SoC based Qualcomm Robotics Platform RB5
> and SM9250 MTP with WSA881X Smart Speaker Amplifiers, DMICs connected via
> VA Macro and WCD938x Codec connected via TX and RX Macro and HDMI audio
> via I2S.
> 
> First 10 Patches are mostly reorganization existing Old QDSP Audio
> Framework code and bindings so that we could reuse them on AudioReach.
> 
> ASoC topology graphs for DragonBoard RB5 and SM8250 MTP are available at
> https://git.linaro.org/people/srinivas.kandagatla/audioreach-topology.git/
> and Qualcomm AudioReach DSP headers are available at:
> https://source.codeaurora.org/quic/la/platform/vendor/opensource/arspf-headers
> 
> Note: There is one false positive warning in this patchset:
> audioreach.c:80:45: warning: array of flexible structures
> 
> Thanks,
> srini
> 
> Changes since v9:
> - fix build error during arm64 defconfig build reported by Mark in 12/17 patch
> 
> Srinivas Kandagatla (17):
>    ASoC: dt-bindings: move LPASS dai related bindings out of q6afe
>    ASoC: dt-bindings: move LPASS clocks related bindings out of q6afe
>    ASoC: dt-bindings: rename q6afe.h to q6dsp-lpass-ports.h
>    ASoC: qdsp6: q6afe-dai: move lpass audio ports to common file
>    ASoC: qdsp6: q6afe-clocks: move audio-clocks to common file
>    ASoC: dt-bindings: q6dsp: add q6apm-lpass-dai compatible
>    ASoC: dt-bindings: lpass-clocks: add q6prm clocks compatible
>    ASoC: dt-bindings: add q6apm digital audio stream bindings
>    ASoC: qdsp6: audioreach: add basic pkt alloc support
>    ASoC: qdsp6: audioreach: add q6apm support
>    ASoC: qdsp6: audioreach: add module configuration command helpers
>    ASoC: qdsp6: audioreach: add Kconfig and Makefile
>    ASoC: qdsp6: audioreach: add topology support
>    ASoC: qdsp6: audioreach: add q6apm-dai support
>    ASoC: qdsp6: audioreach: add q6apm lpass dai support
>    ASoC: qdsp6: audioreach: add q6prm support
>    ASoC: qdsp6: audioreach: add support for q6prm-clocks
> 
>   .../devicetree/bindings/sound/qcom,q6afe.txt  |  181 ---
>   .../bindings/sound/qcom,q6apm-dai.yaml        |   53 +
>   .../sound/qcom,q6dsp-lpass-clocks.yaml        |   77 ++
>   .../sound/qcom,q6dsp-lpass-ports.yaml         |  205 +++
>   include/dt-bindings/sound/qcom,q6afe.h        |  203 +--
>   .../sound/qcom,q6dsp-lpass-ports.h            |  208 +++
>   include/uapi/sound/snd_ar_tokens.h            |  208 +++
>   sound/soc/qcom/Kconfig                        |   22 +
>   sound/soc/qcom/qdsp6/Makefile                 |   11 +-
>   sound/soc/qcom/qdsp6/audioreach.c             | 1130 +++++++++++++++++
>   sound/soc/qcom/qdsp6/audioreach.h             |  726 +++++++++++
>   sound/soc/qcom/qdsp6/q6afe-clocks.c           |  187 +--
>   sound/soc/qcom/qdsp6/q6afe-dai.c              |  687 +---------
>   sound/soc/qcom/qdsp6/q6apm-dai.c              |  416 ++++++
>   sound/soc/qcom/qdsp6/q6apm-lpass-dais.c       |  260 ++++
>   sound/soc/qcom/qdsp6/q6apm.c                  |  822 ++++++++++++
>   sound/soc/qcom/qdsp6/q6apm.h                  |  152 +++
>   sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c     |  186 +++
>   sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.h     |   30 +
>   sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c      |  627 +++++++++
>   sound/soc/qcom/qdsp6/q6dsp-lpass-ports.h      |   22 +
>   sound/soc/qcom/qdsp6/q6prm-clocks.c           |   85 ++
>   sound/soc/qcom/qdsp6/q6prm.c                  |  202 +++
>   sound/soc/qcom/qdsp6/q6prm.h                  |   78 ++
>   sound/soc/qcom/qdsp6/topology.c               | 1113 ++++++++++++++++
>   25 files changed, 6664 insertions(+), 1227 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
>   create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
>   create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
>   create mode 100644 include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
>   create mode 100644 include/uapi/sound/snd_ar_tokens.h
>   create mode 100644 sound/soc/qcom/qdsp6/audioreach.c
>   create mode 100644 sound/soc/qcom/qdsp6/audioreach.h
>   create mode 100644 sound/soc/qcom/qdsp6/q6apm-dai.c
>   create mode 100644 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
>   create mode 100644 sound/soc/qcom/qdsp6/q6apm.c
>   create mode 100644 sound/soc/qcom/qdsp6/q6apm.h
>   create mode 100644 sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c
>   create mode 100644 sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.h
>   create mode 100644 sound/soc/qcom/qdsp6/q6dsp-lpass-ports.c
>   create mode 100644 sound/soc/qcom/qdsp6/q6dsp-lpass-ports.h
>   create mode 100644 sound/soc/qcom/qdsp6/q6prm-clocks.c
>   create mode 100644 sound/soc/qcom/qdsp6/q6prm.c
>   create mode 100644 sound/soc/qcom/qdsp6/q6prm.h
>   create mode 100644 sound/soc/qcom/qdsp6/topology.c
> 
