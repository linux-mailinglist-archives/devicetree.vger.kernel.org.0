Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1C9245CFFE
	for <lists+devicetree@lfdr.de>; Wed, 24 Nov 2021 23:23:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235361AbhKXW0a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Nov 2021 17:26:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235257AbhKXW03 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Nov 2021 17:26:29 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C86C9C061574
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 14:23:19 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1C71C90E;
        Wed, 24 Nov 2021 23:23:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1637792598;
        bh=nwyXy2n+t7f6uh/Tz6lmmaO9N4fqbQbt5EcMe1U0H8Q=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=I5gz+1V+K32xJxXD0j+oifs8WK0TwxcXJIz92R9b4TC25Zk68JZRtw0KNAbSnFwsC
         hmT6i6eS7mYIRSG8vizC4Ts8tvKSY1Yp4ID6XHOn9yEmEf9hijzCCWMYqvTwDLD399
         PPcSl8lHNFUk4FX+CNBA+AcULUvqKPuG/e4z9eGg=
Date:   Thu, 25 Nov 2021 00:22:54 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Christopher Vollo <chris@renewoutreach.org>
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: Add TI DLPC3433
 bindings
Message-ID: <YZ67Pm2vbSyWMIam@pendragon.ideasonboard.com>
References: <20211124172553.519309-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211124172553.519309-1-jagan@amarulasolutions.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jagan,

Thank you for the patch.

On Wed, Nov 24, 2021 at 10:55:52PM +0530, Jagan Teki wrote:
> TI DLPC3433 is a MIPI DSI based display controller bridge
> for processing high resolution DMD based projectors.
> 
> It has a flexible configuration of MIPI DSI signal input
> produces RGB565, RGB666, RGB888 output format with maximum
> of 720p resolution in 60 and 120 Hz refresh rates.
> 
> Add dt-bingings for it.
> 
> Signed-off-by: Christopher Vollo <chris@renewoutreach.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  .../bindings/display/bridge/ti,dlpc3433.yaml  | 112 ++++++++++++++++++
>  MAINTAINERS                                   |   6 +
>  2 files changed, 118 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml b/Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml
> new file mode 100644
> index 000000000000..3ade3a575c3e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml
> @@ -0,0 +1,112 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/ti,dlpc3433.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI DLPC3433 Display Controller
> +
> +maintainers:
> +  - Jagan Teki <jagan@amarulasolutions.com>
> +  - Christopher Vollo <chris@renewoutreach.org>
> +
> +description: |
> +  The DLPC3433 or DLPC3438 controllers provide a convenient,
> +  multi-functional interface between system electronics and
> +  the DMD, enabling small form factor, low power, and high
> +  resolution HD displays.

You may want to mention in the title and/or description that this is a
DSI to DMD bridge. Actually, the device also supports a DPI input, which
should be modelled in the DT bindings.

> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,dlpc3433

Or just

  compatible:
    const: ti,dlpc3433

> +
> +  reg:
> +    maxItems: 1
> +    description: virtual channel number of a DSI peripheral

I don't think this is right, the reg is the I2C address. You can drop
the description.

> +
> +  enable-gpios:
> +    description: PROJ_EN pin, chip powers up PROJ_EN is high.

It's called PROJ_ON, not PROJ_EN, in the datasheet.

> +
> +  vcc_intf-supply:
> +    description: A 1.8V/3.3V supply that power the Host I/O.
> +
> +  vcc_flsh-supply:
> +    description: A 1.8V/3.3V supply that power the Flash I/O.
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description: Video port for MIPI DSI input.
> +
> +        properties:
> +          endpoint:
> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:
> +                description: array of physical DSI data lane indexes.
> +                minItems: 1
> +                items:
> +                  - const: 1
> +                  - const: 2
> +                  - const: 3
> +                  - const: 4
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Video port for DPI output (DMD Projector).

The output isn't DPI, but DMD.

> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - reg
> +  - enable-gpios

Can the chip be used with the PROJ_ON input hardwired to a high logic
state, or does it need to be controlled ?

> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c1 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        bridge@1d {
> +            compatible = "ti,dlpc3433";
> +            reg = <0x1d>;
> +            enable-gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;
> +
> +                    bridge_in_dsi: endpoint {
> +                        remote-endpoint = <&dsi_out_bridge>;
> +                        data-lanes = <1 2 3 4>;
> +                    };
> +                };
> +
> +                port@1 {
> +                    reg = <1>;
> +
> +                    bridge_out_panel: endpoint {
> +                        remote-endpoint = <&panel_out_bridge>;
> +                    };
> +                };
> +            };
> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index f32c7d733255..a3019399dec0 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -6198,6 +6198,12 @@ DRM DRIVER FOR TDFX VIDEO CARDS
>  S:	Orphan / Obsolete
>  F:	drivers/gpu/drm/tdfx/
>  
> +DRM DRIVER FOR TI DLPC3433 MIPI DSI DISPLAY CONTROLLER BRIDGE
> +M:	Jagan Teki <jagan@amarulasolutions.com>
> +M:	Christopher Vollo <chris@renewoutreach.org>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml
> +
>  DRM DRIVER FOR TPO TPG110 PANELS
>  M:	Linus Walleij <linus.walleij@linaro.org>
>  S:	Maintained

-- 
Regards,

Laurent Pinchart
