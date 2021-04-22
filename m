Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 862EC367CAD
	for <lists+devicetree@lfdr.de>; Thu, 22 Apr 2021 10:38:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235503AbhDVIjV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Apr 2021 04:39:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235498AbhDVIjS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Apr 2021 04:39:18 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18280C06174A
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 01:38:44 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id w7-20020a1cdf070000b0290125f388fb34so2776411wmg.0
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 01:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=e/+oo5NyWhxN8td4aAh9SsnnFirRgQL1gPvUfVwD200=;
        b=pkB2qIX1usxFoCNOI2x3+oaGnCZE8vB+31MwBTWvuKgbLe/MnyjERza/5A2qeA1Uq0
         V3N2zi/t/QQI/pG2oTryHaWiivXLOBHUvlnNnSDw6YJftjxQ12Gjt3tZ5PZlSzUvAJa5
         VIYnP6R/et6DPyl0/5P0H2Yr0KGxruw3lA9ZamlTXYDTwQDOv6gvbJKT3ODOmLHNzMhi
         QfqC+Z9Qf62l6bwNhxnJxF7/hKpzf3Q4YJRmXbbDvXeshx9tocSleoKc8FMmMy1hHD9t
         ntlk4YRTzR0saqmXJBuQTJm0lOqQYckvCcwGT7D3XF+Qykwjpks92kH7sln+gv2FWiiE
         zvTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=e/+oo5NyWhxN8td4aAh9SsnnFirRgQL1gPvUfVwD200=;
        b=cht95HBsO7vcQznFdmuzyyoEtov7hUJTd/2JAqNlvxdgWhA7Btgb8YcxOiU+YNGGa8
         pS/1tTw36RGT2zQogNi5HCe16lPdD4SwqVcpaoosIvc2RYgU3sEXGMyneD58/k8pWWHS
         qdE0rc6ptBCXOcc8XE8UPbgjuToIl80buJOwuyl+e2pxh/TshyFTMergfslr0g+u/cV0
         +KhGuEoauM7YNMAYgUpXrPhX7w2dX06scqLnsiM577AI30I8YryvgPd27forFaPteVfe
         KWhRC7AaB4kXhJpI4QW0Wv5PQzlIoQYiCuVrilMReRjvZpVHUlMdIuvSfQS6+mW3kQ71
         ntXg==
X-Gm-Message-State: AOAM530xdDRtWAzNSLtV99FKoeSZ54gWSDvKI1nk0oAi+QMiIrwlzhol
        XKteqhK6fNASAOjAynMdKMTiFA==
X-Google-Smtp-Source: ABdhPJw0qRItyXI0pzjkKJwKn1n4YLbsxzSoq8E70voh0hqRrA92cKUJw89gaQ6iXB6LnwWEdz8dLQ==
X-Received: by 2002:a7b:c006:: with SMTP id c6mr2507234wmb.129.1619080722686;
        Thu, 22 Apr 2021 01:38:42 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:90c:e290:916d:6f7:3c58:6b43? ([2a01:e0a:90c:e290:916d:6f7:3c58:6b43])
        by smtp.gmail.com with ESMTPSA id u9sm2245828wmc.38.2021.04.22.01.38.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 01:38:42 -0700 (PDT)
Subject: Re: [PATCH V2 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add TI
 SN65DSI83 and SN65DSI84 bindings
To:     Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, ch@denx.de,
        Douglas Anderson <dianders@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20210421223122.112736-1-marex@denx.de>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <9ffbea6e-c341-4a43-3c9e-0b177cfe98d5@baylibre.com>
Date:   Thu, 22 Apr 2021 10:38:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210421223122.112736-1-marex@denx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/04/2021 00:31, Marek Vasut wrote:
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
> ---
>  .../bindings/display/bridge/ti,sn65dsi83.yaml | 134 ++++++++++++++++++
>  1 file changed, 134 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> new file mode 100644
> index 000000000000..42d11b46a1eb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> @@ -0,0 +1,134 @@
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

Similar to Jagan's serie, would be great to add bindings for the dual-link LVDS even if not supported
by the driver (the driver can fails with a verbose error).

Neil

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
> 

