Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04D1C6FE0DD
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 16:57:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237404AbjEJO5d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 10:57:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237146AbjEJO5c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 10:57:32 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B55F2D72
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 07:57:31 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-94a34a14a54so1457338266b.1
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 07:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683730649; x=1686322649;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gGKIDnp5BcnMW9gCpRCUAYeE1qjMs1lyP7Vbjiy3irY=;
        b=l14bycRfrRlZbpxmWjdd9s/MZYHJ9DwLn51cx+fW8/aKCO5bN4RQY4P9sZc/VWqyHc
         LUVBCcAqC0+To0VuR3CRZj4rphtpF8RFVibo8CaEPG3Z4bUJai9QA9bCGb2799qhhYUA
         gdtMrr4W7bQFgQWiKr1oZVB49Z2LVAOrfenh1bEtPZA3lA0L3mxjTxEQaqVj2lKCUYxA
         IK8i62rMzgx22Anj7I4QuGMEnfJ//oJtMwgU7whvbcLeMlPg2GrV6AaHbHW1I0Kj/dzx
         4CtTvWDgKNa8PxFBCzrV3eBb9xlutfJgi+bR8pUK0P6KL/Gn6Z+1LRToGihau6Fl1Hg4
         +ctw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683730649; x=1686322649;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gGKIDnp5BcnMW9gCpRCUAYeE1qjMs1lyP7Vbjiy3irY=;
        b=cJVHjtyJZYCSUVaYGx/mukWHiQuPZuqRE5R0B4x38YtqYhR1YYLWmaFs4zUPCvVaqA
         8o/NB/nIgrApNeKacZJTPxFd7yrpar60080Ak5YE+7WJq/EBYKWxGmCRKjt4GxZlcVyW
         qqy4EDD4NX81JgjHp9/LsZh6RXCJ0wGAZ2WkbCftHNj7zaP+m9/kiR/vYMVkdv04ozMQ
         w5XuEW+BEnLEeYq/3wTL1dlr1mfPWhZHPc+6hj0iN40ZX6Jfs0XarQSS1VwLNPe+Vgk9
         Ebd57twWExDVQG260fhnvTleOiZDkeexfRE0m4uvl6rxy03JU/JFp6HBa5+jwmVuJRJc
         S8lQ==
X-Gm-Message-State: AC+VfDw3x9L2LZC1g1zKXgSB0E0dR9CNo4zi3M3KZ1V8+TtfGf2W+IIi
        kkYM+MkbuxCgY/bcj167HllxYw==
X-Google-Smtp-Source: ACHHUZ7yADfN3NfDdk+MGaKfjHxbNijO2SdsdYQ3qjq9eAyKgll64Pb46yoHy2sfNGTo4FIilvALFA==
X-Received: by 2002:a17:906:9c83:b0:95f:4889:412a with SMTP id fj3-20020a1709069c8300b0095f4889412amr17648241ejc.33.1683730649389;
        Wed, 10 May 2023 07:57:29 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c175:a0f9:6928:8c9d? ([2a02:810d:15c0:828:c175:a0f9:6928:8c9d])
        by smtp.gmail.com with ESMTPSA id ci17-20020a170907267100b009682b2b3d66sm2731221ejc.197.2023.05.10.07.57.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 07:57:28 -0700 (PDT)
Message-ID: <96c63925-91d5-994a-a531-2d7bdb3b642a@linaro.org>
Date:   Wed, 10 May 2023 16:57:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] dt-bindings: mtd: Add SEAMA partition bindings
Content-Language: en-US
To:     Linus Walleij <linus.walleij@linaro.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230506-seama-partitions-v1-0-5806af1e4ac7@linaro.org>
 <20230506-seama-partitions-v1-1-5806af1e4ac7@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230506-seama-partitions-v1-1-5806af1e4ac7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/05/2023 17:29, Linus Walleij wrote:
> This types of NAND partitions appear in OpenWrt and
> U-Boot.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  .../devicetree/bindings/mtd/partitions/seama.yaml  | 50 ++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/partitions/seama.yaml b/Documentation/devicetree/bindings/mtd/partitions/seama.yaml
> new file mode 100644
> index 000000000000..352f008ffdb1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/partitions/seama.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/partitions/seama.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Seattle Image Partitions
> +
> +description: The SEAttle iMAge (SEAMA) partition is a type of partition
> +  used for NAND flash devices. This type of flash image is found in some
> +  D-Link routers such as DIR-645, DIR-842, DIR-859, DIR-860L, DIR-885L,
> +  DIR890L and DCH-M225, as well as in WD and NEC routers on the ath79
> +  (MIPS), Broadcom BCM53xx, and RAMIPS platforms.
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +select: false

You miss update to partitions.yaml. Anyway, for your testing,
temporarily change it to true, to see errors.

> +
> +properties:
> +  compatible:
> +    const: seama
> +
> +  '#address-cells': false
> +
> +  '#size-cells': false

You have children, so these must be true.

> +
> +patternProperties:
> +  "@[0-9a-f]+$":
> +    $ref: partition.yaml#
> +
> +required:
> +  - compatible

address/size-cells as well

> +
> +additionalProperties: false
> +
> +examples:

Best regards,
Krzysztof

