Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44A57374B66
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 00:43:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234412AbhEEWnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 18:43:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234363AbhEEWnq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 May 2021 18:43:46 -0400
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 913A9C06138A
        for <devicetree@vger.kernel.org>; Wed,  5 May 2021 15:42:48 -0700 (PDT)
Received: by mail-io1-xd2b.google.com with SMTP id f6so3141462iow.2
        for <devicetree@vger.kernel.org>; Wed, 05 May 2021 15:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=eVRAL4I5R3EIThtpHkhCvr3PaZqxvgbDA7g9md7suZ0=;
        b=NAJY9Hg2QjXPKsUa6VRHa7ZlrvQLdZV5WbT0H4FG5YQX800t2+fWOzVW1GHg3mR+gh
         P94XdmejdrLRI5m5SSqTdHs4OnPb241mf5Qu/itTHtAbbnpww+FRLdM0TgDIbKXRVt1z
         S8enQ3S/SCDQ7tOd42GHNNV4uSBbLYisYEdXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eVRAL4I5R3EIThtpHkhCvr3PaZqxvgbDA7g9md7suZ0=;
        b=gPh3fzUTyg2vsAY0cfXB32yLka4phWvk0p7nBCAtcG6hQJdwqDVYDL8ZG1LcG7OzAk
         a48ghpouGCZoqLQA1iBM3mjKak9jrHNJf7KScLjShSjKHKPOl0qbMi/nthQ1Ja623QLS
         zWDQgZJv2163tuxt7CCsS9F54TcQv/JbJleu1gxnWAnGdW9mbvNwuirv9OEs38u4zxuQ
         c9gS49XwIUO+O5vE/HrqQQTaWpxMd70YvCJZtCnp4/ogIuWoImQPibbjksMh6jvlr1UA
         FG3jdDvVkhLuRZdvEzEGYHXqsGbrA8VtopGzR87VkujtuFmIqAjhXKn6V0AjK7zeTRjD
         wJNw==
X-Gm-Message-State: AOAM533ERhF6CRL8eQ6eOXCp6HxOApV0enkTiWHLgcuWyAmvKwg8pNUb
        H3Z/KbCji7CYPvyvms6jnkui4w==
X-Google-Smtp-Source: ABdhPJzRPg1pfHtketnKuyEw5gC3cjUAUj2IyceNo+rC3q5l1fw9d0pKB58HRLXey4W1vzb+15I/VA==
X-Received: by 2002:a5d:9149:: with SMTP id y9mr661126ioq.159.1620254568052;
        Wed, 05 May 2021 15:42:48 -0700 (PDT)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.googlemail.com with ESMTPSA id s23sm264263iol.49.2021.05.05.15.42.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 15:42:47 -0700 (PDT)
Subject: Re: [PATCH v1 3/7] net: ipa: gsi: Avoid some writes during irq setup
 for older IPA
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>, elder@kernel.org
Cc:     bjorn.andersson@linaro.org, agross@kernel.org, davem@davemloft.net,
        kuba@kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, konrad.dybcio@somainline.org,
        marijn.suijten@somainline.org, phone-devel@vger.kernel.org
References: <20210211175015.200772-1-angelogioacchino.delregno@somainline.org>
 <20210211175015.200772-4-angelogioacchino.delregno@somainline.org>
From:   Alex Elder <elder@ieee.org>
Message-ID: <cd51718f-b584-11f5-40e0-cdec197881eb@ieee.org>
Date:   Wed, 5 May 2021 17:42:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210211175015.200772-4-angelogioacchino.delregno@somainline.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/11/21 11:50 AM, AngeloGioacchino Del Regno wrote:
> On some IPA versions (v3.1 and older), writing to registers
> GSI_INTER_EE_SRC_CH_IRQ_OFFSET and GSI_INTER_EE_SRC_EV_CH_IRQ_OFFSET
> will generate a fault and the SoC will lockup.
> 
> Avoid clearing CH and EV_CH interrupts on GSI probe to fix this bad
> behavior: we are anyway not going to get spurious interrupts.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>

Looking at this more closely, I see that you have found
a *bug* that I will fix.  The bug is that these registers
are the IRQ status registers, not the IRQ mask registers.

I have posted a fix for this bug, and once fixed, and I would
like to know whether this fix makes the fault you were
observing go away.
   https://lore.kernel.org/netdev/20210505223636.232527-1-elder@linaro.org

					-Alex

> ---
>   drivers/net/ipa/gsi.c | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ipa/gsi.c b/drivers/net/ipa/gsi.c
> index 6315336b3ca8..b5460cbb085c 100644
> --- a/drivers/net/ipa/gsi.c
> +++ b/drivers/net/ipa/gsi.c
> @@ -207,11 +207,14 @@ static void gsi_irq_setup(struct gsi *gsi)
>   	iowrite32(0, gsi->virt + GSI_CNTXT_SRC_IEOB_IRQ_MSK_OFFSET);
>   
>   	/* Reverse the offset adjustment for inter-EE register offsets */
> -	adjust = gsi->version < IPA_VERSION_4_5 ? 0 : GSI_EE_REG_ADJUST;
> -	iowrite32(0, gsi->virt + adjust + GSI_INTER_EE_SRC_CH_IRQ_OFFSET);
> -	iowrite32(0, gsi->virt + adjust + GSI_INTER_EE_SRC_EV_CH_IRQ_OFFSET);
> +	if (gsi->version > IPA_VERSION_3_1) {
> +		adjust = gsi->version < IPA_VERSION_4_5 ? 0 : GSI_EE_REG_ADJUST;
> +		iowrite32(0, gsi->virt + adjust + GSI_INTER_EE_SRC_CH_IRQ_OFFSET);
> +		iowrite32(0, gsi->virt + adjust + GSI_INTER_EE_SRC_EV_CH_IRQ_OFFSET);
> +	}
>   
>   	iowrite32(0, gsi->virt + GSI_CNTXT_GSI_IRQ_EN_OFFSET);
> +
>   }
>   
>   /* Turn off all GSI interrupts when we're all done */
> 

