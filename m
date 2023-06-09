Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4ECCD729F6A
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 17:58:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242009AbjFIP61 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 11:58:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242008AbjFIP60 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 11:58:26 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE6A930CD
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 08:58:21 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-976a0a1a92bso346784066b.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 08:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686326300; x=1688918300;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JTIUcKxxwzYhOws0JQfGmC6RAGAZi61ikoNQLRb3OQ0=;
        b=A5UGoQdlG3N270pU/JhmbVjSOYGvQjIHjRp3ZSWWnIANTBQQOA3+c10D/i13AB4ido
         NMZo6fbTMOBYSQWlHzkgYbXNHp+MhWza4AxBNkFHhkPBkIrS9XrjqC24Zi9i6lcD7EQw
         Qc5FzqPk956W4p2ZFNcG2GkXBpxUGBjuvspe5OFuLeGQ6OpY/YoC0j+QqPHIFx1SzBOC
         GbMlDQknFSd9PpaGexg7uTB4l9izICxtsfVSgxunY5mXvEuYtBbwvKjnB+y6Zh/2ywu2
         vNOUUNsFC0lWSXmyM02JFRWF0+Qsm8C0+JAS2nXM8W6xPU6/dwZlvucjTcdrdn81FbEO
         dr2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686326300; x=1688918300;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JTIUcKxxwzYhOws0JQfGmC6RAGAZi61ikoNQLRb3OQ0=;
        b=gXjbg6dhkHpL+9twRBYCkq0NJ7q5n9/T3jSAw6xP8CSRiMTglEtY5xYJly78DGaseg
         7ecdVdH4461TOkB1K4E+5LzOIuuIQlo0PsqrQTNh9docQ1V/+UHG3uNGgMBGB9yOwRls
         GeR44gHlCvGGohPqJuCmcZO/ENPguGnRqW/HmNBjW8+Nmug+A/hss076r8Y0JCGRAiIJ
         U5qTHkbJQdHN5iNyh/5z/+c/dwNVsshVzzrshX/rzV4nYGoMDPSMuauJLr7TbwbUq5eP
         gnNbRFocr/29lkWDz1Uip0g+i6cK7J/Bz4ZYPJc5+CPdJTLcUm3zQBLfdoyRR6Nnhsz7
         ZlpQ==
X-Gm-Message-State: AC+VfDytvrEhYL4RoxDFNnHBF1h4ADc7GZLVbpLrlhJ0WMksgZ+CPq9W
        RCU6iO8iqYaPHG9fLdjmoyU+8w==
X-Google-Smtp-Source: ACHHUZ6RHjDqkjCGZg0vTzsh+utDK4w8FReYKbqgq1a/1iTp5C525vseKC5bkxZvQUWGQmXXOxdNcg==
X-Received: by 2002:a17:907:9306:b0:974:1e85:6a69 with SMTP id bu6-20020a170907930600b009741e856a69mr2357545ejc.16.1686326300309;
        Fri, 09 Jun 2023 08:58:20 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id f8-20020a1709062c4800b0094edbe5c7ddsm1461854ejh.38.2023.06.09.08.58.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jun 2023 08:58:19 -0700 (PDT)
Message-ID: <1bf1890f-d24c-12a1-217d-27579a2464a6@linaro.org>
Date:   Fri, 9 Jun 2023 17:58:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 1/3] dt: bindings: add bindings for TQMa93xxLA SOM
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>
Cc:     Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux@ew.tq-group.com
References: <20230609132915.634338-1-alexander.stein@ew.tq-group.com>
 <20230609132915.634338-2-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230609132915.634338-2-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/06/2023 15:29, Alexander Stein wrote:
> From: Markus Niebel <Markus.Niebel@ew.tq-group.com>
> 
> TQMa93xxLA is a SOM variant in the TQ-Systems GmbH TQMa93xx series using
> NXP i.MX93 CPU on an LGA type board.
> MBa93xxCA is a starterkit base board for TQMa93xxLA on an adapter board.

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching.

It is dt-bindings, not something else.

A nit, subject: drop second/last, redundant "bindings for". The
"dt-bindings" prefix is already stating that these are bindings. One
bindings is enough.


> 
> Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  .../devicetree/bindings/arm/fsl.yaml          | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 2510eaa8906dd..8048c7f6a299d 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -1219,6 +1219,25 @@ properties:
>                - fsl,imxrt1170-evk         # i.MXRT1170 EVK Board
>            - const: fsl,imxrt1170
>  
> +      - description:
> +          TQMa93xxLA and TQMa93xxCA are two series of feature compatible SOM
> +          using NXP i.MX93 SOC in 11x11 mm package.
> +          TQMa93xxLA is designed to be soldered on different carrier boards.
> +          TQMa93xxCA is a compatible variant using board to board connectors.
> +          All SOM and CPU variants use the same device tree hence only one
> +          compatible is needed. Bootloader disables all features not present
> +          in the assembled SOC.
> +          MBa93xxCA mainboard can be used as starterkit for the SOM
> +          soldered on an adapter board or for the connector variant
> +          MBa93xxLA mainboard is a single board computer using the solderable
> +          SOM variant
> +        items:
> +          - enum:
> +              - tq,imx93-tqma9352-mba93xxca # TQ-Systems GmbH i.MX93 TQMa93xxCA/LA SOM on MBa93xxCA
> +              - tq,imx93-tqma9352-mba93xxla # TQ-Systems GmbH i.MX93 TQMa93xxLA SOM on MBa93xxLA SBC

xx sound like wildcard which you should not use. If you open the product
page, it also suggests that.

Best regards,
Krzysztof

