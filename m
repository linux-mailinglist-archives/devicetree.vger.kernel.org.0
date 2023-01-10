Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6AF2663D1D
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 10:41:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231517AbjAJJlg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 04:41:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238312AbjAJJlQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 04:41:16 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 238B150E50
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:41:12 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id m26-20020a05600c3b1a00b003d9811fcaafso9352310wms.5
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:41:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V4Npvw/YNF/fGdGdG0PZetHAABA0Hr0WoFSfIB3VFIQ=;
        b=So81QApOUaUrXpUyLHT7GTEMd+xd5kpS+Y1+b5ypopf97XOeIRxaNDMF3GLA6eGcmr
         puEK2igxL9Uf4a5hvBPu1osfJXJnctb/5yX3b05zbBpC7Dhq+WlKTSuBq9GGtIKnpcMg
         3+0ru7I+Y8XHZ4nYXtXY7i/qArBxUTA2f6yMJJTHG46qBSFSEa97932VP4GrNS1TFwOz
         2EdNSmU/zi9jIBrUJ8bu1IgXETmKigfKSFLLpShoKhVeRikefqLP75dsABkrASHD6RIJ
         m1jLSgf3Sy9SH8uQY3fLoowxnf0p7BFJZMrhWf3sVEQVRIvEZTFKgntHlsq/cVO+wRfU
         YJeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V4Npvw/YNF/fGdGdG0PZetHAABA0Hr0WoFSfIB3VFIQ=;
        b=d3XUxmhjvUiZAVjd2zPFSX71F8N6/AmNcc0ADIkU06C8XOCkqhqre1+uhw1H8lTzhd
         AkDXauCLze4kFPc3FUBroLjSEUqFI6RP2hXtjWhayUrSiztwGHVBQYZALDTXFJFw3wwV
         q3F88oeiUm026o1iNgbeXhVKVppkYe9UmgrU/nIj4Qj1VEUl99sTS0v3c5Lqlam8cvKO
         ZEheX8ssD/a9r1TqTV33PqQhGMkPeetBI8+X8z9RiFkxko8Vp/0wkf0RqPzdpJG7Q2lL
         hZwoBaxoc92ZmEwHhBia+uRg3wpfVDI2Lr3w+Xx05h5FA7MBeRsmqn0PCiQYuqi4RssT
         7qyw==
X-Gm-Message-State: AFqh2kr1k0qm5LIKUEYmv0GQbp4hPMIvLKqdWNY3fSk5hwZES6nbCvBf
        omtolNuI3RzWyQQZ51HfErrRBQ==
X-Google-Smtp-Source: AMrXdXvVxdjyE1vb/yAapXzgat9ivQHZ1Kzp03jdhiMa4B4o3P9jn8hKjRVHqOQ68Lb8T4TaheFzHQ==
X-Received: by 2002:a05:600c:4b1b:b0:3d2:1d51:2477 with SMTP id i27-20020a05600c4b1b00b003d21d512477mr59221043wmp.11.1673343670743;
        Tue, 10 Jan 2023 01:41:10 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id f15-20020a7bcd0f000000b003d9a71ee54dsm13861073wmj.36.2023.01.10.01.41.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 01:41:10 -0800 (PST)
Message-ID: <5fc3f063-a99e-8858-8e16-92ac5e7cffe5@linaro.org>
Date:   Tue, 10 Jan 2023 10:41:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/3][v5] arm64: dts: imx8mm-evk: move PMIC setup of A53
Content-Language: en-US
To:     Johannes Schneider <johannes.schneider@leica-geosystems.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        linux-arm-kernel@lists.infradead.org
References: <20230110092830.3282561-1-johannes.schneider@leica-geosystems.com>
 <20230110092830.3282561-2-johannes.schneider@leica-geosystems.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230110092830.3282561-2-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/01/2023 10:28, Johannes Schneider wrote:
> moving the common pmic configuration for rev-a EVKs out of the common

Still not a sentence. Still not imperative mode.
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> imx8mm-evk.dtsi to accommondate devicetrees for the rev-b, which come

typo: accommodate


> with a different PMIC
> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  .../boot/dts/freescale/imx8mm-ddr4-evk.dts    |   1 +
>  .../dts/freescale/imx8mm-evk-rohm-pmic.dtsi   | 136 ++++++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts  |   1 +
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 128 -----------------
>  4 files changed, 138 insertions(+), 128 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-evk-rohm-pmic.dtsi
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
> index 6c079c0a3a48..f39182ce65b4 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
> @@ -6,6 +6,7 @@
>  /dts-v1/;
>  
>  #include "imx8mm-evk.dtsi"
> +#include "imx8mm-evk-rohm-pmic.dtsi"
>  
>  / {
>  	model = "FSL i.MX8MM DDR4 EVK with CYW43455 WIFI/BT board";
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk-rohm-pmic.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk-rohm-pmic.dtsi
> new file mode 100644
> index 000000000000..10d7adcb9b91
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk-rohm-pmic.dtsi
> @@ -0,0 +1,136 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2020 NXP
> + */
> +
> +/dts-v1/;
> +
> +&A53_0 {

I don't think this is related to PMIC and should not be placed in PMIC DTSI.

> +};
> +
> +&A53_1 {
> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&A53_2 {
> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&A53_3 {
> +	cpu-supply = <&buck2_reg>;
> +};

Best regards,
Krzysztof

