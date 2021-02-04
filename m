Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1927F30F95A
	for <lists+devicetree@lfdr.de>; Thu,  4 Feb 2021 18:18:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238358AbhBDRQi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 12:16:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238303AbhBDRQY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 12:16:24 -0500
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CAE7C0613D6
        for <devicetree@vger.kernel.org>; Thu,  4 Feb 2021 09:15:37 -0800 (PST)
Received: by mail-qk1-x735.google.com with SMTP id 19so4054058qkh.3
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 09:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=b+yvAuTbc5rOIvErc7i//BiGa1eCFc8XljrLssj6usE=;
        b=OSNMKczffRNRoVWXWit2rArCrXNQl2I7ejm+26dEvVNB9Vu2mk5djVZqhmOml0LyfB
         1gO+w1xjAGKgYq3kyM1PsBjWUKxGlfmRoEfLDthDuYDIBoCh+XC6a/+Xpqa7Y7TythCG
         4rcAQmB0FVUXSDqTUFY6Mcmm6YwztYa1J73r8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=b+yvAuTbc5rOIvErc7i//BiGa1eCFc8XljrLssj6usE=;
        b=QVAz3NvSnmshEYDkXYNCTXTiMBqI46jm9oT0FTaFMiB5xDJBGIJ/Kqd1kWsJledV5a
         sb5+4QEF4XRaYThhT+8OLlqqjuU17n3UyYrhOnCBV2Qgz7gfJTvVRPXle5lWRCXWLIMG
         DmrCOb68nNvIMAjmlOC3lPE/oQYbLDkfhC361NJvNylQAzX05KVswSZhsISKe4jhpMgo
         F7uVRXxDW15PJdjHb7n7m8aKqTeHFIA7dEpPETfUmTKfIBfUw9gpVD+6yz6/5T8MXvDT
         9bCD2MKd+xVIi8Lh39RU/JdJWauLNm9uRzKp9vK43WbCI0JdCrJxhc9keZJPuVIMjy6Q
         IOUQ==
X-Gm-Message-State: AOAM5306W12cJcBaCJB2REo67b55/cj3cDaRj/Y69rF6cCqYQ9alR3Kn
        23S2ToSKH6PWb6pzB5NeVw4k4uRYNgOMrQ==
X-Google-Smtp-Source: ABdhPJwYZXcYC3xlX2t+IebQOa1mc8KtXvj5q37unsF5EsiuL64LQHgLs47MbDcruHMaEihfyTUFXg==
X-Received: by 2002:a37:bd84:: with SMTP id n126mr156326qkf.54.1612458936270;
        Thu, 04 Feb 2021 09:15:36 -0800 (PST)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com. [209.85.219.176])
        by smtp.gmail.com with ESMTPSA id 2sm5656462qkf.97.2021.02.04.09.15.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 09:15:35 -0800 (PST)
Received: by mail-yb1-f176.google.com with SMTP id r2so3883100ybk.11
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 09:15:35 -0800 (PST)
X-Received: by 2002:a25:4fc3:: with SMTP id d186mr229242ybb.343.1612458934778;
 Thu, 04 Feb 2021 09:15:34 -0800 (PST)
MIME-Version: 1.0
References: <20210130181014.161457-1-marex@denx.de>
In-Reply-To: <20210130181014.161457-1-marex@denx.de>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 4 Feb 2021 09:15:22 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UzkP8Rp6BDNVr1FmOK4GY9_dSeT6fCjQLMatHftyj9iA@mail.gmail.com>
Message-ID: <CAD=FV=UzkP8Rp6BDNVr1FmOK4GY9_dSeT6fCjQLMatHftyj9iA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add TI
 SN65DSI83 bindings
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Stephen Boyd <swboyd@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sat, Jan 30, 2021 at 10:10 AM Marek Vasut <marex@denx.de> wrote:
>
> Add DT binding document for TI SN65DSI83 DSI to LVDS bridge.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Stephen Boyd <swboyd@chromium.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
>  .../bindings/display/bridge/ti,sn65dsi83.yaml | 128 ++++++++++++++++++
>  1 file changed, 128 insertions(+)

I'll preface by saying that I'm nowhere near an expert on any of this
stuff.  I've done a bunch of hacking on the sn65dsi86 driver but
mostly I'm a DRM noob and don't have any super expertise in MIPI or
LVDS.


>  create mode 100644 Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> new file mode 100644
> index 000000000000..77e1bafd8cd8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> @@ -0,0 +1,128 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: SN65DSI83 DSI to LVDS bridge chip
> +
> +maintainers:
> +  - Marek Vasut <marex@denx.de>
> +
> +description: |
> +  The Texas Instruments SN65DSI83 bridge takes MIPI DSI in and outputs LVDS.
> +  https://www.ti.com/general/docs/lit/getliterature.tsp?genericPartNumber=sn65dsi83&fileType=pdf
> +
> +properties:
> +  compatible:
> +    const: ti,sn65dsi83
> +
> +  reg:
> +    const: 0x2d
> +
> +  enable-gpios:
> +    maxItems: 1
> +    description: GPIO specifier for bridge_en pin (active high).

I see two regulators: vcc and vcore.  Shouldn't those be listed?

I also see an interrupt pin on the datasheet.  Probably should be
listed too even if the chip can be made to work fine without hooking
it up.  It can just be optional, right?

It wouldn't hurt to list the refclk here too even if the code doesn't
use it.  From sn65dsi86 it was handy that the bindings already had all
this type of stuff so that when we added the feature we didn't have to
go back to the bindings.

> +  ports:
> +    type: object
> +    additionalProperties: false
> +
> +    properties:
> +      "#address-cells":
> +        const: 1
> +
> +      "#size-cells":
> +        const: 0
> +
> +      port@0:
> +        type: object
> +        additionalProperties: false
> +
> +        description:
> +          Video port for MIPI DSI input
> +
> +        properties:
> +          reg:
> +            const: 0
> +
> +          endpoint:
> +            type: object
> +            additionalProperties: false
> +            properties:
> +              remote-endpoint: true
> +              data-lanes:
> +                description: array of physical DSI data lane indexes.

The chip doesn't allow for arbitrary remapping here, right?  So you're
just using this as the official way to specify the number of lanes?  I
guess the only valid values are:

<0>
<0 1>
<0 1 2>
<0 1 2 3>

In sn65dsi86 we attempted to enforce that a valid option was selected
for the output lanes.  Could you do something similar?  If nothing
else adding a description of the valid options would be good.


> +        required:
> +          - reg
> +
> +      port@1:
> +        type: object
> +        additionalProperties: false
> +
> +        description:
> +          Video port for LVDS output (panel or bridge).
> +
> +        properties:
> +          reg:
> +            const: 1
> +
> +          endpoint:
> +            type: object
> +            additionalProperties: false
> +            properties:
> +              remote-endpoint: true

Worth adding the data-lanes here too?  I guess this part allows you
two different orders for the LVDS outputs?


> +
> +        required:
> +          - reg
> +
> +    required:
> +      - "#address-cells"
> +      - "#size-cells"
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - reg
> +  - enable-gpios
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      bridge@2d {
> +        compatible = "ti,sn65dsi83";
> +        reg = <0x2d>;
> +
> +        enable-gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
> +
> +        ports {
> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +
> +          port@0 {
> +            reg = <0>;
> +            endpoint {
> +              remote-endpoint = <&dsi0_out>;
> +              data-lanes = <1 2 3 4>;

Should the above be <0 1 2 3>?



> +            };
> +          };
> +
> +          port@1 {
> +            reg = <1>;
> +            endpoint {
> +              remote-endpoint = <&panel_in_lvds>;
> +            };
> +          };
> +        };
> +      };
> +    };
> --
> 2.29.2
>
