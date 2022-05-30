Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52365538798
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 20:56:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238240AbiE3S4p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 14:56:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238094AbiE3S4n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 14:56:43 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DE82B87D
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 11:56:42 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id f9so22561374ejc.0
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 11:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8PvpuRtNQ2TDyezDKQDzcZXcUzER0Cn4J5RxlWOFhoU=;
        b=AJLeWkV67LLABFmHZSs6AsG9a3hRqHkLZRhbGBkdJIOQ9Uult/mmPSOFT6yVt/NAYg
         QVU1ESZaOzn3Tt3Ad92v+sP80C/BGxM1uKo7vtHwA93PFc3n/HhLxcAm2uh8qnbzi1bT
         wXawUfuhD5A243jNH4fJ/lhBjqLt6WDbvo1mDCgtl4Z8l7LSNRT21AccQHPFwqqp+9Uq
         M1STL2BfxVWD+ju2wvPzn1+12u2gij1EeHu+KKdAEwVow3mHOG83D19y/ByqYNNN929g
         4a7egH+zNfmzFLPZCFUY/R+5CJllf5Fy1zqXPJVGWOdWBJiiyyJ3zfySVrYr4mE91MSH
         gdcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8PvpuRtNQ2TDyezDKQDzcZXcUzER0Cn4J5RxlWOFhoU=;
        b=4IAsl/Rtx6Rq6tjDsxFRbZguuXMYWw+widXnKJkTVB7OIPiA2qBOgYXet0EEOM0gRf
         3ddFFFAH7dfo9nEg3MOhYeCOFbb4+zXzg2Olqafj/iEFInYAxSPAMf/MaPXtxofYqzqs
         KlOC9cCWyEqwThMvTtFxQGGoUx7R9DNfWLQ3GUljuqWM0oO1qi6VWwaQZ+ahUav6Cvqw
         GdTPL1iK34QFyF0tY5FUbm+gMBii9ZggAFzurtrsMtKRsij8i1lPs+8zrGthtImBFXVz
         tRDcAbYfmPO55vQqfa4jmjn60IWRzlDx05lVJG5riIUqAFWRH7VyNGAe/85w5WZ6GyoS
         ZbdQ==
X-Gm-Message-State: AOAM5302t/CSlse2q3klckJLRKBU1WbJMOHAGEMzCltobTxzpPQuoyYG
        iL/20uaHF7qs0Z2ByvrD1K9wXQ==
X-Google-Smtp-Source: ABdhPJx0OVZnSWRgH43P7HsZRuVW2na9IFriAp3lQwX81syBAUiqtfjc+gcEnVPI0CB7SuKsSc2s7A==
X-Received: by 2002:a17:906:d552:b0:6f8:6136:d0a0 with SMTP id cr18-20020a170906d55200b006f86136d0a0mr50745960ejc.366.1653937000919;
        Mon, 30 May 2022 11:56:40 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jw9-20020a170906e94900b006fea3702e56sm4287753ejb.79.2022.05.30.11.56.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 May 2022 11:56:40 -0700 (PDT)
Message-ID: <f789afb2-33c5-2b28-5ade-0c76ebb7206f@linaro.org>
Date:   Mon, 30 May 2022 20:56:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 2/3] dts: socfpga: Add Google Chameleon v3 devicetree
Content-Language: en-US
To:     =?UTF-8?Q?Pawe=c5=82_Anikiel?= <pan@semihalf.com>, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     arnd@arndb.de, olof@lixom.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dinguyen@kernel.org,
        Alexandru M Stan <amstan@chromium.org>
References: <20220530130839.120710-1-pan@semihalf.com>
 <20220530130839.120710-3-pan@semihalf.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220530130839.120710-3-pan@semihalf.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/05/2022 15:08, Paweł Anikiel wrote:
> Add devicetree for the Google Chameleon v3 board.
> 
> Signed-off-by: Paweł Anikiel <pan@semihalf.com>
> Signed-off-by: Alexandru M Stan <amstan@chromium.org>

Your SoB chain looks odd. Who did what here?

> ---
>  arch/arm/boot/dts/Makefile                    |  1 +
>  .../boot/dts/socfpga_arria10_chameleonv3.dts  | 90 +++++++++++++++++++
>  2 files changed, 91 insertions(+)
>  create mode 100644 arch/arm/boot/dts/socfpga_arria10_chameleonv3.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 023c8b4ba45c..9417106d3289 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1146,6 +1146,7 @@ dtb-$(CONFIG_ARCH_S5PV210) += \
>  	s5pv210-torbreck.dtb
>  dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += \
>  	socfpga_arria5_socdk.dtb \
> +	socfpga_arria10_chameleonv3.dtb \
>  	socfpga_arria10_socdk_nand.dtb \
>  	socfpga_arria10_socdk_qspi.dtb \
>  	socfpga_arria10_socdk_sdmmc.dtb \
> diff --git a/arch/arm/boot/dts/socfpga_arria10_chameleonv3.dts b/arch/arm/boot/dts/socfpga_arria10_chameleonv3.dts
> new file mode 100644
> index 000000000000..988cc445438e
> --- /dev/null
> +++ b/arch/arm/boot/dts/socfpga_arria10_chameleonv3.dts
> @@ -0,0 +1,90 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2022 Google LLC
> + */
> +/dts-v1/;
> +#include "socfpga_arria10_mercury_aa1.dtsi"
> +
> +/ {
> +	model = "Google Chameleon V3";
> +	compatible = "google,chameleon-v3",

You miss here enclustra compatible.

> +		     "altr,socfpga-arria10", "altr,socfpga";
> +
> +	aliases {
> +		serial0 = &uart0;
> +		i2c0 = &i2c0;
> +		i2c1 = &i2c1;
> +	};
> +};
> +
> +&gmac0 {
> +	status = "okay";
> +};
> +
> +&gpio0 {
> +	status = "okay";
> +};
> +
> +&gpio1 {
> +	status = "okay";
> +};
> +
> +&gpio2 {
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	ssm2603: ssm2603@1a {

Generic node names.

> +		compatible = "adi,ssm2603";
> +		reg = <0x1a>;
> +	};
> +};
> +
> +&i2c1 {
> +	status = "okay";
> +
> +	u80: u80@21 {
> +		compatible = "nxp,pca9535";

Generic node names.



Best regards,
Krzysztof
