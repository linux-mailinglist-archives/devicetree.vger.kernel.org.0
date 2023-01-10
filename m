Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF8AC663C02
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 10:00:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238074AbjAJJAF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 04:00:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238429AbjAJI7Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 03:59:25 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39FEE4ECB6
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 00:57:13 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id m8-20020a05600c3b0800b003d96f801c48so11228087wms.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 00:57:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dafl/deJCzx5RjMZoUwgp56VnVLPGPUPjXDySFGEBG8=;
        b=kEadu5X2iHXzkwAmuA6H8ILjVus6M3QYMUlEKG9vfQH3MVNze3gGTBw8P080zVLq5E
         WOYnLWBLSUz09V/z8F/B1qzjicwGjKCw39YPzMSafFtYVLxgGWjZzf9aVSr5g46uxgNm
         GaB+8aZSAw07LnXTVqK8JjmKVFou2RgZT1l7s7/Y1dhXganU6CaUbiRtSHoojqkgg869
         DCi++C2y3luP02P9ThfSry/2SG3C7u7guqlk3xQYwAubW8ma/IzyfR48AEhh0WEQ6HrV
         pX62ZwggCVEO/FonMtf2RGu0dCgn48weJ5qci742jfbOQ2OjTChwkQNOF1vma3aGRFN0
         Qdcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dafl/deJCzx5RjMZoUwgp56VnVLPGPUPjXDySFGEBG8=;
        b=HoDXvvX4bLx890cyDN2Y8bpMkPaxPAWx1TNIzVyX5ii0oJojL7bjrr8ZYWHAWHUl++
         rs3/R/AGl0/IqXlPWEifiRWbvIppjyGc125e2S4ilYLSeVWPLR9jg9ETkbzRJu+U/Psc
         nVx01kcWJoU6pBBDIp0wz7n0ooHwi3hXUOfa0MaUH3BhJZxr4BGsd2Sy+WYebWUowWXE
         k65Hm4meFc4TIhNldqf0mplRhZqTk3wtGJjtXrglxCq06LNlejePVM1I1Ylip5oU7UE/
         ekNbwq5p2VBa7jf/+83L2qa/Mr0vCMTBx35qKnl0R368Obkn1YGN5S7xZbJO5ApSursj
         C+8Q==
X-Gm-Message-State: AFqh2kp6HLnC8J4Wre5E/goNaKbXsyffChrl3me/yewQv59/BCInYm+J
        qlCKx/A0IdxqaeRg6GetFuCzouQDp4q8VIbp
X-Google-Smtp-Source: AMrXdXsAAylUfwec0PEMp9vQb5e5UUMOvw7vnIL3u9KMeUMtVdapqfVn8QYVBdc+Dz0e7jwE+vlz9w==
X-Received: by 2002:a05:600c:22ca:b0:3d1:ebdf:d586 with SMTP id 10-20020a05600c22ca00b003d1ebdfd586mr48484793wmg.29.1673341031787;
        Tue, 10 Jan 2023 00:57:11 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id hg9-20020a05600c538900b003cfa622a18asm18356064wmb.3.2023.01.10.00.57.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 00:57:11 -0800 (PST)
Message-ID: <7481916b-8985-c2f1-2b83-1fe3e4b9da88@linaro.org>
Date:   Tue, 10 Jan 2023 09:57:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 2/2][v4] arm64: dts: imx8mm-evk: add revision-B EVK
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
References: <20230110043257.3637516-2-johannes.schneider@leica-geosystems.com>
 <20230110043257.3637516-3-johannes.schneider@leica-geosystems.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230110043257.3637516-3-johannes.schneider@leica-geosystems.com>
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

On 10/01/2023 05:32, Johannes Schneider wrote:
> the current EVKB come with LPDDR4, and a different PMIC

Same comments. Also drop coma before "and". come->comes. I actually have
trouble understanding this "Current EVKB". Can there be outdated or
future EVKB?

> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  .../devicetree/bindings/arm/fsl.yaml          |   1 +
>  arch/arm64/boot/dts/freescale/imx8mm-evkb.dts | 132 ++++++++++++++++++

And how do you build it? Missing makefile, missing testing.


>  2 files changed, 133 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-evkb.dts
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index fbfc4f99c01e..9c3a02c19847 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml

Bindings are separate patches.

> @@ -818,6 +818,7 @@ properties:
>                - emtrion,emcon-mx8mm-avari # emCON-MX8MM SoM on Avari Base
>                - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
>                - fsl,imx8mm-evk            # i.MX8MM EVK Board
> +              - fsl,imx8mm-evkb           # i.MX8MM EVK Board, rev-B
>                - gateworks,imx8mm-gw7904
>                - gw,imx8mm-gw71xx-0x       # i.MX8MM Gateworks Development Kit
>                - gw,imx8mm-gw72xx-0x       # i.MX8MM Gateworks Development Kit
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts b/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts
> new file mode 100644


Best regards,
Krzysztof

