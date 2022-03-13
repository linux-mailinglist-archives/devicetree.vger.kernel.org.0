Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 234064D768A
	for <lists+devicetree@lfdr.de>; Sun, 13 Mar 2022 16:47:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234852AbiCMPsl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Mar 2022 11:48:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234843AbiCMPsk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Mar 2022 11:48:40 -0400
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2415EDF2B
        for <devicetree@vger.kernel.org>; Sun, 13 Mar 2022 08:47:32 -0700 (PDT)
Received: by mail-ej1-f42.google.com with SMTP id gb39so28874342ejc.1
        for <devicetree@vger.kernel.org>; Sun, 13 Mar 2022 08:47:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=+J66zNpFvN8CMM3eFxF/kEqoRx1HJ2YiAzWmUAb6vO8=;
        b=axnp5Ku2kIOWOpoy0DnSuTL7/rCzh7m/Y/4ynsYCKHjBsudJa4dMOtv0sbMMUVt6b2
         c564jOv3CLZuCXfqL0BtgxE/JLpAAG3rdVdX5Ypc5pmTj5NzmA17FLoa4Ni+QvR6/GsW
         Sep2cKkujJE0rE87Sbvo32nl3+lKU03T2rtej3PiH4j5sVkCAijTvivLi73UgUGimeRH
         NCMcxlswrgRY8r/DLUdpj9zjnsNRQRiab3J/PiXs0Zrww8m95ryby7n5+JyQOTZonJsx
         NT4t65qQappwbOsgvIIGO2UJvFsR6P+8uvFQa7QoFLgcopH3wPKJ1kCPp7V7GkOEmDcX
         4F8g==
X-Gm-Message-State: AOAM532NHJapEXuwHu6Mkse4D910muiwZ9SgkhQzAAmDdw6/2MOkrv3v
        qDXFp0hB3DP7BIhDNwHYdk0=
X-Google-Smtp-Source: ABdhPJzynD+14kn/ewgktDK8H2gtiMqqONT47lKLXWhLW0uOF3q+DOzEebJV/+b2qHrEwT9fS6yuXA==
X-Received: by 2002:a17:907:7b8b:b0:6da:bad3:88b6 with SMTP id ne11-20020a1709077b8b00b006dabad388b6mr15521339ejc.360.1647186451068;
        Sun, 13 Mar 2022 08:47:31 -0700 (PDT)
Received: from [192.168.0.152] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.googlemail.com with ESMTPSA id y6-20020a056402358600b004166413d27bsm6428246edc.97.2022.03.13.08.47.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Mar 2022 08:47:30 -0700 (PDT)
Message-ID: <9bda9a09-ec0a-0b6f-56b1-dff18821aa5d@kernel.org>
Date:   Sun, 13 Mar 2022 16:47:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: ldb: Implement simple
 NXP i.MX8M LDB bridge
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Maxime Ripard <maxime@cerno.tech>, Peng Fan <peng.fan@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robby Cai <robby.cai@nxp.com>,
        Robert Foss <robert.foss@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
References: <20220313123852.207257-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220313123852.207257-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/03/2022 13:38, Marek Vasut wrote:
> The i.MX8MP contains two syscon registers which are responsible
> for configuring the on-SoC DPI-to-LVDS serializer. Add DT binding
> which represents this serializer as a bridge.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Maxime Ripard <maxime@cerno.tech>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robby Cai <robby.cai@nxp.com>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
>  .../bindings/display/bridge/nxp,ldb.yaml      | 99 +++++++++++++++++++
>  1 file changed, 99 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml
> new file mode 100644
> index 0000000000000..a05dd05547836
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml
> @@ -0,0 +1,99 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/nxp,ldb.yaml#

In title, description and commit msg you point this is specific to
i.MX8M, so maybe reflect it in the file name as well.

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX8M DPI to LVDS bridge chip
> +
> +maintainers:
> +  - Marek Vasut <marex@denx.de>
> +
> +description: |
> +  The i.MX8MP contains two syscon registers which are responsible
> +  for configuring the on-SoC DPI-to-LVDS serializer. This describes
> +  those registers as bridge within the DT.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: nxp,imx8mp-ldb

No items.

> +
> +  clocks:
> +    minItems: 1

maxItems

> +
> +  clock-names:
> +    const: "ldb"

No quotes

> +
> +  syscon:

You need a specific name with vendor prefix.

> +    $ref: /schemas/types.yaml#/definitions/phandle> +    description: A phandle to media block controller.
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Video port for DPI input.
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Video port for LVDS Channel-A output (panel or bridge).
> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Video port for LVDS Channel-B output (panel or bridge).
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - clocks
> +  - syscon
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mp-clock.h>
> +
> +    lvds-ldb {

Generic node name, so "bridge" or "display-bridge"

> +        #address-cells = <0>;
> +        #size-cells = <0>;

Why do you need address and size cells? This will complain if you test
your bindings with proper compatible.

> +        compatible = "fsl,imx8mp-ldb";

This does not look the same as documented here.


Best regards,
Krzysztof
