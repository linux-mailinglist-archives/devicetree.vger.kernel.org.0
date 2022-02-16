Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB2494B8D97
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 17:13:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235212AbiBPQNq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 11:13:46 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:59722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234566AbiBPQNq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 11:13:46 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 942A618C2F8
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 08:13:33 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id EC3BC3F338
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 16:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645028011;
        bh=yU0JTVfqmMQPB5NQYcUc7rbuKfmUJoXTRDxBU8L652M=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=QzFCRkAT1piU923VoDJKWOBMC6RsVOQJGosvbu0l5wVIDGtY4BxJQt8Dtxaxe3cpy
         LP5a0JIgGhrnMb00yNsJShXKfZoFCndqAi9EanzYWUWu5p4f6Xr1elp8yVUpb7uJyl
         pE5ZyMe9lpmPTQsNaZTy4EAacXlU/N/GzR+hheZnBomvyEkjlq2lpJW9u321Shz9Xx
         U6o6iSJVH7OQEUkfwznZidryXT96YtOHNrFj8BrPixfpHdvrb0qe22aMYZvkanbque
         vUUiB7VgGtsV1YxUrhjiEV6x37rztwf5QC5DrVE4N9Jyo6hMlmz6bSop/+7PZVYJtA
         XaBUnHSng3VZg==
Received: by mail-ej1-f70.google.com with SMTP id hq19-20020a1709073f1300b006cdd7712c2cso79878ejc.11
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 08:13:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yU0JTVfqmMQPB5NQYcUc7rbuKfmUJoXTRDxBU8L652M=;
        b=Vhsb/8vh6qJNmDgyfpOZNNgbhZI6ehgbfhuUSp4zFQHOOslRfZ2jAeujjgZBZLblUE
         AU7fjHu6MkFJkn498oZGK1vKwP/2IC7vqtmgZ5J7Hw2Lqf/kWjxeTWsLZvgz7fQHk5h+
         F1TJhDKfcbvmCq4eS8HQK2ov/ZoAfIdkOG7aEUQcHg96hzoJ8Tr/5KO4nrbzuErc60vc
         fV82Svv+KvSkI62US1C5zHDinAhJ7wJHsR1L3x2iZOALZCQZxX7WH4x5pXBuLRvGS+Gu
         Zc5or0Zo4/rkbPzbYSj4Q7iYCq0H6y2E14iOuDu6Y20KmxCYrYtwZzD6YT+HrkJYJm9v
         wa6Q==
X-Gm-Message-State: AOAM532dgfA4B3w9i4Po1nGiGdaY4dIVLkww4CVKGwWPTcDEuQAzVWMO
        loKlmIXybm1RAMYXE0ntEg3YP/r6qna5I9sTb8aKVzUD7PJ04VizSkv8AidijQniiB3j6XoSBCz
        0Tlo4wf7hZ4tP/4BeZqTnz3YXjQz7oO0bp05EWM8=
X-Received: by 2002:a17:906:38d2:b0:6b7:9639:fd74 with SMTP id r18-20020a17090638d200b006b79639fd74mr2774314ejd.215.1645028011631;
        Wed, 16 Feb 2022 08:13:31 -0800 (PST)
X-Google-Smtp-Source: ABdhPJymIuMoqXEhQgrqUOZ0+AFR5IMCCCY5eWHy1U9oQcUI27s9rO86CRpktTGFYrnx+rEft91rZw==
X-Received: by 2002:a17:906:38d2:b0:6b7:9639:fd74 with SMTP id r18-20020a17090638d200b006b79639fd74mr2774299ejd.215.1645028011406;
        Wed, 16 Feb 2022 08:13:31 -0800 (PST)
Received: from [192.168.0.110] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id 18sm67785ejj.1.2022.02.16.08.13.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Feb 2022 08:13:30 -0800 (PST)
Message-ID: <6c51427a-98e2-0bbe-8f4b-37a4d9cacec7@canonical.com>
Date:   Wed, 16 Feb 2022 17:13:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2] dt-bindings: dma: Convert mtk-uart-apdma to DT schema
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, vkoul@kernel.org
Cc:     robh+dt@kernel.org, sean.wang@mediatek.com, matthias.bgg@gmail.com,
        long.cheng@mediatek.com, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20220216151309.289348-1-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220216151309.289348-1-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2022 16:13, AngeloGioacchino Del Regno wrote:
> Convert the MediaTek UART APDMA Controller binding to DT schema.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
> v2: Fixed interrupt maxItems to 16, added interrupts/reg maxItems constraint
>     to 8 when the dma-requests property is not present
> 
>  .../bindings/dma/mediatek,uart-dma.yaml       | 123 ++++++++++++++++++
>  .../bindings/dma/mtk-uart-apdma.txt           |  56 --------
>  2 files changed, 123 insertions(+), 56 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/dma/mediatek,uart-dma.yaml
>  delete mode 100644 Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt
> 
> diff --git a/Documentation/devicetree/bindings/dma/mediatek,uart-dma.yaml b/Documentation/devicetree/bindings/dma/mediatek,uart-dma.yaml
> new file mode 100644
> index 000000000000..67dbb2fed74c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/dma/mediatek,uart-dma.yaml
> @@ -0,0 +1,123 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/dma/mediatek,uart-dma.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek UART APDMA controller
> +
> +maintainers:
> +  - Long Cheng <long.cheng@mediatek.com>
> +
> +description: |
> +  The MediaTek UART APDMA controller provides DMA capabilities
> +  for the UART peripheral bus.
> +
> +allOf:
> +  - $ref: "dma-controller.yaml#"
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - mediatek,mt2712-uart-dma
> +              - mediatek,mt8516-uart-dma
> +          - const: mediatek,mt6577-uart-dma
> +      - enum:
> +          - mediatek,mt6577-uart-dma
> +
> +  reg:
> +    minItems: 1
> +    maxItems: 16
> +
> +  interrupts:
> +    description: |
> +      TX, RX interrupt lines for each UART APDMA channel
> +    minItems: 1
> +    maxItems: 16
> +
> +  clocks:
> +    description: Must contain one entry for the APDMA main clock
> +    maxItems: 1
> +
> +  clock-names:
> +    const: apdma
> +
> +  "#dma-cells":
> +    const: 1
> +    description: |
> +      The first cell specifies the UART APDMA channel number
> +
> +  dma-requests:
> +    description: |
> +      Number of virtual channels of the UART APDMA controller
> +    maximum: 16
> +
> +  mediatek,dma-33bits:
> +    type: boolean
> +    description: Enable 33-bits UART APDMA support
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
> +
> +if:
> +  not:
> +    anyOf:

Thanks for the changes. This "anyOf" you can skip. It was needed in that
example because multiple properties should trigger restriction of maxItems.

In your case it is sufficient:
if:

  not:

    required:

      - dma-requests

then:
....


Rest looks good.

> +      - required:
> +          - dma-requests
> +then:
> +  properties:
> +    interrupts:
> +      maxItems: 8


Best regards,
Krzysztof
