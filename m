Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDB2340CA56
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 18:34:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229988AbhIOQgE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 12:36:04 -0400
Received: from mga07.intel.com ([134.134.136.100]:58332 "EHLO mga07.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229746AbhIOQgD (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Sep 2021 12:36:03 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="286060927"
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; 
   d="scan'208";a="286060927"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2021 09:34:44 -0700
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; 
   d="scan'208";a="583352215"
Received: from mvetrive-mobl3.amr.corp.intel.com (HELO [10.212.69.198]) ([10.212.69.198])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2021 09:34:43 -0700
Subject: Re: [PATCH v6 00/22] ASoC: qcom: Add AudioReach support
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <dd55eeae-0fd9-1faf-12b5-deaaf1a035b4@linux.intel.com>
Date:   Wed, 15 Sep 2021 11:32:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 9/15/21 8:13 AM, Srinivas Kandagatla wrote:
> Many thanks for reviewing v5. This version addresses all the comments
> raised as part of v5 review.

Much improved indeed, but still a couple of issues and nit-picks.

The one thing I didn't see before is the use of an 'audioreach.bin'
topology file, retrieved with request_firmware(). That hard-coded name
seems problematic for a signal processing framework precisely geared to
topology changes (I kept the description below for context), and will
prevent the use of a common setup on different platforms, even when they
only differ by the form-factor and processing graph. That doesn't seem
to scale, does it? Or did I miss something?

In the SOF example, we have an initial set of tables based on which
codec/amps are used and DMI identifiers; the topology name is overridden
at boot time to account for hardware variability and changes in processing.

> This patchset adds ASoC driver support to configure signal processing
> framework ("AudioReach") which is integral part of Qualcomm next
> generation audio SDK and will be deployed on upcoming Qualcomm chipsets.
> It makes use of ASoC Topology to load graphs on to the DSP which is then
> managed by APM (Audio Processing Manager) service to prepare/start/stop.
> 
> Here is simplified high-level block diagram of AudioReach:
> 
>  ___________________________________________________________
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
>                              |  
>                              | RPMSG (IPC over GLINK)              
>  ____________________________|______________________________
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
>                              |  
>                              |   LPASS AIF
>  ____________________________|______________________________
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
>   ____________________________________________________________
>  |                        Sub-Graph [1]                       |
>  |  _______________________________________________________   |
>  | |                       Container [1]                   |  |
>  | | [WR_SH] -> [PCM DEC] -> [PCM CONV] -> [VOL]-> [I2S-EP]|  |
>  | |_______________________________________________________|  |
>  |____________________________________________________________|
> 
> For now this graph is split into two subgraphs to achieve dpcm like below:
>  ________________________________________________    _________________
> |                Sub-Graph [1]                   |  |  Sub-Graph [2]  |
> |  ____________________________________________  |  |  _____________  |
> | |              Container [1]                 | |  | |Container [2]| |
> | | [WR_SH] -> [PCM DEC] -> [PCM CONV] -> [VOL]| |  | |   [I2S-EP]  | |
> | |____________________________________________| |  | |_____________| |
> |________________________________________________|  |_________________|
> 
>                                                       _________________
>                                                     |  Sub-Graph [3]  |
>                                                     |  _____________  |
>                                                     | |Container [3]| |
>                                                     | |  [DMA-EP]   | |
>                                                     | |_____________| |
>                                                     |_________________|
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

