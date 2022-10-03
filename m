Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23EA35F3089
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 14:55:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229524AbiJCMzS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 08:55:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229680AbiJCMzR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 08:55:17 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 825CF12A9F
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 05:55:16 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 10so16471118lfy.5
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 05:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=tXMpgtK+el5npkc3dxBkxSHklyKWpK7OszYfJYMeV7M=;
        b=EgAvwu/AS1Bl7hcBpXHTB43HrozqHnzLNjGMVfUmnLlc4OmQt767lnL/ZfiCnzcsYZ
         E64Bc3WpAfwRMSUlScFnNMJUodQ40vKbuDQmUffusuOWqu3mmz0HkdZIDbPdTHyb+cWH
         Js6Mc6SxgvXqay/NV0lTXpwL1nQF9VbBjLKpdob89GRa14wXZPBSrO6rKM00jdV5U12a
         Hgt2y823LAvgVGYONoCd7pbZg1/4UMKnczrJwSIj0RUj9dWQ3oeAwt1a7UHrPFrYHhi4
         uu7YfGHJFMCWceogAVMSPhMMipdd3g66bB1Ck+fgXQJt6YokkO5P4T5qx7GkpJ1Gq+5e
         bb3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=tXMpgtK+el5npkc3dxBkxSHklyKWpK7OszYfJYMeV7M=;
        b=0AGDKKXgQynTs3Vmg6hvaWt061JLnoagdxjItGfnKNLTpOpaoyXg3TwhizI0EtZrE6
         ecQd5UuBilH2+6G1mv9r3WDlDtKv7O6A0sVkt/EqtqT1XWkt/l6nBn45YnNQNeJ7W2RA
         3qaQ9ZhytXkEBOHdue5CEnnNt+XLVtPjhcSM6kC2K5CUTiMtQoDRdf9ifKuVKAr8uOM6
         nszqwdzGN/jYDU4cKrgUrYSHn5UcZc1RDP9oMp+eefCURXVfYGoQTQ5Lx+R0iOCHbhMz
         xIxd/gR0H3Zxiu13kYQ5io9GaajpSzSiBvUsgm8Qos8D0/q4JplnX4Ft9xlglyoqcs4j
         DiWg==
X-Gm-Message-State: ACrzQf2bf5m7hHujV0XHyxst4QnWGZZCcEn/BB3m1/obOZqbPvj40Iye
        05jKTiF3/4FBHIT54dhkPv1m5g==
X-Google-Smtp-Source: AMsMyM40FMKIsxVr/71GXAry/xcu/mjQIbyPqXGeRPqsYxpTyXAYDjSk3KWxpY787/NidEssBTy26A==
X-Received: by 2002:a05:6512:3f97:b0:4a1:f6b9:5198 with SMTP id x23-20020a0565123f9700b004a1f6b95198mr7027058lfa.588.1664801714887;
        Mon, 03 Oct 2022 05:55:14 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u22-20020ac243d6000000b0048b064707ebsm1455287lfl.103.2022.10.03.05.55.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 05:55:14 -0700 (PDT)
Message-ID: <99df1b7e-9130-3d99-b2a2-2b5afa283c73@linaro.org>
Date:   Mon, 3 Oct 2022 14:55:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 2/3] dt-bindings: arm: fsl: Enumerate Debix Model A Board
Content-Language: en-US
To:     Daniel Scally <dan.scally@ideasonboard.com>,
        Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Li Yang <leoyang.li@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        laurent.pinchart@ideasonboard.com, kieran.bingham@ideasonboard.com,
        debix-tech@polyhex.net
References: <20221003083705.22495-1-dan.scally@ideasonboard.com>
 <20221003083705.22495-3-dan.scally@ideasonboard.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221003083705.22495-3-dan.scally@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/10/2022 10:37, Daniel Scally wrote:
> Add an entry to the list of imx8mp boards denoting the Debix Model A
> board from Polyhex Technology Co.
> 
> Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index ef524378d449..0be82122ef05 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -916,6 +916,7 @@ properties:
>            - enum:
>                - fsl,imx8mp-evk            # i.MX8MP EVK Board
>                - gateworks,imx8mp-gw74xx   # i.MX8MP Gateworks Board
> +              - polyhex,imx8mp-debix-modela2gb # Polyhex Debix Model A (2GB) Board

Which change suggested by Laurent:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

