Return-Path: <devicetree+bounces-521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F3B7A1CE5
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 12:59:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D569F1C20BD9
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 10:59:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C070A101C6;
	Fri, 15 Sep 2023 10:59:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1366101C4
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 10:59:04 +0000 (UTC)
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D521189
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 03:59:02 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-31c93d2a24fso1802458f8f.2
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 03:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694775541; x=1695380341; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wf72la5+bcMBFPdA+88aR9f8aQTdpx1+WsSYyWg7+v8=;
        b=ySuutNl6M93soMU/L4YDbj48/Bpl7C+JtXplmX7R96oNEB5WqzxKXMDDgJfXDVb28t
         Bipf+YgZkU89dwKYG4SWpRMdTwEZ2vBJK8+8ifC695mii5J5tUl29gHI7ALsvwgjo6Jk
         b5v+8+0rLnyT6o5H9liOrJ014EmHc2yhsYSmKk+gqyqU2z6Mw5k5QF9YvCdkC22lEs1w
         Rcgqfyw/g0GxQfe0W2j/iAGJ4QDrpxhSkdxi+PtAeJCD8OnhJUSOFidmB8JASkTgk/qB
         XizmohXK2AndcH4gnZIOVt2qf9i2WXIWDToNqt7yYJmkpVaKq7HFufpJlboLymhnKu8r
         6/dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694775541; x=1695380341;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wf72la5+bcMBFPdA+88aR9f8aQTdpx1+WsSYyWg7+v8=;
        b=jJcOuzXFqhU804wthNk587jjLxSUqypu/uzQHPXg8D0XtjlAnDQENSiyXJdsiTKVsz
         PYBjSy9jVi8TwLTMxafinS9OkAfMsNSoyp29YeC6Y1zzEFbsHyALNOSzE53gXXzEW92A
         X35LC6gFsQnEhbOx2Q6rSVZjWUKiTptVPCDsgnDmz6Coruj35FgsVUb4G1pzctcO8M6R
         9fJoItmlAY2LcYtuNCZnxlW3vqA7bFBevkxNQ4wIe/QzqSNp0KsLeyIKYm1JusDHhi4t
         HO/XuFVIUdsSwcsEBLhNdHmQrYKvJOfBKOnMPh8gntSNietus0NrjNx7SNlt620rZK/3
         CWPg==
X-Gm-Message-State: AOJu0Yw3dp52A4goYZRRFnxt1O4EiAR0RxaSRJf++R/JSpWwece34J0d
	4zocQDtvApc80sxs5VYp28m6hg==
X-Google-Smtp-Source: AGHT+IHm0IGFQ81Va3RaTvUkwmq9XQKr0Xm1moZRjupa18qRWWiI0EVF5ZJmBMXILtUsSs7tL+fCFA==
X-Received: by 2002:a5d:6b90:0:b0:314:3ad6:2327 with SMTP id n16-20020a5d6b90000000b003143ad62327mr1059459wrx.12.1694775540704;
        Fri, 15 Sep 2023 03:59:00 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id w4-20020a5d6804000000b003197efd1e7bsm4173674wru.114.2023.09.15.03.58.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 03:59:00 -0700 (PDT)
Message-ID: <78167fd2-b4a0-6081-b994-101bbc8facc2@linaro.org>
Date: Fri, 15 Sep 2023 12:58:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v4 23/42] dt-bindings: dma: Add Cirrus EP93xx
Content-Language: en-US
To: nikita.shubin@maquefel.me, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
References: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
 <20230915-ep93xx-v4-23-a1d779dcec10@maquefel.me>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915-ep93xx-v4-23-a1d779dcec10@maquefel.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 10:11, Nikita Shubin via B4 Relay wrote:
> From: Nikita Shubin <nikita.shubin@maquefel.me>
> 
> Add YAML bindings for ep93xx SoC DMA.
> 
> Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
> ---
>  .../bindings/dma/cirrus,ep9301-dma-m2m.yaml        |  69 ++++++++++++
>  .../bindings/dma/cirrus,ep9301-dma-m2p.yaml        | 121 +++++++++++++++++++++
>  include/dt-bindings/dma/cirrus,ep93xx-dma.h        |  26 +++++
>  include/linux/platform_data/dma-ep93xx.h           |  21 +---
>  4 files changed, 217 insertions(+), 20 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/dma/cirrus,ep9301-dma-m2m.yaml b/Documentation/devicetree/bindings/dma/cirrus,ep9301-dma-m2m.yaml
> new file mode 100644
> index 000000000000..80a4352bf8aa
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/dma/cirrus,ep9301-dma-m2m.yaml
> @@ -0,0 +1,69 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/dma/cirrus,ep9301-dma-m2m.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cirrus Logick ep93xx SoC DMA controller
> +
> +maintainers:
> +  - Alexander Sverdlin <alexander.sverdlin@gmail.com>
> +  - Nikita Shubin <nikita.shubin@maquefel.me>
> +

Missing $ref to dma-controller.yaml

> +properties:
> +  compatible:
> +    oneOf:
> +      - const: cirrus,ep9301-dma-m2m
> +      - items:
> +          - enum:
> +              - cirrus,ep9302-dma-m2m
> +              - cirrus,ep9307-dma-m2m
> +              - cirrus,ep9312-dma-m2m
> +              - cirrus,ep9315-dma-m2m
> +          - const: cirrus,ep9301-dma-m2m
> +
> +  reg:
> +    items:
> +      - description: m2m0 channel registers
> +      - description: m2m1 channel registers
> +
> +  clocks:
> +    items:
> +      - description: m2m0 channel gate clock
> +      - description: m2m1 channel gate clock
> +
> +  clock-names:
> +    items:
> +      - const: m2m0
> +      - const: m2m1
> +
> +  interrupts:
> +    items:
> +      - description: m2m0 channel interrupt
> +      - description: m2m1 channel interrupt
> +
> +  '#dma-cells': true

Rather:
const: 1

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/cirrus,ep9301-clk.h>
> +    dma-controller@80000100 {
> +        compatible = "cirrus,ep9301-dma-m2m";
> +        reg = <0x80000100 0x0040>,
> +              <0x80000140 0x0040>;
> +        clocks = <&eclk EP93XX_CLK_M2M0>,
> +                 <&eclk EP93XX_CLK_M2M1>;
> +        clock-names = "m2m0", "m2m1";
> +        interrupt-parent = <&vic0>;
> +        interrupts = <17>, <18>;
> +        #dma-cells = <1>;
> +    };
> diff --git a/Documentation/devicetree/bindings/dma/cirrus,ep9301-dma-m2p.yaml b/Documentation/devicetree/bindings/dma/cirrus,ep9301-dma-m2p.yaml
> new file mode 100644
> index 000000000000..0236cc37233e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/dma/cirrus,ep9301-dma-m2p.yaml
> @@ -0,0 +1,121 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/dma/cirrus,ep9301-dma-m2p.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cirrus Logick ep93xx SoC M2P DMA controller
> +
> +maintainers:
> +  - Alexander Sverdlin <alexander.sverdlin@gmail.com>
> +  - Nikita Shubin <nikita.shubin@maquefel.me>
> +

Same comments in this file

> +properties:
> +  compatible:
> +    oneOf:
> +      - const: cirrus,ep9301-dma-m2p
> +      - items:
> +          - enum:
> +              - cirrus,ep9302-dma-m2p
> +              - cirrus,ep9307-dma-m2p
> +              - cirrus,ep9312-dma-m2p
> +              - cirrus,ep9315-dma-m2p
> +          - const: cirrus,ep9301-dma-m2p
> +
> +  reg:
> +    items:
> +      - description: m2p0 channel registers
> +      - description: m2p1 channel registers
> +      - description: m2p2 channel registers
> +      - description: m2p3 channel registers
> +      - description: m2p4 channel registers
> +      - description: m2p5 channel registers
> +      - description: m2p6 channel registers
> +      - description: m2p7 channel registers
> +      - description: m2p8 channel registers
> +      - description: m2p9 channel registers
> +

...

> diff --git a/include/dt-bindings/dma/cirrus,ep93xx-dma.h b/include/dt-bindings/dma/cirrus,ep93xx-dma.h
> new file mode 100644
> index 000000000000..21c7324eb27e
> --- /dev/null
> +++ b/include/dt-bindings/dma/cirrus,ep93xx-dma.h

Use same filename as bindings.

> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
> +#ifndef DT_BINDINGS_CIRRUS_EP93XX_DMA_H
> +#define DT_BINDINGS_CIRRUS_EP93XX_DMA_H
> +
> +/*
> + * M2P channels.
> + *
> + * Note that these values are also directly used for setting the PPALLOC
> + * register.
> + */
> +#define EP93XX_DMA_I2S1         0

Where is the user of these defines? IOW, who uses them? Only driver?


> +#define EP93XX_DMA_I2S2         1
> +#define EP93XX_DMA_AAC1         2
> +#define EP93XX_DMA_AAC2         3
> +#define EP93XX_DMA_AAC3         4
> +#define EP93XX_DMA_I2S3         5
> +#define EP93XX_DMA_UART1        6
> +#define EP93XX_DMA_UART2        7
> +#define EP93XX_DMA_UART3        8
> +#define EP93XX_DMA_IRDA         9
> +/* M2M channels */
> +#define EP93XX_DMA_SSP          10
> +#define EP93XX_DMA_IDE          11
> +
> +#endif /* DT_BINDINGS_CIRRUS_EP93XX_DMA_H */
> +
> diff --git a/include/linux/platform_data/dma-ep93xx.h b/include/linux/platform_data/dma-ep93xx.h> index eb9805bb3fe8..54b41d1468ef 100644
> --- a/include/linux/platform_data/dma-ep93xx.h
> +++ b/include/linux/platform_data/dma-ep93xx.h
> @@ -5,26 +5,7 @@
>  #include <linux/types.h>
>  #include <linux/dmaengine.h>
>  #include <linux/dma-mapping.h>
> -
> -/*
> - * M2P channels.
> - *
> - * Note that these values are also directly used for setting the PPALLOC
> - * register.
> - */
> -#define EP93XX_DMA_I2S1		0
> -#define EP93XX_DMA_I2S2		1
> -#define EP93XX_DMA_AAC1		2
> -#define EP93XX_DMA_AAC2		3
> -#define EP93XX_DMA_AAC3		4
> -#define EP93XX_DMA_I2S3		5
> -#define EP93XX_DMA_UART1	6
> -#define EP93XX_DMA_UART2	7
> -#define EP93XX_DMA_UART3	8
> -#define EP93XX_DMA_IRDA		9
> -/* M2M channels */
> -#define EP93XX_DMA_SSP		10
> -#define EP93XX_DMA_IDE		11
> +#include <dt-bindings/dma/cirrus,ep93xx-dma.h>

Your headers should not include bindings.


Best regards,
Krzysztof


