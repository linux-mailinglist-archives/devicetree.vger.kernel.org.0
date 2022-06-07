Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C66B0540656
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 19:35:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347053AbiFGRek (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 13:34:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347119AbiFGRd3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 13:33:29 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ED0110051C
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 10:30:21 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id bg6so16799747ejb.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 10:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=7njt177zCoYGgEIMLPItH0v8XLC+rKLj/ep1t1KuXZM=;
        b=M0LmNZDR0ptqgLOMVubuX22LxZfChxnnoEm+Joea9TigUmmc6p3wezEvXba+JgI7Vl
         aRyQi351m214C5C2b2XxALMPJ3Mv28Vi83N8PQHoy2KI3ZE3QGRYrLqZZfGiy239kMwx
         tkwucSI5XLI9KxmV6/mef0mszkNxeKkRm3QSBedEZUIlUjtvLLqaX6OPldEY8baYWlgh
         gZ3VlwG4QF6h+r6C0qGb7fdjmx9UUOeMMhQLUxOg0SI7juT5wRLZLKn3ZwnhhC4l8Y/5
         WtYherXhxK8yKvFTELZAMqQaeD4ctMSb0CcgRc1mV7HVbMHpuufJYO49wzpsbQzdRyRD
         B8kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7njt177zCoYGgEIMLPItH0v8XLC+rKLj/ep1t1KuXZM=;
        b=xprUFOR/MOGz07q/eoXvM1VxZsKIvw8KxJBzvWcB5oEGcTMRIOX04zStqw9ExPCEEc
         04f2fFt+IBXkBppERBtaIw9SaoY451bL9iNTrDcWkXvtg5SLduq9JcyK60X16zJ7jD0K
         pEInbUhyT1cDEFmekywK3eAoKpyaNCgXacJ2QiEH+QNa6v8q69zbv5dUVPndWqp1/RB8
         XAeysyR85NxlFmUX/YzkGDHdKeSPrW8jGT+b7p+nkdVp70ol7HtWgAZifa6MYycJTLNJ
         vaaKW/0vRPCsHpNxfdjxAehJyIWl1azIKD8Ht9cXvXcnbgJ220hSJk3ok/3gOiXgsYdn
         ml4A==
X-Gm-Message-State: AOAM531PgHAfZ1MV5KHDNkHv2gxoN29s4bDnXM1pVUs40oNEUThHjK7W
        xXytyBu6MAqWCecxwoo1e9wir/q9D0aNfw==
X-Google-Smtp-Source: ABdhPJxybWB8zUYFEghv1H/tVCvUKnd/HZrjblSEfiQxNZJOgkzIxPWJ8FAq2CSgWj32RvgcceUxhw==
X-Received: by 2002:a17:907:7da5:b0:711:c9cd:61e0 with SMTP id oz37-20020a1709077da500b00711c9cd61e0mr12635282ejc.443.1654623017185;
        Tue, 07 Jun 2022 10:30:17 -0700 (PDT)
Received: from [192.168.0.187] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id a26-20020a1709062b1a00b006f3ef214db4sm7126278ejg.26.2022.06.07.10.30.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 10:30:16 -0700 (PDT)
Message-ID: <7e318e8c-3311-f135-4372-6c3eb8ccdf34@linaro.org>
Date:   Tue, 7 Jun 2022 19:30:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 07/10] dt-bindings: arm: freescale: Add fsl,scu-rtc yaml
 file
Content-Language: en-US
To:     Abel Vesa <abel.vesa@nxp.com>, Rob Herring <robh@kernel.org>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20220607105951.1821519-1-abel.vesa@nxp.com>
 <20220607105951.1821519-8-abel.vesa@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220607105951.1821519-8-abel.vesa@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/06/2022 12:59, Abel Vesa wrote:
> This documents separately the rtc child node of the SCU main node.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  .../bindings/arm/freescale/fsl,scu-rtc.yaml   | 23 +++++++++++++++++++
>  1 file changed, 23 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/freescale/fsl,scu-rtc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu-rtc.yaml b/Documentation/devicetree/bindings/arm/freescale/fsl,scu-rtc.yaml
> new file mode 100644
> index 000000000000..199617be4565
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu-rtc.yaml
> @@ -0,0 +1,23 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/freescale/fsl,scu-rtc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: i.MX SCU Client Device Node - RTC bindings based on SCU Message Protocol
> +
> +maintainers:
> +  - Shawn Guo <shawnguo@kernel.org>
> +
> +description: i.MX SCU Client Device Node
> +  Client nodes are maintained as children of the relevant IMX-SCU device node.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: fsl,imx8qxp-sc-rtc

No need for items.


Best regards,
Krzysztof
