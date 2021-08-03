Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E9ED3DF0A4
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 16:48:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236685AbhHCOsL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 10:48:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236713AbhHCOsD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 10:48:03 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 197D7C061799
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 07:47:51 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id a192-20020a1c7fc90000b0290253b32e8796so2062124wmd.0
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 07:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zXJUlnoBGlagmYAr+XexyzecT51mX+H3pwaFkbjlB08=;
        b=aj6EY8cTMKDszh3T98BODTFy9mWLgriGn/i2VCnHFI8ZxCeJe5CMvI2KXDc3T5N+Fn
         F1MhInPfqilH/ul4w1jolbeKqPimOJds2qHAZR7gxpkeK+aVCYTUiKh9UxnHIrStJBaM
         BPEc1DzNzvA9lOHcXdTEN+sN/ajPpQQMpbrRxfmxTkhalKYNyOBFLP/8QLnqYUSdJw3V
         UKX2oHlCOg70vWkKVD+cn8VknSy2MBXqV4BoX2LH1JH1XmCAgYG6DymjIQldlgVSsDw3
         f06R6edeoBLjXygCYcERSbj66//u0oBei3ty2fF81gB+0qUtzQ56cmMQaVEmi5xr5n/W
         c55Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zXJUlnoBGlagmYAr+XexyzecT51mX+H3pwaFkbjlB08=;
        b=tEl6H9o5VQ1+QdukvNge2jQCCRs+kJ4tHF8Feo4/woZCXt5fw+VJUP50fFfTk2kjpq
         JyrrB/gGwjVxEtFigtlghBJU4qD4pZhZU9i2gV+BWOWaPsRNRPWOkm9JRApizwUde/sE
         3wXd9DSYKYDGlw0Qb0oQF/YZWo+WNi49WItXsxfgOM0tHjbLz8Kws8yLSIUELZdXmTjM
         LgXeffI5G2Vzo7x3JY0A30tPh2LE5l4mg9v370f+NcxcMYLj0ptvcFYbkiBhuzOXZC30
         ShkoKuOLzvNLzD13XZsJ0ZPUKJacyt1ruY0dVaB3Vn7FhaVUHs+Ubw7MhTavzTJgPIRF
         h8Ug==
X-Gm-Message-State: AOAM530Df/AYDHqX+eHcm+5DSh0ovSFcoe81rrCC7ZW+RRgxpxkMoZw2
        bXBOywyKm+1JfxBLzhEHbKYtUA==
X-Google-Smtp-Source: ABdhPJycOIACXhoY9Jt9L7t4p0koUKqZn+NXs/WRiqFAKK5i/TARsy/DjyqzpSibm8xAmLOwywcXNQ==
X-Received: by 2002:a1c:238e:: with SMTP id j136mr22655586wmj.91.1628002069739;
        Tue, 03 Aug 2021 07:47:49 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id x21sm2754394wmi.46.2021.08.03.07.47.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 07:47:49 -0700 (PDT)
Subject: Re: [PATCH v3 16/20] ASoC: qdsp6: audioreach: add topology support
To:     =?UTF-8?Q?Amadeusz_S=c5=82awi=c5=84ski?= 
        <amadeuszx.slawinski@linux.intel.com>, bjorn.andersson@linaro.org,
        broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
 <20210803125411.28066-17-srinivas.kandagatla@linaro.org>
 <05f85ed8-01ce-632b-c744-3fe8995bd17a@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <52c3078b-3d80-3802-ad58-0574d6ce3edc@linaro.org>
Date:   Tue, 3 Aug 2021 15:47:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <05f85ed8-01ce-632b-c744-3fe8995bd17a@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Thanks Amadeusz for quick review,

On 03/08/2021 15:21, Amadeusz Sławiński wrote:
> On 8/3/2021 2:54 PM, Srinivas Kandagatla wrote:
>> Add ASoC topology support in audioreach
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
> 
> ...
> 
>> +
>> +/* DAI Tokens */
>> +#define AR_TKN_DAI_INDEX            1
>> +/* SUB GRAPH Tokens */
>> +#define AR_TKN_U32_SUB_GRAPH_INSTANCE_ID    2
>> +#define AR_TKN_U32_SUB_GRAPH_PERF_MODE        3
>> +#define AR_TKN_U32_SUB_GRAPH_DIRECTION        4
>> +#define AR_TKN_U32_SUB_GRAPH_SCENARIO_ID    5
>> +
>> +/* Container Tokens */
>> +#define AR_TKN_U32_CONAINER_INSTANCE_ID        100
>> +#define AR_TKN_U32_CONAINER_CAPABILITY_ID    101
>> +#define AR_TKN_U32_CONAINER_STACK_SIZE        102
>> +#define AR_TKN_U32_CONAINER_GRAPH_POS        103
>> +#define AR_TKN_U32_CONAINER_PROC_DOMAIN        104
> 
> typo in all of the above and in comment documenting them
> AR_TKN_U32_CONTAINER_ *
> 
.. Not sure how i missed this one.. Its not fixed.

> 
>>   #define APM_AUDIO_DRV_NAME "q6apm-audio"
>> diff --git a/sound/soc/qcom/qdsp6/topology.c 
>> b/sound/soc/qcom/qdsp6/topology.c
>> new file mode 100644
>> index 000000000000..409e19486d57
>> --- /dev/null
>> +++ b/sound/soc/qcom/qdsp6/topology.c
>> @@ -0,0 +1,1114 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +// Copyright (c) 2020, Linaro Limited
>> +
>> +#include <sound/soc.h>
>> +#include <sound/soc-dapm.h>
>> +#include <sound/pcm.h>
>> +#include <sound/control.h>
>> +#include <sound/asound.h>
>> +#include <linux/firmware.h>
>> +#include <sound/soc-topology.h>
>> +#include <sound/soc-dpcm.h>
>> +#include <uapi/sound/snd_ar_tokens.h>
>> +#include <linux/kernel.h>
>> +#include <linux/wait.h>
>> +#include "q6apm.h"
>> +#include "audioreach.h"
>> +
>> +struct snd_ar_control {
>> +    u32 sgid; /* Sub Graph ID */
>> +    struct snd_soc_component *scomp;
>> +};
>> +
>> +static struct audioreach_graph_info *audioreach_tplg_alloc_graph_info(
>> +                    struct q6apm *apm, uint32_t graph_id,
>> +                    bool *found)
>> +{
>> +    struct audioreach_graph_info *info;
>> +    int ret;
>> +
>> +    spin_lock(&apm->lock);
>> +    info = idr_find(&apm->graph_info_idr, graph_id);
>> +    spin_unlock(&apm->lock);
>> +
>> +    if (info) {
>> +        *found = true;
>> +        return info;
>> +    }
>> +
>> +    *found = false;
>> +    info = kzalloc(sizeof(*info), GFP_KERNEL);
>> +    if (!info)
>> +        return ERR_PTR(-ENOMEM);
>> +
>> +
>> +    INIT_LIST_HEAD(&info->sg_list);
>> +    spin_lock_init(&info->sg_list_lock);
>> +
>> +    spin_lock(&apm->lock);
>> +    ret = idr_alloc(&apm->graph_info_idr, info, graph_id,
>> +            graph_id + 1, GFP_ATOMIC);
>> +    spin_unlock(&apm->lock);
>> +
>> +    if (ret < 0) {
>> +        dev_err(apm->dev, "Failed to allocate Graph ID (%x)\n", 
>> graph_id);
>> +        return ERR_PTR(ret);
>> +    }
> need to free info here?

All such instances are now fixed, thanks for spotting these!

--srini
