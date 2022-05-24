Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 560625328C8
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 13:21:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232807AbiEXLUo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 07:20:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232649AbiEXLUn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 07:20:43 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57F9A32068
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 04:20:39 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id c19so17186004lfv.5
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 04:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=pfeVpoO6d3zGJ9Mg6uF1muqpzWpAIoeQwzx1MKgqvvs=;
        b=o7Boe6PLSlkKB0FzHUV3xcxXiyuXGV5zxXjhe0WAxOqhDX48nU3Pq46NDqzyadPlec
         SGEZu0EHrAjTJZs9km67pRu+IEylS1tadQH7zS4QReVkCj771DO96mgWTICUERy9coRt
         PTsIwdaKOBcaSZ6rRPCgLaUlqEx8ZVSK97hRPazYngjApLDaV1Qfi0Y1IuD7dfP/GQw3
         lu/nMS4KlWONS02nL3UA0qrBI8Fxmo0BNkGouDMEvZsU3Q8Jcv7amEXublIwyIspAI5F
         q7PP4b7I/s4Zs5oJGQyuiYjihzKQt02VcsXEuhOIrrnt5qIp/BUzqkqn2bus99yqSdSV
         +HWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pfeVpoO6d3zGJ9Mg6uF1muqpzWpAIoeQwzx1MKgqvvs=;
        b=SrgmbJf+VlByPoqTwoKGT5s/reYV0tQQRdWF5MiZaZigbsTNEBDaLL2TrRW9ocuKFx
         JxyNENV/4t9m4KmC6lI8EUISigvGrWSPi57+Usixd+jP7NYRp12RDvSm6ZV4Y8cBGyQs
         pk+cmQHFAD7hPt2/H0nDnNwMieJeF7vrdnZkNI9hfkf2SmAaOyzpMfEIUcPLaMnziPKl
         s3ld252j3jaq+9fb42SBcDTHbcF48Nz6YuzvC9Qn2WJ5IuPZQzmG628Hwu09+DXCK3Ty
         o+GIv4mFBZdIWUNC9H5qAhEHx2Zpeni0BNGBs//85cMpoqwUC1HWTdAuOUgBmY4hmQjF
         p/eQ==
X-Gm-Message-State: AOAM531XUAG9tjsSWeWrA9YbyEfcyRi8fjjj4CxXnGCz7wg/7WeqP27R
        5nMkwPKt3qHVHls664pPENPMaw==
X-Google-Smtp-Source: ABdhPJyqO+b3V/rE7Z80nqQfBLnq60d0vZp1mF9Yige3wJc6xOb83SLRvJZKsOO/KH1VRgHiKIRntA==
X-Received: by 2002:a05:6512:1588:b0:477:a556:4ab2 with SMTP id bp8-20020a056512158800b00477a5564ab2mr19228089lfb.376.1653391237736;
        Tue, 24 May 2022 04:20:37 -0700 (PDT)
Received: from [172.20.68.48] ([91.221.145.6])
        by smtp.gmail.com with ESMTPSA id o10-20020ac2434a000000b0047255d211b4sm2478942lfl.227.2022.05.24.04.20.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 May 2022 04:20:37 -0700 (PDT)
Message-ID: <1c995c0d-e972-4753-42bc-c2c7cda2d9b6@linaro.org>
Date:   Tue, 24 May 2022 13:20:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 6/7] arm64: dts: imx93: add src node
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sboyd@kernel.org,
        mturquette@baylibre.com, shawnguo@kernel.org,
        s.hauer@pengutronix.de
Cc:     aisheng.dong@nxp.com, l.stach@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
References: <20220523113029.842753-1-peng.fan@oss.nxp.com>
 <20220523113029.842753-7-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220523113029.842753-7-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/05/2022 13:30, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add i.MX93 SRC node
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx93.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
> index f83a07c7c9b1..85686b684966 100644
> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> @@ -7,6 +7,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/power/imx93-power.h>
>  
>  #include "imx93-pinfunc.h"
>  
> @@ -161,6 +162,23 @@ clk: clock-controller@44450000 {
>  				status = "okay";
>  			};
>  
> +			src: src@44460000 {

Generic node names, please.



Best regards,
Krzysztof
