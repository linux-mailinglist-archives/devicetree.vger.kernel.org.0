Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 639E641AA87
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 10:23:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239558AbhI1IZP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 04:25:15 -0400
Received: from mga06.intel.com ([134.134.136.31]:43648 "EHLO mga06.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S239292AbhI1IZO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 28 Sep 2021 04:25:14 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="285661087"
X-IronPort-AV: E=Sophos;i="5.85,329,1624345200"; 
   d="scan'208";a="285661087"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2021 01:23:35 -0700
X-IronPort-AV: E=Sophos;i="5.85,329,1624345200"; 
   d="scan'208";a="561974715"
Received: from aslawinx-mobl.ger.corp.intel.com (HELO [10.237.12.65]) ([10.237.12.65])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2021 01:23:32 -0700
Subject: Re: [PATCH v8 15/22] ASoC: qdsp6: audioreach: add q6apm support
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, lgirdwood@gmail.com, tiwai@suse.de,
        plai@codeaurora.org, pierre-louis.bossart@linux.intel.com
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
 <20210927135559.738-16-srinivas.kandagatla@linaro.org>
From:   =?UTF-8?Q?Amadeusz_S=c5=82awi=c5=84ski?= 
        <amadeuszx.slawinski@linux.intel.com>
Message-ID: <f5cad020-9d36-d700-df14-95e72a8357fd@linux.intel.com>
Date:   Tue, 28 Sep 2021 10:23:30 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210927135559.738-16-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/27/2021 3:55 PM, Srinivas Kandagatla wrote:
> Add support to q6apm (Audio Process Manager) component which is
> core Audioreach service running in the DSP.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---

(...)

> +++ b/sound/soc/qcom/qdsp6/q6apm.c
> @@ -0,0 +1,597 @@
> +// SPDX-License-Identifier: GPL-2.0
> +// Copyright (c) 2020, Linaro Limited
> +
> +#include <dt-bindings/soc/qcom,gpr.h>
> +#include <linux/delay.h>
> +#include <linux/jiffies.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_platform.h>
> +#include <linux/sched.h>
> +#include <linux/slab.h>
> +#include <linux/soc/qcom/apr.h>
> +#include <linux/wait.h>
> +#include <sound/soc.h>
> +#include <sound/soc-dapm.h>
> +#include <sound/pcm.h>
> +#include "audioreach.h"
> +#include "q6apm.h"
> +
> +/* Graph Management */
> +struct apm_graph_mgmt_cmd {
> +	struct apm_module_param_data param_data;
> +	uint32_t num_sub_graphs;
> +	uint32_t sub_graph_id_list[];
> +} __packed;
> +
> +#define APM_GRAPH_MGMT_PSIZE(n) ALIGN(sizeof(struct apm_graph_mgmt_cmd) + \
> +				      n * sizeof(uint32_t), 8)

Possible struct_size again

> +
> +int q6apm_send_cmd_sync(struct q6apm *apm, struct gpr_pkt *pkt,	uint32_t rsp_opcode)

There seems to be 'tab' in argument list?

> +{
> +	gpr_device_t *gdev = apm->gdev;
> +
> +	return audioreach_send_cmd_sync(&gdev->dev, gdev, &apm->result, &apm->lock,
> +					NULL, &apm->wait, pkt, rsp_opcode);
> +}
> +

(...)
