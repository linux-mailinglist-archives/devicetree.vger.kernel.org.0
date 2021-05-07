Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43255375E26
	for <lists+devicetree@lfdr.de>; Fri,  7 May 2021 03:00:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229775AbhEGBB3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 21:01:29 -0400
Received: from mail-oi1-f179.google.com ([209.85.167.179]:33347 "EHLO
        mail-oi1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229637AbhEGBB3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 May 2021 21:01:29 -0400
Received: by mail-oi1-f179.google.com with SMTP id b25so2020632oic.0
        for <devicetree@vger.kernel.org>; Thu, 06 May 2021 18:00:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=eb5+HKkFnVW+o2UzphP6vW7sV6LAZETZAKG0WZN0QBU=;
        b=P8XpgjHhQejENUgncZSXy23/E06GrIwL2q2pr4rAGN6hjsDWOldPPBzM1xNTseGbJw
         VBKWeVBvGxAwugQ8aUsiYcXMWCnfaO9tlVPD00aRri75ylqT+Xj6ArLiHgVn2qRtoIax
         JBKQ9o3KJpqvhqVjivQhjtFNKvcxXXT5Eho94bgIBZM2irSGBv6/7MV74CpwB00vrsha
         MkSkGljxiEs4iKxLgECXl6nUI5tM9D0q4e5Iz/GHVZjQjsCG6FOPlLL0tbGrCmQgMovf
         hK0FuSDMeH2z2tY8oMpjG0qPb43b+ky38vQQkmURjTLPOE3DqbXNLcrYH20S/tuBrBeA
         Lx1g==
X-Gm-Message-State: AOAM533d2iT/S4R1xgrHfWlBzWYUKtMJxvD0i53OLS5PX1pRwN+ObdL4
        UDEVXKGm0LdiD/ThyupTqRW96bA76g==
X-Google-Smtp-Source: ABdhPJxFj3OOybcWuM3iI8NJDL/CzhjNvI/ok1nUcd+KEaI1ka/6w6nFp1Fu4ZhQ03DiS9wsHVEdgQ==
X-Received: by 2002:aca:eac2:: with SMTP id i185mr12275990oih.171.1620349230204;
        Thu, 06 May 2021 18:00:30 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id a23sm909475otf.47.2021.05.06.18.00.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 May 2021 18:00:29 -0700 (PDT)
Received: (nullmailer pid 1108024 invoked by uid 1000);
        Fri, 07 May 2021 01:00:28 -0000
Date:   Thu, 6 May 2021 20:00:28 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, ch@denx.de,
        Douglas Anderson <dianders@chromium.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Stephen Boyd <swboyd@chromium.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH V3 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add TI
 SN65DSI83 and SN65DSI84 bindings
Message-ID: <20210507010028.GA1101578@robh.at.kernel.org>
References: <20210505100218.108024-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210505100218.108024-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 05, 2021 at 12:02:17PM +0200, Marek Vasut wrote:
> Add DT binding document for TI SN65DSI83 and SN65DSI84 DSI to LVDS bridge.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Stephen Boyd <swboyd@chromium.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
> V2: Add compatible string for SN65DSI84, since this is now tested on it
> V3: - Add 0x2c as valid i2c address
>     - Switch to schemas/graph.yaml
>     - Constraint data-lanes to <1>, <1 2>, <1 2 3>, <1 2 3 4> only
>     - Indent example by 4 spaces
>     - Handle dual-link LVDS with two ports and describe the second DSI
>       channel-B port as well. Based on the register defaults of DSI83
>       and DSI84, it is likely that the LVDS-channel-B and DSI-channel-B
>       hardware is present in all the chips, so just reuse port@0 and 2
>       for DSI83, port@0,2,3 for DSI84 and all of 0,1,2,3 for DSI85 when
>       that is supported
> ---
>  .../bindings/display/bridge/ti,sn65dsi83.yaml | 171 ++++++++++++++++++
>  1 file changed, 171 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> new file mode 100644
> index 000000000000..4e7df92446a9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> @@ -0,0 +1,171 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: SN65DSI83 and SN65DSI84 DSI to LVDS bridge chip
> +
> +maintainers:
> +  - Marek Vasut <marex@denx.de>
> +
> +description: |
> +  Texas Instruments SN65DSI83 1x Single-link MIPI DSI
> +  to 1x Single-link LVDS
> +  https://www.ti.com/lit/gpn/sn65dsi83
> +  Texas Instruments SN65DSI84 1x Single-link MIPI DSI
> +  to 1x Dual-link or 2x Single-link LVDS
> +  https://www.ti.com/lit/gpn/sn65dsi84
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: ti,sn65dsi83
> +      - const: ti,sn65dsi84

Use 'enum' instead of oneOf+const.

> +
> +  reg:
> +    oneOf:
> +      - const: 0x2c
> +      - const: 0x2d

Ditto

> +
> +  enable-gpios:
> +    maxItems: 1
> +    description: GPIO specifier for bridge_en pin (active high).
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Video port for MIPI DSI Channel-A input
> +
> +        properties:
> +          endpoint:
> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base

This should actually be video-interfaces.yaml since you use one of the 
properties from it.

> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:
> +                description: array of physical DSI data lane indexes.
> +                minItems: 1
> +                maxItems: 4
> +                items:
> +                  - const: 1
> +                  - const: 2
> +                  - const: 3
> +                  - const: 4
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Video port for MIPI DSI Channel-B input
> +
> +        properties:
> +          endpoint:
> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:
> +                description: array of physical DSI data lane indexes.
> +                minItems: 1
> +                maxItems: 4
> +                items:
> +                  - const: 1
> +                  - const: 2
> +                  - const: 3
> +                  - const: 4
> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Video port for LVDS Channel-A output (panel or bridge).
> +
> +        properties:
> +          endpoint:
> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> +            description: LVDS Channel-A output endpoint
> +            unevaluatedProperties: false

No need for 'endpoint' unless you have extra properties in it.

> +
> +      port@3:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Video port for LVDS Channel-A output (panel or bridge).
> +
> +        properties:
> +          endpoint:
> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
> +            description: LVDS Channel-B output endpoint
> +            unevaluatedProperties: false

Ditto

> +
> +    required:
> +      - port@0
> +      - port@2
> +
> +required:
> +  - compatible
> +  - reg
> +  - enable-gpios
> +  - ports
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: ti,sn65dsi83
> +    then:
> +      properties:
> +        ports:
> +          properties:
> +            port@1: false
> +            port@3: false
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: ti,sn65dsi84
> +    then:
> +      properties:
> +        ports:
> +          properties:
> +            port@1: false
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        bridge@2d {
> +            compatible = "ti,sn65dsi83";
> +            reg = <0x2d>;
> +
> +            enable-gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;
> +
> +                    endpoint {
> +                        remote-endpoint = <&dsi0_out>;
> +                        data-lanes = <1 2 3 4>;
> +                    };
> +                };
> +
> +                port@2 {
> +                    reg = <2>;
> +
> +                    endpoint {
> +                        remote-endpoint = <&panel_in_lvds>;
> +                    };
> +                };
> +            };
> +        };
> +    };
> -- 
> 2.30.2
> 
