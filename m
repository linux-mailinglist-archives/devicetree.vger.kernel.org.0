Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC3C5554BF8
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 15:59:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357806AbiFVN7m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 09:59:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357823AbiFVN7j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 09:59:39 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2D47369CB
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 06:59:38 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id e5so9313606wma.0
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 06:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=rgShRJivO4UMKzZNwUBBdbMf56nKuY7ZTw4GVEPqWWo=;
        b=KqJrq9ypSh1dbT9Oa+IFZtMXfv1SYDVLnzYpkbAgL1WVV3PU33kqwxijF88vwLR+f/
         t5bkIxJk7mWabTROKt8Mj6KA4ZY2RcdiF85fufzCJhrgRwG4i6c4fC1WAU1vmK4uTi/a
         tg1hzi+L4uoCP7MPRSsQAOLGAEnB6kZCwS5p9C5vOxjUZwdO/yAyTX23DcTwe6OUkuA2
         bTIQ/87wvkwzH4pl06crXqBJekxRDV6gpVJw3TlHwCz1TZOZWLWbxFlJQCgb6he1r43C
         RODywhH9i6/9ToaTZ7G99+b6RDt/4b4YFeNI9oTgCZWbSmjsEoh9lSdQXDb08CrJYqQs
         Nvzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=rgShRJivO4UMKzZNwUBBdbMf56nKuY7ZTw4GVEPqWWo=;
        b=4181d6jFY9KFIeCYvbGl75xTUszm1c4g9eEtzczA5YRtE+bEADuga/KF1DrTPPdX+J
         yIZtHB0a3XkARUKwqTant3EBWDABVRi0aUCutKq8fA/6uxIwqJfzbFDJmk0tJMsVqHst
         lGcqe26x0gUFpK2UJpbziBq3iSoYnrLb1V7XZ80KLZxZg1sBr0sxDu2FQOCFMI5aoPot
         vNV7CFmMfBBVq8A16c/lis68fgznmeORR3OTz/vsOWflXmp9fkEMSw9wOfiHP8UPFLpm
         xDs1DwjWwH0G+DBMiEq8vd43YJo3eqZ8ZUyQWUEFGD/EbxfnfcVLc+T1B3CKQQ+RFOWj
         dVfQ==
X-Gm-Message-State: AJIora+6DuhbobkoU240vUoh5ZZqzrQ6iUIyzC6KpMQXtrUOw+N6VH4G
        +feKuVE5X9n0MCKpSEJDB0g6FRrL1o4nnw==
X-Google-Smtp-Source: AGRyM1thHabiQMSEyMIUIXQr2qmcNEztyWkzcPRGBPdm082077d95CXBAPkAm+WXhdCkggmGKkSIYQ==
X-Received: by 2002:a05:600c:4f95:b0:39c:7bd0:d47d with SMTP id n21-20020a05600c4f9500b0039c7bd0d47dmr4014480wmq.17.1655906377172;
        Wed, 22 Jun 2022 06:59:37 -0700 (PDT)
Received: from [192.168.0.16] ([37.223.148.38])
        by smtp.gmail.com with ESMTPSA id l8-20020a1ced08000000b0039744bd664esm25322274wmh.13.2022.06.22.06.59.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jun 2022 06:59:36 -0700 (PDT)
Message-ID: <b31c1d67-6295-eaa7-f161-8d439ea1a2b9@gmail.com>
Date:   Wed, 22 Jun 2022 15:59:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] arm64: dts: mediatek: Replace 'enable-sdio-wakeup'
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, Fabio Estevam <festevam@denx.de>
References: <20220621124435.121740-1-festevam@gmail.com>
From:   Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <20220621124435.121740-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 21/06/2022 14:44, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> As explained in Documentation/devicetree/bindings/mmc/mmc-controller.yaml,
> the 'enable-sdio-wakeup' property is considered deprecated.
> 
> Replace it with the 'wakeup-source' property instead.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!

> ---
>   arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi    | 2 +-
>   arch/arm64/boot/dts/mediatek/mt8183-evb.dts     | 2 +-
>   arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi  | 2 +-
>   arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts | 2 +-
>   4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> index 923c1c3477e5..e21feb85d822 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> @@ -410,7 +410,7 @@ &mmc3 {
>   	sd-uhs-sdr50;
>   	sd-uhs-sdr104;
>   	keep-power-in-suspend;
> -	enable-sdio-wakeup;
> +	wakeup-source;
>   	cap-sdio-irq;
>   	vmmc-supply = <&sdio_fixed_3v3>;
>   	vqmmc-supply = <&mt6397_vgp3_reg>;
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> index 7ac9864db9de..52dc4a50e34d 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> @@ -134,7 +134,7 @@ &mmc1 {
>   	vmmc-supply = <&mt6358_vmch_reg>;
>   	vqmmc-supply = <&mt6358_vmc_reg>;
>   	keep-power-in-suspend;
> -	enable-sdio-wakeup;
> +	wakeup-source;
>   	non-removable;
>   };
>   
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> index b50261e8b9ed..89e4358f140a 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> @@ -382,7 +382,7 @@ &mmc1 {
>   	sd-uhs-sdr50;
>   	sd-uhs-sdr104;
>   	keep-power-in-suspend;
> -	enable-sdio-wakeup;
> +	wakeup-source;
>   	cap-sdio-irq;
>   	non-removable;
>   	no-mmc;
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts b/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
> index afeb5cd37826..530e0c9ce0c9 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
> @@ -159,7 +159,7 @@ &mmc1 {
>   	vmmc-supply = <&mt6358_vmch_reg>;
>   	vqmmc-supply = <&mt6358_vmc_reg>;
>   	keep-power-in-suspend;
> -	enable-sdio-wakeup;
> +	wakeup-source;
>   	non-removable;
>   };
>   
