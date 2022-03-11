Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCD5A4D5E2C
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 10:16:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241265AbiCKJQi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 04:16:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347178AbiCKJQg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 04:16:36 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 164B81BBF5E
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 01:15:25 -0800 (PST)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id CD30F3F30F
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 09:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646990123;
        bh=3MfF2oKCAD91dLAjcIPW4+1KpuK6qxbRKyhRZsrNxAc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=U3Y3JvFpIeZqWvOpyzc3vJsSPhavhMvZTu7bVt7D95yxVV2PWLgMFJ1qipGs5Pj9s
         D7000J0HvOdZQK/Uf8xMNxVDgjO/0WKrUM2rwR7K7kGVh3AcKMcEpTIKNcYuw6sLil
         7ybheFtKSxU2qAeSGEpcdlXKBzdR8r6PH40F8K2ObVmGDUrSEuAipmWwDQ51/Ylny+
         hBsrwuFvAI0sPCI1TpkVEQkm708Wly0tYhW9z0AdPppXRQKCHl2qt3rfxcYyBP40pE
         SKoUEvbbnFPSSLDee/ja/5JmwXEEibT8X7EnqFFj7P5Ry0NbFeZ1QlHvVXgoytMnj1
         nyB8Gl9PDW3+g==
Received: by mail-ej1-f72.google.com with SMTP id q22-20020a1709064cd600b006db14922f93so4619076ejt.7
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 01:15:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3MfF2oKCAD91dLAjcIPW4+1KpuK6qxbRKyhRZsrNxAc=;
        b=By7BT6eszQq/uVuvHozUN/5wMBCKzuddrKByq3Gy8xrMcJmrI5m6s94HsXohnkwjsp
         9pcQCvsIGe7gQm2YunNrq4QGqDnYWJmGgo2G+DE3MntfsAMi6KefMrb13z7l5wl5oLaz
         ueFbEBjPD0xv3xE9/sIzpeDlcHo48T7NGXK3N/dog94MLtBO2tknNPynS9RIwdL29OW6
         eo/MKOgrvYQiliBzKvwUwdLgLffzDrC/ZfybZl3cM8PP1KACTDekacA8sDl6KXedMm7W
         BdV1SgYbI1q0+6XJnTipGA0RUxqcwD43r8dotD3pxyG6QXYkirFkXHeT+aqajn8jqQB1
         B9Nw==
X-Gm-Message-State: AOAM530u7u4tph5RtvELIxdKmnNhXCLYnnBlq4aLj/geS7BbiK2pCZ7w
        2S/cXvOGLF7r4VHAw18mz9nBCPQEbF/6oVCTUYoqcThb1Pblt8Cg4cJagddSci6iJehasfsQQG9
        Mq2hIqjZKGBBlm6dZ1dR4mjAUGHjUGPQ3v+aM46Y=
X-Received: by 2002:a17:906:dc94:b0:6db:ad7b:9068 with SMTP id cs20-20020a170906dc9400b006dbad7b9068mr917617ejc.224.1646990123484;
        Fri, 11 Mar 2022 01:15:23 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyc3valO4s0TDo4cDXykhAMo8H6v3V0M4V74fs99LPFrNHprmdOLmDK1lYHTfG/oPV8ZkvWEw==
X-Received: by 2002:a17:906:dc94:b0:6db:ad7b:9068 with SMTP id cs20-20020a170906dc9400b006dbad7b9068mr917603ejc.224.1646990123277;
        Fri, 11 Mar 2022 01:15:23 -0800 (PST)
Received: from [192.168.0.148] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id y18-20020a170906471200b006da8a883b5fsm2684372ejq.54.2022.03.11.01.15.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Mar 2022 01:15:22 -0800 (PST)
Message-ID: <1f5e1e49-4ab0-5e06-fa8f-2a11b0fd1df9@canonical.com>
Date:   Fri, 11 Mar 2022 10:15:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 3/3] EDAC: nuvoton: Add NPCM memory controller driver
Content-Language: en-US
To:     Medad CChien <medadyoung@gmail.com>, rric@kernel.org,
        james.morse@arm.com, tony.luck@intel.com, mchehab@kernel.org,
        bp@alien8.de, robh+dt@kernel.org, benjaminfair@google.com,
        yuenn@google.com, venture@google.com, KWLIU@nuvoton.com,
        YSCHU@nuvoton.com, JJLIU0@nuvoton.com, KFTING@nuvoton.com,
        avifishman70@gmail.com, tmaimon77@gmail.com, tali.perry1@gmail.com,
        ctcchien@nuvoton.com
Cc:     linux-edac@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, openbmc@lists.ozlabs.org
References: <20220311014245.4612-1-ctcchien@nuvoton.com>
 <20220311014245.4612-4-ctcchien@nuvoton.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220311014245.4612-4-ctcchien@nuvoton.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/03/2022 02:42, Medad CChien wrote:
> Add support for Nuvoton NPCM SoC.
> 
> Signed-off-by: Medad CChien <ctcchien@nuvoton.com>
> ---
>  drivers/edac/Kconfig     |   9 +
>  drivers/edac/Makefile    |   1 +
>  drivers/edac/npcm_edac.c | 714 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 724 insertions(+)
>  create mode 100644 drivers/edac/npcm_edac.c
> 
> diff --git a/drivers/edac/Kconfig b/drivers/edac/Kconfig
> index 58ab63642e72..757e1d160640 100644
> --- a/drivers/edac/Kconfig
> +++ b/drivers/edac/Kconfig
> @@ -539,4 +539,13 @@ config EDAC_DMC520
>  	  Support for error detection and correction on the
>  	  SoCs with ARM DMC-520 DRAM controller.
>  
> +config EDAC_NPCM
> +	tristate "Nuvoton NPCM DDR Memory Controller"
> +	depends on ARCH_NPCM

|| COMPILE_TEST
(and test if it compiles)

(...)

> +
> +MODULE_DEVICE_TABLE(of, npcm_edac_of_match);
> +
> +static int npcm_edac_mc_probe(struct platform_device *pdev)
> +{
> +	const struct npcm_edac_platform_data *npcm_chip;
> +	struct device *dev = &pdev->dev;
> +	struct edac_mc_layer layers[1];
> +	const struct of_device_id *id;
> +	struct priv_data *priv_data;
> +	struct mem_ctl_info *mci;
> +	struct resource *res;
> +	void __iomem *reg;
> +	int ret = -ENODEV;
> +	int irq;
> +
> +	id = of_match_device(npcm_edac_of_match, &pdev->dev);
> +	if (!id)
> +		return -ENODEV;

Why do you need it? How such case is even possible?

> +
> +	npcm_chip = of_device_get_match_data(&pdev->dev);
> +	if (!npcm_chip)
> +		return -ENODEV;

I wonder, how is it possible to have here NULL?

Best regards,
Krzysztof
