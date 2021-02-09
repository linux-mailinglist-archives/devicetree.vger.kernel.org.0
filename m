Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D289E3158BE
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 22:42:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234077AbhBIViN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 16:38:13 -0500
Received: from mail-ua1-f43.google.com ([209.85.222.43]:40843 "EHLO
        mail-ua1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233331AbhBIUu7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 15:50:59 -0500
Received: by mail-ua1-f43.google.com with SMTP id 30so1979939uac.7
        for <devicetree@vger.kernel.org>; Tue, 09 Feb 2021 12:50:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ZOJ3/xZbrYavgOoCQR7u2DEXz/TzJ11fMpN1m2ECp9w=;
        b=aUxJF8xyjbEh/e1cHbHBoRY9r+EPR1FqnAFkAoPMTfyn9FCGfeMJq6qiJEY4nuv7Cr
         Xkd2IIaGO0wGoForPO81aZpxOxPR0t5QTWfYhA806LZ/6Ot292SsS4R102uttNNU+6fP
         pEuhBHlIhOvFn7mcz9IzR7eNZPgzVgwFbSKPeWXnmhhL0iu6PfqwQ9+08WvxJxSxvRsA
         yEtTgPh0epuCICyXdHWQ1HtBXDhRGt1FTUuJq6dwIzBNS5a3TFbSp9tvJhDpC7nfN6MK
         u01019qnM6ESiug+nZossatvWVQXxB70lND5FjwUpPAuULhWRrkvozXcRCJZwG5FpKCu
         6r6A==
X-Gm-Message-State: AOAM530l4E0Q+VDlT/Zyxu6BJfKeW7LgxBmrRwaUS+U+LNPs8BuT76JG
        qfqEtFNqX9mhAbQdAcJ0JUG3iEbl2w==
X-Google-Smtp-Source: ABdhPJwhQ9AAOunj+XPxDONZPOSBzu6VAfoY7nift3HRk/RnSl8wAChUeH9QkwuuwtgqyBkgYxKqcA==
X-Received: by 2002:a05:6830:1bf5:: with SMTP id k21mr16990317otb.207.1612901943725;
        Tue, 09 Feb 2021 12:19:03 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id y5sm2094523oti.59.2021.02.09.12.19.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Feb 2021 12:19:02 -0800 (PST)
Received: (nullmailer pid 98230 invoked by uid 1000);
        Tue, 09 Feb 2021 20:19:01 -0000
Date:   Tue, 9 Feb 2021 14:19:01 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org,
        Douglas Anderson <dianders@chromium.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Stephen Boyd <swboyd@chromium.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add TI
 SN65DSI83 bindings
Message-ID: <20210209201901.GA82980@robh.at.kernel.org>
References: <20210130181014.161457-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210130181014.161457-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 30, 2021 at 07:10:13PM +0100, Marek Vasut wrote:
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
> +
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

This all needs to use graph.yaml and video-interfaces.yaml. The latter 
is in the media tree. See examples there for what to do. It will have to 
wait for rc1 to apply to drm-misc.

For data-lanes, you need to specify how many lanes are valid. If there's 
only 1 possible setting (in the h/w, not driver), then it doesn't need 
to be in DT.

I agree with Doug on adding the regulators. Hard to get wrong in the 
binding. You or someone can add them to the driver when you can test.

> +
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
