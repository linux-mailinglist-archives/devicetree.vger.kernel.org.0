Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA5B0419F8B
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 21:53:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236694AbhI0Tyk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 15:54:40 -0400
Received: from mga05.intel.com ([192.55.52.43]:39457 "EHLO mga05.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236547AbhI0Tyk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Sep 2021 15:54:40 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="310102861"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; 
   d="scan'208";a="310102861"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Sep 2021 12:53:02 -0700
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; 
   d="scan'208";a="486268040"
Received: from asen4-mobl2.amr.corp.intel.com (HELO [10.212.27.2]) ([10.212.27.2])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Sep 2021 12:53:00 -0700
Subject: Re: [PATCH v8 00/22] ASoC: qcom: Add AudioReach support
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, lgirdwood@gmail.com, tiwai@suse.de,
        plai@codeaurora.org
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <603b8650-d6cb-74e0-b6bd-3b650c6bd194@linux.intel.com>
Date:   Mon, 27 Sep 2021 11:32:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org




> Srinivas Kandagatla (22):
>   soc: dt-bindings: qcom: apr: convert to yaml
>   soc: dt-bindings: qcom: apr: deprecate qcom,apr-domain property
>   soc: qcom: apr: make code more reuseable
>   soc: dt-bindings: qcom: add gpr bindings
>   soc: qcom: apr: Add GPR support
>   ASoC: dt-bindings: move LPASS dai related bindings out of q6afe
>   ASoC: dt-bindings: move LPASS clocks related bindings out of q6afe
>   ASoC: dt-bindings: rename q6afe.h to q6dsp-lpass-ports.h
>   ASoC: qdsp6: q6afe-dai: move lpass audio ports to common file
>   ASoC: qdsp6: q6afe-clocks: move audio-clocks to common file
>   ASoC: dt-bindings: q6dsp: add q6apm-lpass-dai compatible
>   ASoC: dt-bindings: lpass-clocks: add q6prm clocks compatible
>   ASoC: dt-bindings: add q6apm digital audio stream bindings
>   ASoC: qdsp6: audioreach: add basic pkt alloc support
>   ASoC: qdsp6: audioreach: add q6apm support
>   ASoC: qdsp6: audioreach: add module configuration command helpers
>   ASoC: qdsp6: audioreach: add Kconfig and Makefile
>   ASoC: qdsp6: audioreach: add topology support
>   ASoC: qdsp6: audioreach: add q6apm-dai support
>   ASoC: qdsp6: audioreach: add q6apm lpass dai support
>   ASoC: qdsp6: audioreach: add q6prm support
>   ASoC: qdsp6: audioreach: add support for q6prm-clocks

I added a couple of minor comments, at this point other reviewers should
start looking at this patchset.

For patches 5, 9, 10, 14..22 (everything except dt-bindings which I
didn't even look at):

Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>


