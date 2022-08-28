Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 994E85A3E65
	for <lists+devicetree@lfdr.de>; Sun, 28 Aug 2022 17:43:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229768AbiH1Pk4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Aug 2022 11:40:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbiH1Pkz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Aug 2022 11:40:55 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88BC01DA5F
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 08:40:53 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id x10so5894194ljq.4
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 08:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=38oxNFO9Mw1uMALP3WOGPasfWjHLRuiM1zg8Pz8ylVU=;
        b=vEOr7DxJ/oFLM3GtgmXWtP3X4p1HmT1e6mjCbWgmWCxv163TP23UPsoiw92mDuU/cz
         pDPfHXrKD8KRY2R795JWX0twOJ8OUMJaD0Yn+DgT1rJiyNhGu8vyFy+SUeoAtEKvNc1N
         OrW1vNLUPcDTZ4a3shSjYEHeEjLHvPZCTlrX6qb+uztCbOw/jDVOu1lmpTTXagky8qNa
         YAbh/ZqtZQ/hzijuMxjFp/J78JUmgwC4TgwzTV56DZA7zns5CLCHeNL22zAr51NoiMx+
         xWwPWCAbobW+hBtTueir3Gbllm+jDJ8GRKoOqXwNbvpoEG1SaKWPFDimtspasMIc8ZKf
         aoJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=38oxNFO9Mw1uMALP3WOGPasfWjHLRuiM1zg8Pz8ylVU=;
        b=dVXqoBVEq7E/YUbb3XiZ4aiNo9xEazPiHLl81uFsLR9VhMmMpCXQpX93VJzWNhTEsN
         ciT4bhAliz+BPlGF/vKSSwD9sj5JTm7ceGwTqDo7Vwc+LaODozNclD0DeeDpcz+qaI/x
         ZwcBN+ThebxFiRNVrjpS0hs+VXuw+B7ZzyTMa0wEkz5NP9wSehMM4hGosD6GvsOlLCW0
         yB3yp9WVs+15l1/qVHu1nj0OHB4mrJM0fDaYgxrwwV7Zx1VR6VTG0gL8JOT9vHwMAr0P
         c93Fsmnue7jBGLMYtLgZ4R7UgF+g75Nh1MgqFdYIg4KN/qSCLno9Gnaa6dQF8TFBKgSt
         /kMw==
X-Gm-Message-State: ACgBeo1bGiouSfe1s4npJw0XxPJgF+DpjkR083DaleniocecQ+1tKLwC
        ctkgzCgq4eWNLSeQsGiUz2j+RA==
X-Google-Smtp-Source: AA6agR4x84VsuVlFbZvcqBYBpvnYvmlQvI8T6yphb0Aawwi+aWB0x1G23gHzEkMrauoLgBfNlcAifw==
X-Received: by 2002:a05:651c:c88:b0:261:e2fe:f0b7 with SMTP id bz8-20020a05651c0c8800b00261e2fef0b7mr4305801ljb.304.1661701251560;
        Sun, 28 Aug 2022 08:40:51 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id h24-20020ac25978000000b0048b003c4bf7sm359034lfp.169.2022.08.28.08.40.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Aug 2022 08:40:50 -0700 (PDT)
Message-ID: <844375c6-b4d7-f329-739b-772c1b40144f@linaro.org>
Date:   Sun, 28 Aug 2022 18:40:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: add binding for the i.MX8MP HDMI
 PHY
Content-Language: en-US
To:     Lucas Stach <l.stach@pengutronix.de>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Kieran Bingham <kieran.bingham@ideasonboard.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        patchwork-lst@pengutronix.de, kernel@pengutronix.de
References: <20220826192023.3216389-1-l.stach@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220826192023.3216389-1-l.stach@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/08/2022 22:20, Lucas Stach wrote:
> Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> new file mode 100644
> index 000000000000..2118f964cad4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,imx8mp-hdmi-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8MP HDMI PHY binding
> +
> +maintainers:
> +  - Lucas Stach <l.stach@pengutronix.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8mp-hdmi-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#clock-cells":
> +    const: 0
> +
> +  clocks:
> +    minItems: 2

No need for minItems.

> +    maxItems: 2
> +

Rest looks ok, so with above:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
