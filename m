Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 035165A362B
	for <lists+devicetree@lfdr.de>; Sat, 27 Aug 2022 11:08:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbiH0JIb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Aug 2022 05:08:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229561AbiH0JIa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 Aug 2022 05:08:30 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57A1350041
        for <devicetree@vger.kernel.org>; Sat, 27 Aug 2022 02:08:29 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id h8so1239574lfm.8
        for <devicetree@vger.kernel.org>; Sat, 27 Aug 2022 02:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=FSNTuMMXeoC70lxTKB570T+X2lQfg//2X9+xflsPUaU=;
        b=euY+IKg1WUwyREaVEkC0vU0Uiy/uYIpgANHbnYpTVD/4w2Wr8nhaBpwM2t1AcH+N25
         cuT7659vaQd7rrq4jKApPhnVWFpSr0L+GwVVNeieQ0GKuAWjWh0KIhqshC8IXsymjoKb
         M0IHcmjiLUF1FBuAnpiHI5j1uwvGIjc9vB5Sxi5lclwcz4v1PO/y1PrQD3rkGtBshsfX
         Tb+29FfeAwzTSzIpHYPFqws8kKPQqCNidSIHCZnZ47gFf6/G8385bznQzr/pXffeMc48
         ueaJYBcXp0iAcdqITrpTT3F9ohgo+ZgrTHTJ1JX1/eYopbfnLchcB0zJFSBVCAGlyjba
         qZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=FSNTuMMXeoC70lxTKB570T+X2lQfg//2X9+xflsPUaU=;
        b=m4sIWou1ysX1bqD2CJwJNIc+oHmrIPk0XcwEX86zoY5llPJbd4D6Ru2zgRZfHT5wJy
         6C+ooH4kE4AIsumEuOqbhI4c5BABBr37hAUrZaAhgNdktbhxTABRhJ3m2douYfOJRcr2
         NQKUT18DIDxlQjDoxLAyIZIn+dO0N4ECo6lx38DyJkO299jUBeihynNNtB7F6twtro9L
         ub3CskprYXygXph/PI7+h8t2UyPH69VN4u3GjOzfS/zkk4w4kCwHW0jv1ykelH/Fc6YZ
         VCPo9xLM5yYIVonKfNYPPsK0q/ensXV1Uq5uKItyu68bfNcj7vxmZG+cnZ1TwItGuDik
         mycg==
X-Gm-Message-State: ACgBeo1G4PV/8M/u1EKbNiHvE82c2xO9X6Gz7RThaPeTw91hKsMxLZ1G
        6xovEiCv/tn4dD3dsalAb8XU5g==
X-Google-Smtp-Source: AA6agR7eHbsuSjMDWmlRF4XAP2ouN+fu6UYv20PiYQrU2hi7LhX6V6Xtz4JdK1hSZIBLuss6y/sPGg==
X-Received: by 2002:a19:dc4a:0:b0:493:e21:b77d with SMTP id f10-20020a19dc4a000000b004930e21b77dmr3422263lfj.580.1661591307685;
        Sat, 27 Aug 2022 02:08:27 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id n3-20020a05651203e300b0048a757d1303sm606847lfq.217.2022.08.27.02.08.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Aug 2022 02:08:27 -0700 (PDT)
Message-ID: <e072a8aa-512c-12f5-85e8-aa2fd46ebe8c@linaro.org>
Date:   Sat, 27 Aug 2022 12:08:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/4] dt-bindings: display: imx: add binding for i.MX8MP
 HDMI TX
Content-Language: en-US
To:     Lucas Stach <l.stach@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liu Ying <victor.liu@nxp.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Kieran Bingham <kieran.bingham@ideasonboard.com>,
        Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, patchwork-lst@pengutronix.de,
        kernel@pengutronix.de
References: <20220826192424.3216734-1-l.stach@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220826192424.3216734-1-l.stach@pengutronix.de>
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

On 26/08/2022 22:24, Lucas Stach wrote:
> The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> core with a little bit of SoC integration around it.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Marek Vasut <marex@denx.de>

What tested-by means in the terms of bindings? What tests were applied
exactly?

> ---
>  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml | 74 +++++++++++++++++++
>  1 file changed, 74 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> new file mode 100644
> index 000000000000..14f7cd47209c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> @@ -0,0 +1,74 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/imx/fsl,imx8mp-hdmi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8MP DWC HDMI TX Encoder
> +
> +maintainers:
> +  - Lucas Stach <l.stach@pengutronix.de>
> +
> +description: |
> +  The HDMI transmitter is a Synopsys DesignWare HDMI 2.0 TX controller IP.
> +
> +allOf:
> +  - $ref: ../bridge/synopsys,dw-hdmi.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8mp-hdmi
> +
> +  reg:
> +    maxItems: 1
> +
> +  reg-io-width:
> +    const: 1
> +
> +  clocks:
> +    maxItems: 5
> +
> +  clock-names:
> +    items:
> +      - {}
> +      - {}

Clocks should be strictly defined.

> +      - const: cec
> +      - const: pix
> +      - const: fdcc
> +
> +  interrupts:
> +    maxItems: 1

This is coming from synopsys. Skip it and use unevaluatedProperties:false

reg actually as well...

> +
> +  power-domains:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - power-domains
> +
> +additionalProperties: false
> +

Best regards,
Krzysztof
