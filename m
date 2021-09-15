Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 596D740CA52
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 18:34:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230313AbhIOQf7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 12:35:59 -0400
Received: from mga07.intel.com ([134.134.136.100]:58317 "EHLO mga07.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230322AbhIOQf6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Sep 2021 12:35:58 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="286060892"
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; 
   d="scan'208";a="286060892"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2021 09:34:34 -0700
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; 
   d="scan'208";a="583352185"
Received: from mvetrive-mobl3.amr.corp.intel.com (HELO [10.212.69.198]) ([10.212.69.198])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2021 09:34:32 -0700
Subject: Re: [PATCH v6 14/22] ASoC: qdsp6: audioreach: add basic pkt alloc
 support
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
 <20210915131333.19047-15-srinivas.kandagatla@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <c6082189-5788-0973-2fba-699f1cc7e4ae@linux.intel.com>
Date:   Wed, 15 Sep 2021 10:54:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210915131333.19047-15-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> +#define APM_SHMEM_FMT_CFG_PSIZE(n) ALIGN( \
> +				sizeof(struct apm_sh_module_media_fmt_cmd) + \
> +				n * sizeof(uint8_t), 8)
> +
> +/* num of channels as argument */
> +#define APM_PCM_MODULE_FMT_CMD_PSIZE(n) ALIGN( \
> +				sizeof(struct apm_pcm_module_media_fmt_cmd) + \
> +				n * sizeof(uint8_t), 8)
> +
> +#define APM_PCM_OUT_FMT_CFG_PSIZE(n) ALIGN((sizeof( \
> +				struct payload_pcm_output_format_cfg) + \
> +				n * sizeof(uint8_t)), 4)

nit-pick: sizeof on the same line for consistency/readability?
