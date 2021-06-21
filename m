Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E75563AE96A
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 14:52:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230061AbhFUMzJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 08:55:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230013AbhFUMzI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 08:55:08 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81D5CC061574
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 05:52:52 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id f2so19501349wri.11
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 05:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=oUbWLR6jP8sFAmnNbGZX4JOnm2ju8K/Z3jaXNl0VaNQ=;
        b=s69jGoi5HE6JfVg/S0mlcw3uDa6K+m3W7p6LfVGYpAdim7suxSey2r56Y8nH5MlurJ
         1iSvlFqJz+adhwc0DG9qlnoIvwE2qxk/sh1WBuZy9NbOXNFkApFLFpGKhmDTnfkYRT6Q
         bUw1UMQBufKlYMS9dBFsRXM5RbTGbhR/Y4+j0A6yQzD4ByQ+13X/Kgl6b/JJKSH41g2f
         rBEPXHRlnNIWe7LjgH2AhOcXIVi1g6VwsXkeHScnPpiig2mPRtlXKxISAcyQYery1FRw
         ZqyKJ35PATKRg5j0xlKRxrPKKqE3xgZX3k4l23kTUkTH/08o7ghWooUIBHuTRjLod9U5
         9Rwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oUbWLR6jP8sFAmnNbGZX4JOnm2ju8K/Z3jaXNl0VaNQ=;
        b=iRrr+U7h3oehva/B0RnJMe1OOfrTBZllFpCMRDNXOkqyovG+SGddqGbtRDRSlssZwo
         1R0HvifMs89c0C6VIv20+YQwKgH5GfDdMQ29E9tHz8B+HhmQekmH5qidiBtw+AFgf8I+
         i0upvnV9w1lvOTHYfY4DDy1+o9j1+LQwLJSnE+2C1t8byyBZwd+zRU/z+MJZ2iHk8avG
         9l++xMlsuAmTziMj5QS+TXqA0+JMXzjX5lefuNCgjabuHcy8hFhKnsZlexehdr2ocfNm
         jhKIlEQjN6Q30Xo9urfzHfCQuZxlrhlD13hCva5gudi+al7UirYt6KcNrej5ZKd0TPc7
         qtyg==
X-Gm-Message-State: AOAM5328xYD1506H6UOBgoHtgUU3m/d99zEwKvQWd9d2faNuYU3ErcQE
        UziOl0Gv03Q1uYIDcXURLkw0Zw==
X-Google-Smtp-Source: ABdhPJwxP79R2nIH3qYcLv/Uw34PrwDf8thNus0OZKbDqKhEbV3YV6hiE/GqoUTsc+Yq2uCtvPPrpQ==
X-Received: by 2002:adf:f587:: with SMTP id f7mr3891667wro.253.1624279971181;
        Mon, 21 Jun 2021 05:52:51 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id v5sm9953974wml.26.2021.06.21.05.52.49
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 05:52:50 -0700 (PDT)
Subject: Re: [PATCH v3] ASoC: qcom: Fix for DMA interrupt clear reg
 overwriting
To:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org, plai@codeaurora.org,
        bgoswami@codeaurora.org, perex@perex.cz, tiwai@suse.com,
        rohitkr@codeaurora.org, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, swboyd@chromium.org,
        judyhsiao@chromium.org
References: <20210609072310.26099-1-srivasam@codeaurora.org>
 <CGME20210617193537eucas1p217b93d091ae8795581b30931ad8c7467@eucas1p2.samsung.com>
 <5ae06ccb-ffd4-ca9f-5a88-1f8bf8b48d37@samsung.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <ec4f3faf-2169-3cd2-7471-976f20f77110@linaro.org>
Date:   Mon, 21 Jun 2021 13:52:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5ae06ccb-ffd4-ca9f-5a88-1f8bf8b48d37@samsung.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek/Srinivasa,


On 17/06/2021 20:35, Marek Szyprowski wrote:
> Hi,
> 
> On 09.06.2021 09:23, Srinivasa Rao Mandadapu wrote:
>> The DMA interrupt clear register overwritten during
>> simultaneous playback and capture in lpass platform
>> interrupt handler. It's causing playback or capture stuck
>> in similtaneous plaback on speaker and capture on dmic test.
>> Update appropriate reg fields of corresponding channel instead
>> of entire register write.
>>
>> Fixes: commit c5c8635a04711 ("ASoC: qcom: Add LPASS platform driver")
>>
>> Signed-off-by: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
> 
Can you please try this patch and let us know if this fixes the issue

------------------------->cut<-------------------------------
Author: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Date:   Mon Jun 21 12:38:43 2021 +0100

     ASoC: qcom: lpass-cpu: mark IRQ_CLEAR register as volatile and readable

     Currently IRQ_CLEAR register is marked as write-only, however using
     regmap_update_bits on this register will have some side effects.
     so mark IRQ_CLEAR register appropriately as readable and volatile.

     Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

diff --git a/sound/soc/qcom/lpass-cpu.c b/sound/soc/qcom/lpass-cpu.c
index 0b9cbf2ce505..8998697cd1e1 100644
--- a/sound/soc/qcom/lpass-cpu.c
+++ b/sound/soc/qcom/lpass-cpu.c
@@ -525,6 +525,8 @@ static bool lpass_cpu_regmap_readable(struct device 
*dev, unsigned int reg)
                         return true;

         for (i = 0; i < v->irq_ports; ++i) {
+               if (reg == LPAIF_IRQCLEAR_REG(v, i))
+                       return true;
                 if (reg == LPAIF_IRQEN_REG(v, i))
                         return true;
                 if (reg == LPAIF_IRQSTAT_REG(v, i))
@@ -566,9 +568,12 @@ static bool lpass_cpu_regmap_volatile(struct device 
*dev, unsigned int reg)
         struct lpass_variant *v = drvdata->variant;
         int i;

-       for (i = 0; i < v->irq_ports; ++i)
+       for (i = 0; i < v->irq_ports; ++i) {
+               if (reg == LPAIF_IRQCLEAR_REG(v, i))
+                       return true;
                 if (reg == LPAIF_IRQSTAT_REG(v, i))
                         return true;
+       }

         for (i = 0; i < v->rdma_channels; ++i)
                 if (reg == LPAIF_RDMACURR_REG(v, i))

------------------------->cut<-------------------------------

--srini

> This patch landed recently in linux-next as commit da0363f7bfd3 ("ASoC:
> qcom: Fix for DMA interrupt clear reg overwriting"). It breaks ALSA
> playback on DragonBoard 410c (arch/arm64/boot/dts/qcom/apq8016-sbc.dts).
> After applying this patch, running 'speaker-test -l1' never finishes.
> There is no error nor kernel warning message. Before that commit, the
> playback worked fine on that board.
> 
>> ---
>> Changes since v2:
>> 	-- Removed redundant variables.
>> Changes since v1:
>> 	-- Subject lines changed.
>>    sound/soc/qcom/lpass-platform.c | 12 ++++++------
>>    1 file changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/sound/soc/qcom/lpass-platform.c b/sound/soc/qcom/lpass-platform.c
>> index 0df9481ea4c6..f9df76d37858 100644
>> --- a/sound/soc/qcom/lpass-platform.c
>> +++ b/sound/soc/qcom/lpass-platform.c
>> @@ -526,7 +526,7 @@ static int lpass_platform_pcmops_trigger(struct snd_soc_component *component,
>>    			return -EINVAL;
>>    		}
>>    
>> -		ret = regmap_write(map, reg_irqclr, val_irqclr);
>> +		ret = regmap_update_bits(map, reg_irqclr, val_irqclr, val_irqclr);
>>    		if (ret) {
>>    			dev_err(soc_runtime->dev, "error writing to irqclear reg: %d\n", ret);
>>    			return ret;
>> @@ -650,10 +650,11 @@ static irqreturn_t lpass_dma_interrupt_handler(
>>    	struct lpass_variant *v = drvdata->variant;
>>    	irqreturn_t ret = IRQ_NONE;
>>    	int rv;
>> -	unsigned int reg = 0, val = 0;
>> +	unsigned int reg, val, mask;
>>    	struct regmap *map;
>>    	unsigned int dai_id = cpu_dai->driver->id;
>>    
>> +	mask = LPAIF_IRQ_ALL(chan);
>>    	switch (dai_id) {
>>    	case LPASS_DP_RX:
>>    		map = drvdata->hdmiif_map;
>> @@ -676,8 +677,7 @@ static irqreturn_t lpass_dma_interrupt_handler(
>>    	return -EINVAL;
>>    	}
>>    	if (interrupts & LPAIF_IRQ_PER(chan)) {
>> -
>> -		rv = regmap_write(map, reg, LPAIF_IRQ_PER(chan) | val);
>> +		rv = regmap_update_bits(map, reg, mask, (LPAIF_IRQ_PER(chan) | val));
>>    		if (rv) {
>>    			dev_err(soc_runtime->dev,
>>    				"error writing to irqclear reg: %d\n", rv);
>> @@ -688,7 +688,7 @@ static irqreturn_t lpass_dma_interrupt_handler(
>>    	}
>>    
>>    	if (interrupts & LPAIF_IRQ_XRUN(chan)) {
>> -		rv = regmap_write(map, reg, LPAIF_IRQ_XRUN(chan) | val);
>> +		rv = regmap_update_bits(map, reg, mask, (LPAIF_IRQ_XRUN(chan) | val));
>>    		if (rv) {
>>    			dev_err(soc_runtime->dev,
>>    				"error writing to irqclear reg: %d\n", rv);
>> @@ -700,7 +700,7 @@ static irqreturn_t lpass_dma_interrupt_handler(
>>    	}
>>    
>>    	if (interrupts & LPAIF_IRQ_ERR(chan)) {
>> -		rv = regmap_write(map, reg, LPAIF_IRQ_ERR(chan) | val);
>> +		rv = regmap_update_bits(map, reg, mask, (LPAIF_IRQ_ERR(chan) | val));
>>    		if (rv) {
>>    			dev_err(soc_runtime->dev,
>>    				"error writing to irqclear reg: %d\n", rv);
> 
> Best regards
> 
