Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 550A46D44D1
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 14:49:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229945AbjDCMtI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 08:49:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232283AbjDCMtG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 08:49:06 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0170510ABF
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 05:49:03 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id t10so116695766edd.12
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 05:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680526142;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ISwLn6XAWbSbFdzIWp9X/wiJEWCN8LzXJ/dbGkmRRJs=;
        b=yM2ATucKwHouvbBvYy74RuU4wpRCipfUwo/ghlxpmpFt3ifZugisB+EF/PNTYaiZ72
         UpN2gstGW/kT9ZW9UxKT5hC3s6whGfFbr5XpIjuZ0+BM/TM1ADVLmiNRSqPv3byL7edh
         N54Y/Sc4XnMlyXRqr9ZFUvdKMsGK3ugQMN/kV4KhsVDd3GWKP7EBKlLmXS4wjUByc8vy
         nTtCATcSFe1Kjy7zQxhtvQKWqkg+tzlvNyuSoMqsoBlvd4Ij2ixdoPlbSB3Tsj/IcsiE
         KCfN9HjdGqnZBAMupBgR4C8MALuol3gFL47LL9wxw3NzB7F2YFoNBsC2f5BS3slJjVjc
         epDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680526142;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ISwLn6XAWbSbFdzIWp9X/wiJEWCN8LzXJ/dbGkmRRJs=;
        b=eM2a5WYp5ZQdyh88ej9dHwgdFN2GuWK/w7u7jJOaNUaf+u5eJoyPwehsYiGX75Lg6R
         MpcAarvp4ExZ70YeHNzp3qBvaRNg4N3FIlQ+qOrosi5WO28p14yaFWMN+0tMlN5bvv2B
         USNFqxvjymlZcmV45CXFecMDxWU9CMWo6O2VB+z6STcZ65Tr85lSeRUyHqPV+ALYbVu+
         /LEIfVORre5+sPdtghcBBIGT6z9N5dhoe23/EEcGk2QU55N/oDoUAGQEOlTM4pqhnz7q
         ucoB8MB91mMlmKJEb3qVb/gfSQSKKjTjCzvHmMR4K7MtWqdEunz4nfDjckLIRxXs+GLv
         pm1g==
X-Gm-Message-State: AAQBX9cPvjMD9t8l+JDlZAfL1zuEZC8IuQXERgIgojFEyS1cAPikW+xp
        J3VoamXa7NURRA58/X9Q92axrg==
X-Google-Smtp-Source: AKy350aVsRdZ8lMJe5Twrh8KULuIFmwXUK3d/d6hD2HYM/7d3yDUed96iV2DI3Wtb3VFyJvzSf82lA==
X-Received: by 2002:a17:906:e0c6:b0:93b:a133:f7e6 with SMTP id gl6-20020a170906e0c600b0093ba133f7e6mr32628143ejb.46.1680526142326;
        Mon, 03 Apr 2023 05:49:02 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ae90:d80:1069:4805? ([2a02:810d:15c0:828:ae90:d80:1069:4805])
        by smtp.gmail.com with ESMTPSA id v1-20020a170906564100b0092b86d41dbasm4518263ejr.114.2023.04.03.05.49.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 05:49:02 -0700 (PDT)
Message-ID: <8f7f925f-638d-737c-bf47-2a66ce0eec59@linaro.org>
Date:   Mon, 3 Apr 2023 14:49:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2] dt-bindings: bridge: Convert Samsung MIPI DSIM bridge
 to yaml
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, jagan@amarulasolutions.com,
        inki.dae@samsung.com, Fabio Estevam <festevam@denx.de>
References: <20230403124458.198631-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230403124458.198631-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/04/2023 14:44, Fabio Estevam wrote:
> From: Jagan Teki <jagan@amarulasolutions.com>
> 
> Samsung MIPI DSIM bridge can be found on Exynos and NXP's 
> i.MX8M Mini/Nano/Plus SoCs.
> 
> Convert exynos_dsim.txt to yaml.
> 
> Used the example node from latest Exynos SoC instead of
> the one used in legacy exynos_dsim.txt.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v1:
> - Added samsung,mipi-dsim.yaml entry to MAINTAINERS file (Jagan)
> - Added Marek Szyprowski entry to the samsung,mipi-dsim.yaml maintainers section (Jagan)
> - Mention that i.MX8M Plus is also supported (Marek)
> - Remove endpoint@0 description as it only has one endpoint (Marek)

Where is the changelog from original submission? How your v1 differs
form it? Or did you just ignore all the feedback?

> 
>  .../display/bridge/samsung,mipi-dsim.yaml     | 271 ++++++++++++++++++
>  .../bindings/display/exynos/exynos_dsim.txt   |  92 ------
>  MAINTAINERS                                   |   1 +
>  3 files changed, 272 insertions(+), 92 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
>  delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
> new file mode 100644
> index 000000000000..2698752dc6ed
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
> @@ -0,0 +1,271 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/samsung,mipi-dsim.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung MIPI DSIM bridge controller
> +
> +maintainers:
> +  - Inki Dae <inki.dae@samsung.com>
> +  - Jagan Teki <jagan@amarulasolutions.com>
> +
> +description: |
> +  Samsung MIPI DSIM bridge controller can be found it on Exynos
> +  and i.MX8M Mini/Nano/Plus SoC's.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - samsung,exynos3250-mipi-dsi
> +      - samsung,exynos4210-mipi-dsi
> +      - samsung,exynos5410-mipi-dsi
> +      - samsung,exynos5422-mipi-dsi
> +      - samsung,exynos5433-mipi-dsi
> +      - fsl,imx8mm-mipi-dsim
> +      - fsl,imx8mp-mipi-dsim
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 5
> +
> +  clock-names:
> +    minItems: 2
> +    maxItems: 5
> +
> +  phys:
> +    maxItems: 1
> +    description: phandle to the phy module representing the DPHY

OK, so you did ignore the feedback.

NAK, go through the feedback and implement it.

Best regards,
Krzysztof

