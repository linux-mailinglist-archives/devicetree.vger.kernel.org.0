Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B07C4D0A64
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 22:57:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245545AbiCGV6k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 16:58:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244971AbiCGV6j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 16:58:39 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C99E6DF9F
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 13:57:43 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 859473F1AF
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 21:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646690262;
        bh=NxDi+UT9lvHm2aSJIDurc6O5CK6Ez2p3jyCT14Sol58=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=hgYNgUXBaqUsT5mx21LZZb6N4NjFaQyOpqsnDQaC5lTxy9GQXuIILMtm+uSadtACP
         2qO07oY0v3VdroxX4loCKoqR17kxdEGlP6Ww2TG0DVGhyeSpVX4hWn1M8kOeb9edQe
         PniJ3THOuJttCrR03bWfdS1fJf1mB3X9nCrKfPw1xojWErhmTqUPYYarYb1KSUtd2L
         az/ZzVSctxUKKexBg48TwYjQfLFg1G45CTgbTX5AHazw08xti2Z+BHzF1yEEi+eAyb
         +ztIr8sXE8ugjWcLyVAJNiM+/9sHW9Id/GAXMi4de0vIdKnIo0DHfXCXBKZKg7xM8F
         Y1x/Y2g6bPEkA==
Received: by mail-ed1-f72.google.com with SMTP id bq19-20020a056402215300b0040f276105a4so9413845edb.2
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 13:57:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=NxDi+UT9lvHm2aSJIDurc6O5CK6Ez2p3jyCT14Sol58=;
        b=bJ1P8LQ24W4vzFPIcQP8WGgtMxdZySSFnKw2Rtq8QljeGHKJmrWiI+yU0ilf5O7iFz
         1qIP1Xq7WtmLSb2gksxtcdur9iA7HaAGDXlMXVvk2lX1zFHohfKuuq5vm5QREGqylzdM
         NwW0gMOgpXvgFEY53dsGjz/FbE0vpgfQzeFLens75++qwOUyqcgHBW1UQdlIpV6yzEJ7
         PhIJ0uZbBDCNiNBj7t5oljAYb+vqeoEdJXeRSfICub9TxfhKxMG8rwV/Nyof6JiF+QP9
         jVp8Nv5rn5WpzEu3704FDmA1z6uvHkKqPkjf9dPYdS8C03VzV9hqAOw7DBaXWmxdCX8U
         doGA==
X-Gm-Message-State: AOAM5334VE730f6tPNrp7hZFKIWp/4FhvZHvYvLWoEMZ55Q8nAigjIUH
        gAOmBXYfp7g22iNuhBQ2n0EHSVI84HApKuSf55sEwKSQ1h9FQZbzvqaRx7H7vCurgu/hSO9cKRV
        8cXyNW7rIDnz97xeh0lLtofqMs2066kogRM/z1JU=
X-Received: by 2002:a05:6402:492:b0:404:c4bf:8b7e with SMTP id k18-20020a056402049200b00404c4bf8b7emr12818671edv.318.1646690262270;
        Mon, 07 Mar 2022 13:57:42 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzim1Spkv48A25JYT7H0oFuStVw4lhQAp7LqWwICzqvsj7tcIbOfmWprDPVB25xXa6yLkPnNQ==
X-Received: by 2002:a05:6402:492:b0:404:c4bf:8b7e with SMTP id k18-20020a056402049200b00404c4bf8b7emr12818663edv.318.1646690262124;
        Mon, 07 Mar 2022 13:57:42 -0800 (PST)
Received: from [192.168.0.143] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id hz7-20020a1709072ce700b006db4bd52016sm4545ejc.144.2022.03.07.13.57.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Mar 2022 13:57:41 -0800 (PST)
Message-ID: <f686aeeb-e033-927f-89bf-fad239ad70df@canonical.com>
Date:   Mon, 7 Mar 2022 22:57:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/2] arm: dts: integrator: Update spi node properties
Content-Language: en-US
To:     Kuldeep Singh <singh.kuldeep87k@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>
References: <20220307205357.66322-1-singh.kuldeep87k@gmail.com>
 <20220307205357.66322-3-singh.kuldeep87k@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220307205357.66322-3-singh.kuldeep87k@gmail.com>
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

On 07/03/2022 21:53, Kuldeep Singh wrote:
> SPI clock name for pl022 is "sspclk" and not "spiclk".
> Fix below dtc warning:
> clock-names:0: 'spiclk' is not one of ['SSPCLK', 'sspclk']
> 
> Also, update node name to spi instead of ssp to enable spi bindings
> check.
> 
> Signed-off-by: Kuldeep Singh <singh.kuldeep87k@gmail.com>
> ---
>  arch/arm/boot/dts/integratorap-im-pd1.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/integratorap-im-pd1.dts b/arch/arm/boot/dts/integratorap-im-pd1.dts
> index d47bfb66d069..ebe938556645 100644
> --- a/arch/arm/boot/dts/integratorap-im-pd1.dts
> +++ b/arch/arm/boot/dts/integratorap-im-pd1.dts
> @@ -178,12 +178,12 @@ uart@200000 {
>  		clock-names = "uartclk", "apb_pclk";
>  	};
>  
> -	ssp@300000 {
> +	ssp0: spi@300000 {

Is the alias used anywhere? Why adding it?



Best regards,
Krzysztof
