Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBB6641ABF1
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 11:31:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239980AbhI1JdW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 05:33:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239844AbhI1JdV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 05:33:21 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EB4CC061604
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 02:31:42 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 136-20020a1c048e000000b0030d05169e9bso1622006wme.4
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 02:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=OwbUNyzcDhkwRSM1z2XoHupYIfFeEC2bQD7N4nxDnQI=;
        b=EVAposAl80ZKcHtNjhQdjPLaK/iPtYQJNEU9lD7v0mx28zoKyokeEm46SnRbr9QOzN
         TFoNEeYelyP65KO4umRfV+xvDtG/92nimh2HBdxWav4B0aTPBgmTKBVFdcN0fztRyuTZ
         ebKADg9iKeOBPGZYkNM7FwoknT46lSwA7jAd6C0wGwWYoMRJ+hIGV3Kk0jasNAjuMOWl
         Ska5rPRHdbZT+4MNrPNUQqZd7h/wfTJCWoOmGtpbBiW2a6KY9QOOGjkpcrCjJzMxjuuw
         Paf6XKjYl0m4Yd/Ygwthxvoj+AYD0X/7U/xcTQrJdB3mi+nu8KRao8qxVZh5otuK1i88
         vH2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OwbUNyzcDhkwRSM1z2XoHupYIfFeEC2bQD7N4nxDnQI=;
        b=GscqbvVsoep6wf/wwIqv83e24lgE4NlImpkwemkzsIsyC2CXYozdAT8Xc8gjVUKggd
         HwEG4iARdr82gcyWVxWThup4PD8S7s7yBZb4+nsI678cvlQplvT1/rU+uEBmhODGrRfV
         0u65+vjHNL6VBNP7L7jsEzoQ5DM4fZTpCZdYTPuKR5HuCF4UgF9RdqwZNsDkgLQBpJxb
         WULpJ8LG7OwFRX6Oe4RMbQqryk6u3mCAV64UgjfebC7y+kciaO0t79HErIy+IlJuAqum
         yhTCytKotv7YGMeFedpP++UUo/YB1ho4oPUxUZItuOPJs8v9YYgluRtPskQDkfNaK8oF
         5bZA==
X-Gm-Message-State: AOAM5329HYgZQuzYVU/EDit07F615auYV4WIePNLoC9e+Vdb356cQEtp
        J6Al2e2pHIS2KCC3BKSsQ4ycQA==
X-Google-Smtp-Source: ABdhPJyEiC7SUOkX7FnTCnCShBLCrawdHIIVTgRGxAiarcKJeDd5A6vU0oKIJrW3TZBqsBfAnipACA==
X-Received: by 2002:a05:600c:22d6:: with SMTP id 22mr3717036wmg.17.1632821500931;
        Tue, 28 Sep 2021 02:31:40 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id s85sm2188425wme.20.2021.09.28.02.31.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Sep 2021 02:31:40 -0700 (PDT)
Subject: Re: [PATCH v8 15/22] ASoC: qdsp6: audioreach: add q6apm support
To:     =?UTF-8?Q?Amadeusz_S=c5=82awi=c5=84ski?= 
        <amadeuszx.slawinski@linux.intel.com>, bjorn.andersson@linaro.org,
        broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, lgirdwood@gmail.com, tiwai@suse.de,
        plai@codeaurora.org, pierre-louis.bossart@linux.intel.com
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
 <20210927135559.738-16-srinivas.kandagatla@linaro.org>
 <f5cad020-9d36-d700-df14-95e72a8357fd@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <2d2fb4b8-2c79-ac52-5215-db66a7a4866e@linaro.org>
Date:   Tue, 28 Sep 2021 10:31:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <f5cad020-9d36-d700-df14-95e72a8357fd@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 28/09/2021 09:23, Amadeusz Sławiński wrote:
> On 9/27/2021 3:55 PM, Srinivas Kandagatla wrote:
>> Add support to q6apm (Audio Process Manager) component which is
>> core Audioreach service running in the DSP.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
> 
> (...)
> 
>> +++ b/sound/soc/qcom/qdsp6/q6apm.c
>> @@ -0,0 +1,597 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +// Copyright (c) 2020, Linaro Limited
>> +
>> +#include <dt-bindings/soc/qcom,gpr.h>
>> +#include <linux/delay.h>
>> +#include <linux/jiffies.h>
>> +#include <linux/kernel.h>
>> +#include <linux/module.h>
>> +#include <linux/of.h>
>> +#include <linux/of_platform.h>
>> +#include <linux/sched.h>
>> +#include <linux/slab.h>
>> +#include <linux/soc/qcom/apr.h>
>> +#include <linux/wait.h>
>> +#include <sound/soc.h>
>> +#include <sound/soc-dapm.h>
>> +#include <sound/pcm.h>
>> +#include "audioreach.h"
>> +#include "q6apm.h"
>> +
>> +/* Graph Management */
>> +struct apm_graph_mgmt_cmd {
>> +    struct apm_module_param_data param_data;
>> +    uint32_t num_sub_graphs;
>> +    uint32_t sub_graph_id_list[];
>> +} __packed;
>> +
>> +#define APM_GRAPH_MGMT_PSIZE(n) ALIGN(sizeof(struct 
>> apm_graph_mgmt_cmd) + \
>> +                      n * sizeof(uint32_t), 8)
> 
> Possible struct_size again

Yes, we could use struct_size here.

> 
>> +
>> +int q6apm_send_cmd_sync(struct q6apm *apm, struct gpr_pkt *pkt,    
>> uint32_t rsp_opcode)
> 
> There seems to be 'tab' in argument list?

That's true, in vi I could not spot this by just looking.
> 
>> +{
>> +    gpr_device_t *gdev = apm->gdev;
>> +
>> +    return audioreach_send_cmd_sync(&gdev->dev, gdev, &apm->result, 
>> &apm->lock,
>> +                    NULL, &apm->wait, pkt, rsp_opcode);
>> +}
>> +
> 
> (...)
