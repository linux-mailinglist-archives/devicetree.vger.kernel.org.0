Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10D4F52E6F9
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 10:10:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346805AbiETIKm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 04:10:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232476AbiETIKk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 04:10:40 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0FDB8DDED
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 01:10:38 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id q130so8818594ljb.5
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 01:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=/Q2zXV+8LUjkYKDjIzBXp7BrDdbuagm69yyU6TmRueE=;
        b=PnTRMGFE7BbPHDZAQyZ4YMlza6eW9Ev20ZOHkE79gI1JpTWLE4xJThgm/r5s9t239+
         fHDAmNvNu0RfGPf9w+ld+P26yWOMR/vjnmPPjeMFv2cqoJhw2SVV9FcPacDaz7H8YUN1
         0RVqysnTGJwd9fgie+/CoH1MMMRPjf0cVI+BIZoavWtshnVwunP2qywHHpkbzL3lmqfP
         uUAnoytcdoPfEpWsQzE/u1MOLUmEpU/Wh0lq/7QsS8VZJzfEcth67c7QVTervg3EWohw
         IPtNpV92Mgp1p954XRHrH6O+QoljU9RGkJEXuJABPnyt3aJ3Jt/RP3bcrPzxSUaONMv5
         9D0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/Q2zXV+8LUjkYKDjIzBXp7BrDdbuagm69yyU6TmRueE=;
        b=mWxhnam89KzIbPfFhlh8clFkRHA3Wj1G9UM+wnr/6t3Dg0mnMZmY9EZA757H509P4Y
         sUjxLNd2i9VQ2Bxpvdgu9wKeHbTj8+2xs6dRuV8o6MFeRP3wKoRTvG5oy7r+9kb70TOT
         nisPoMDWF/bqwlmMYJhLKbdmKH1U7d7OG0kT8TI6NCTodTVlD+4BdjDecVbfXN8fdMtk
         UQc+O/DUmy8WEVtwcEWwRaW3J/5ocKzOQe8hDiVV//YMbQYpS5VxocCnEp5P6wWq5G2z
         y60yS9zApidKdFkp+4OqFbTwW1pyGCHOtPBQS3wbxHfEZJmRVyE5C+4fdYhqSlnUpe4U
         w6Fg==
X-Gm-Message-State: AOAM531Kmwmvu+SRHbpsE1IgsaMPrRRpRuwE7In2FW2C75hu6IoGRl7Q
        CXOdRCvlxLEeTbg3Xlc1yXFMMw==
X-Google-Smtp-Source: ABdhPJzOxCXf5B4f0uotUCSQeT7IL0G63fQ0rGQ3FRjBwXyQY1KqTrYwI6Xi3xuur/4LN/BEusNRvw==
X-Received: by 2002:a2e:391c:0:b0:253:c3e8:8e79 with SMTP id g28-20020a2e391c000000b00253c3e88e79mr4694809lja.304.1653034237150;
        Fri, 20 May 2022 01:10:37 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d25-20020ac24c99000000b00477b624c0a8sm565749lfl.180.2022.05.20.01.10.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 01:10:36 -0700 (PDT)
Message-ID: <40562324-8d15-6dd6-46db-053f65b030b6@linaro.org>
Date:   Fri, 20 May 2022 10:10:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2] dt-bindings: serial: mtk-uart: Convert txt to
 json-schema
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        gregkh@linuxfoundation.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        matthias.bgg@gmail.com, linux-serial@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20220519152329.55028-1-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220519152329.55028-1-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/05/2022 17:23, AngeloGioacchino Del Regno wrote:
> Convert the mtk-uart documentation from freeform text to a json-schema.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
> 
> v2: Changed to also accept just "mediatek,mt6577-uart" as compatible.
> 
> 
>  .../bindings/serial/mediatek,uart.yaml        | 121 ++++++++++++++++++
>  .../devicetree/bindings/serial/mtk-uart.txt   |  59 ---------
>  2 files changed, 121 insertions(+), 59 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/serial/mediatek,uart.yaml
>  delete mode 100644 Documentation/devicetree/bindings/serial/mtk-uart.txt
> 
> diff --git a/Documentation/devicetree/bindings/serial/mediatek,uart.yaml b/Documentation/devicetree/bindings/serial/mediatek,uart.yaml
> new file mode 100644
> index 000000000000..7929aa123487
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/serial/mediatek,uart.yaml
> @@ -0,0 +1,121 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/serial/mediatek,uart.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek Universal Asynchronous Receiver/Transmitter (UART)
> +
> +maintainers:
> +  - Matthias Brugger <matthias.bgg@gmail.com>
> +
> +allOf:
> +  - $ref: serial.yaml#
> +
> +description: |+

No need for |+

> +  The MediaTek UART is based on the basic 8250 UART and compatible
> +  with 16550A, with enhancements for high speed baud rates and
> +  support for DMA.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:

This is just single item, so no items.

> +          - const: mediatek,mt6577-uart

Best regards,
Krzysztof
