Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86B335328C2
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 13:20:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233576AbiEXLUT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 07:20:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233419AbiEXLUR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 07:20:17 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCD51100C
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 04:20:15 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id bq30so30311730lfb.3
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 04:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=o+P126SPmH870R49rZnjVtAQ0lLibINOxU3kSrrv/z8=;
        b=SMvYItxQoIa4+8n2A81HdVNR5Z/Hx33wm5H0xD1nUqEQdCWbeN4tMO0ZjR0AUGJ2mY
         lPNI5rWq8KDx0D8vwOee98mhmo4a1oAh1SDdvTU/gdlscLL6Sxu6nakF2OyBWeaK0h75
         FCXZjRYMvXglCUp20LO+/9U91BjDAiB1jiksNdcA/q7Wgu3xF1Nq4huPDYm/YQNgRDKU
         P3mANTADrLRpTSgtapYACgbxYFGIxB26u93BNoYNHVhjKTbAxFOEOxBD3pY+X24NawYM
         x53/fxFrDPIOyUPjVIqUif3Y6rAYtEN5464K1gdnn2r3Zfs7kfcdnw+U87gzDWBJtNx0
         rxsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=o+P126SPmH870R49rZnjVtAQ0lLibINOxU3kSrrv/z8=;
        b=5doGpBsKBaapmvFOU7qOaSrikm9mAuHA95xG3IGPLldDvcANBNXPNgjXIlU9lsh7Su
         OLuyTLm1bDzLfHuhl1SKx8zeJnvb6Wsh4FBdbYBET7rvyroNXTh0IcJob8Ab0Kj7ek+y
         fagx505N+G94QzKkLlKaxF+PpIf6b9JOLJBUEONYxywNq0tz+WZDHBFN1OE55NaFK/S+
         P3VhW0giICdAcdHfh3estKCQkt0mySMUEDFg90t+UdRy/emRvq/aCTKgdwIx7DkMt2R/
         6eS3fA2qUnkqPP/6hDjbGD5euUXJtMt5tfRjTZKjHUXG7kiv7apNmVyEbIfxaUhyF5DM
         9k0g==
X-Gm-Message-State: AOAM530fbMqFpaHtxL8b4W0MYOJssyiRMa7Hj/3+daLpD1qVcAMWPWwd
        MSoB1PpJZIST+UONAntuAYXUAw==
X-Google-Smtp-Source: ABdhPJzmHrk/56T37ils6m/MiRllzq9R03TSRVqArMoj3ScLBwg+xIn7CZIv4hN266uJZrfvwWpf1w==
X-Received: by 2002:a05:6512:3a96:b0:478:7abd:52e with SMTP id q22-20020a0565123a9600b004787abd052emr5245487lfu.446.1653391214165;
        Tue, 24 May 2022 04:20:14 -0700 (PDT)
Received: from [172.20.68.48] ([91.221.145.6])
        by smtp.gmail.com with ESMTPSA id g7-20020a2ea4a7000000b00253d8962fffsm2445974ljm.18.2022.05.24.04.20.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 May 2022 04:20:13 -0700 (PDT)
Message-ID: <94bf86ee-2458-924e-1a7f-b7723bfcf04e@linaro.org>
Date:   Tue, 24 May 2022 13:20:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 2/7] dt-bindings: soc: add bindings for i.MX93 mediamix
 blk ctrl
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sboyd@kernel.org,
        mturquette@baylibre.com, shawnguo@kernel.org,
        s.hauer@pengutronix.de
Cc:     aisheng.dong@nxp.com, l.stach@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
References: <20220523113029.842753-1-peng.fan@oss.nxp.com>
 <20220523113029.842753-3-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220523113029.842753-3-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/05/2022 13:30, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add DT bindings for i.MX93 MEDIAMIX BLK CTRL.

In the subject - you duplicate "bindings", so just "dt-bindings: soc:
add i.MX93 mediamix blk ctrl"

> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../soc/imx/fsl,imx93-media-blk-ctrl.yaml     | 81 +++++++++++++++++++
>  include/dt-bindings/power/imx93-power.h       |  6 ++
>  2 files changed, 87 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
> new file mode 100644
> index 000000000000..775c08d763b8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
> @@ -0,0 +1,81 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/imx/fsl,imx93-media-blk-ctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX93 Media blk-ctrl
> +
> +maintainers:
> +  - Peng Fan <peng.fan@nxp.com>
> +
> +description:
> +  The i.MX93 MEDIAMIX domain contains control and status registers known
> +  as MEDIAMIX Block Control (MEDIAMIX BLK_CTRL). These registers include
> +  clocking, reset, and miscellaneous top-level controls for peripherals
> +  within the MEDIAMIX domain
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: fsl,imx93-media-blk-ctrl
> +      - const: syscon
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#power-domain-cells':
> +    const: 1

Missing ref to power domains.

> +
> +  power-domains:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 10

minItems is not needed in such case.

> +    maxItems: 10
> +
> +  clock-names:
> +    items:
> +      - const: apb
> +      - const: axi
> +      - const: nic
> +      - const: disp
> +      - const: cam
> +      - const: pxp
> +      - const: lcdif
> +      - const: isi
> +      - const: csi
> +      - const: dsi
> +
> +required:
> +  - compatible
> +  - reg
> +  - power-domains
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx93-clock.h>
> +    #include <dt-bindings/power/imx93-power.h>
> +
> +    media_blk_ctrl: blk_ctrl@4ac10000 {

No underscores in node names. Generic node name, so "system-controller"
or "power-controller"?



Best regards,
Krzysztof
