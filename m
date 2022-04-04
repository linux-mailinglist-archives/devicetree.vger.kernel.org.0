Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C66D64F1A7A
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 23:16:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378940AbiDDVS3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 17:18:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380321AbiDDTb7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 15:31:59 -0400
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BC8F20F41
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 12:30:02 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id k25-20020a056830151900b005b25d8588dbso7928628otp.4
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 12:30:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Pw9/rx3OWyNgJmgrxMJHiM9XNdAuSk1x7PxfxleOVHo=;
        b=kd5TS4xu5YF9MPjVlaOMdm+K5ZCTqXRP3rmX7sgEQFE1Iu5P+2mIGVq2Makm3VSR99
         8F5BSTNN4ZSUPLAAjKZdkGTo4HfYqBPWIloUsUkRNdXYeiUBfwt9wOBPbfmTnxTT0IQD
         cZ0KyKfP+XJ6+aoFda2nfiwmyNUEZ/CT9xV9GC0vm+jf2oooc/X81TPq/aMsRF73xRZW
         rth6i12elDv7sB/CwUSxjQ31Ga/Zo9OuCl6hUGAVIaJ9Bmg9rwg/zAizQmHVFg5avfXi
         fqn4aAyTtF9zA5DYzUfPZGRu5GGdVKIbxNr/35IP8VplhKU7O7xaJWGGS7RelnJp3ALd
         hSFA==
X-Gm-Message-State: AOAM5303dS7WE+iLRWzvS0nMAqRdmEd7jYWIofrEnNAM1tm+wV2xB5pV
        gHJt4yTT+GFIHHkK7fsmkWXv0aFA0A==
X-Google-Smtp-Source: ABdhPJwpJgxnagGtsX/4G1femKCs6URgtvhIa+HnkzdqIgagKjjdNd7aX3OMcDtkEZWJvTE80AJhKg==
X-Received: by 2002:a05:6830:201a:b0:5e6:8de6:9922 with SMTP id e26-20020a056830201a00b005e68de69922mr417505otp.3.1649100601406;
        Mon, 04 Apr 2022 12:30:01 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id l9-20020a4a4349000000b00328fae52bcasm4210372ooj.16.2022.04.04.12.30.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 12:30:01 -0700 (PDT)
Received: (nullmailer pid 1815025 invoked by uid 1000);
        Mon, 04 Apr 2022 19:30:00 -0000
Date:   Mon, 4 Apr 2022 14:30:00 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, l.stach@pengutronix.de,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Robert Foss <robert.foss@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: lt9211: Add Lontium
 LT9211 bridge driver
Message-ID: <YktHOBXZvMPWbrgk@robh.at.kernel.org>
References: <20220330212231.90904-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220330212231.90904-1-marex@denx.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 30, 2022 at 11:22:30PM +0200, Marek Vasut wrote:
> Add bindings for Lontium LT9211 Single/Dual-Link DSI/LVDS or Single DPI to
> Single-link/Dual-Link DSI/LVDS or Single DPI bridge. This chip is highly
> capable at converting formats, but sadly it is also highly undocumented.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Maxime Ripard <maxime@cerno.tech>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
>  .../display/bridge/lontium,lt9211.yaml        | 117 ++++++++++++++++++
>  1 file changed, 117 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/lontium,lt9211.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt9211.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt9211.yaml
> new file mode 100644
> index 000000000000..2faa855b3824
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt9211.yaml
> @@ -0,0 +1,117 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/lontium,lt9211.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Lontium LT9211 DSI/LVDS/DPI to DSI/LVDS/DPI bridge.
> +
> +maintainers:
> +  - Marek Vasut <marex@denx.de>
> +
> +description: |
> +  The LT9211 are bridge devices which convert Single/Dual-Link DSI/LVDS
> +  or Single DPI to Single/Dual-Link DSI/LVDS or Single DPI.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - lontium,lt9211
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  reset-gpios:
> +    maxItems: 1
> +    description: GPIO connected to active high RESET pin.
> +
> +  vccio-supply:
> +    description: Regulator for 1.8V IO power.
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Primary MIPI DSI port-1 for MIPI input or
> +          LVDS port-1 for LVDS input or DPI input.
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Additional MIPI port-2 for MIPI input or LVDS port-2
> +          for LVDS input. Used in combination with primary
> +          port-1 to drive higher resolution displays
> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Primary MIPI DSI port-1 for MIPI output or
> +          LVDS port-1 for LVDS output or DPI output.
> +
> +      port@3:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Additional MIPI port-2 for MIPI output or LVDS port-2
> +          for LVDS output. Used in combination with primary
> +          port-1 to drive higher resolution displays.
> +
> +    required:
> +      - port@0
> +      - port@2
> +
> +required:
> +  - compatible
> +  - reg
> +  - vccio-supply
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c10 {

i2c {

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      hdmi-bridge@3b {
> +        compatible = "lontium,lt9211";
> +        reg = <0x3b>;
> +
> +        reset-gpios = <&tlmm 128 GPIO_ACTIVE_HIGH>;
> +        interrupts-extended = <&tlmm 84 IRQ_TYPE_EDGE_FALLING>;
> +
> +        vccio-supply = <&lt9211_1v8>;
> +
> +        ports {
> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +
> +          port@0 {
> +            reg = <0>;
> +
> +            endpoint {
> +              remote-endpoint = <&dsi0_out>;
> +            };
> +          };
> +
> +          port@2 {
> +            reg = <2>;
> +
> +            endpoint {
> +              remote-endpoint = <&panel_in_lvds>;
> +            };
> +          };
> +        };
> +      };
> +    };
> +
> +...
> -- 
> 2.35.1
> 
> 
