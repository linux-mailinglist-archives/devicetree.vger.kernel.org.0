Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96B61551745
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 13:21:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240070AbiFTLVI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 07:21:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240545AbiFTLVI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 07:21:08 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95FD81571C
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 04:21:05 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id v1so20385039ejg.13
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 04:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=5qj9WwEmBiDMj75xuUrp2j17j/0PzVJ3mnec7QaTrNc=;
        b=jzu5CuXrZXTVRomlw+2PGsPka+E5/Hgx3R+6Evd0n54HXpHh31ksfMivBPk3mTTVwG
         fAeWkhz8NNQtGQ16KRndc9qrRrLJ8Dj1z/D1cmcdI1fjBHh2NdaS3ZinmoQ4bpUl4FMp
         p+4Udy8csnLsVOOPw+yPcRypQg+Dr+Fu43socBpzKoqcIYaM03FUieuxq3997ooYRvMc
         tlXEYibfg9MpW7wrvyf6+GGJ6F6JUorjEFBwsOTmOwSroeeqmO1Smu5R2Hs139cMoBCA
         ifUr2m78t7bMyhM12RS3hY2QFDE3F+kkJvU4b1aU5bcjjVrH8Q0s9J26myCpkn06zAm0
         n/gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5qj9WwEmBiDMj75xuUrp2j17j/0PzVJ3mnec7QaTrNc=;
        b=7TFNSDDRKLWi/6Q9P3BStpFMkjPpPmNKbxdd+cgfesssDvQvAGI+3nV2dgrv1wOEgX
         /GimPWJ8DFtr27aDJO1QbWQYcW38pqftCNUC1AKbwVmwrkz1vYhVgRjlSXUG3SXv/jBr
         PdXFzdaJbCtoMf/p3FAcMMkbzQN5jo7OtGob6PX1z/UDe0FTncRDR0udF8OYJJgHZ6RM
         NHMZlZY2XesLdZBTQB0swmybqI633t82Er4dOpU78FNq8jRwPuUEJy49xcD1clll1VDb
         +AuP35A+87SzjSHJjE3xxJRxrtHwqN+gt1iJTDykya1K2pAMnrGuEA3qJtn50LupVOcS
         GVaA==
X-Gm-Message-State: AJIora8UKTRJeg2/8bOGlsYb4enjkOcVNnKPNH/FAp74lN/bQ6vU8SxK
        BwWcmsEZ2pdhYgWPNRghcdAkLw==
X-Google-Smtp-Source: AGRyM1tKh4V3U5oMqD/ufs2hv6rz5uVPE2poxPMghohakI1qUUboUUwFXZvfeuTtNPMnrRdb/q/tBA==
X-Received: by 2002:a17:907:c202:b0:710:8d0c:6e89 with SMTP id ti2-20020a170907c20200b007108d0c6e89mr20430990ejc.141.1655724064177;
        Mon, 20 Jun 2022 04:21:04 -0700 (PDT)
Received: from [192.168.0.209] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b18-20020a17090630d200b006f3ef214da8sm5815917ejb.14.2022.06.20.04.21.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 04:21:03 -0700 (PDT)
Message-ID: <393f90de-44bd-d608-10e8-8db38e61aa67@linaro.org>
Date:   Mon, 20 Jun 2022 13:21:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] ARM: dts: am33xx: Fix MMCHS0 dma properties
Content-Language: en-US
To:     YuTong Chang <mtwget@gmail.com>, bcousson@baylibre.com
Cc:     tony@atomide.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-omap@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220620093413.4041-1-mtwget@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220620093413.4041-1-mtwget@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/06/2022 11:34, YuTong Chang wrote:
> According to technical manual(table 11-24),
> the DMA of MMCHS0 should be direct mapped.

Please wrap the commit according to Linux coding style.

https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586

> 
> Signed-off-by: YuTong Chang <mtwget@gmail.com>
> ---
>  arch/arm/boot/dts/am33xx-l4.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/am33xx-l4.dtsi b/arch/arm/boot/dts/am33xx-l4.dtsi
> index 7da42a5b959c..0446e2622d5f 100644
> --- a/arch/arm/boot/dts/am33xx-l4.dtsi
> +++ b/arch/arm/boot/dts/am33xx-l4.dtsi
> @@ -1502,8 +1502,8 @@ SYSC_OMAP2_SOFTRESET |
>  			mmc1: mmc@0 {
>  				compatible = "ti,am335-sdhci";
>  				ti,needs-special-reset;
> -				dmas = <&edma_xbar 24 0 0
> -					&edma_xbar 25 0 0>;
> +				dmas = <&edma 24 0
> +					&edma 25 0>;

This is still wrong from syntax point of view - should be two phandles,
so <edma ...>, <edma ...>

>  				dma-names = "tx", "rx";
>  				interrupts = <64>;
>  				reg = <0x0 0x1000>;


Best regards,
Krzysztof
