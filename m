Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6C62429A81
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 02:44:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229606AbhJLApU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 20:45:20 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:42669 "EHLO
        mail-ot1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbhJLApT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Oct 2021 20:45:19 -0400
Received: by mail-ot1-f54.google.com with SMTP id c26-20020a056830349a00b0054d96d25c1eso23754676otu.9
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 17:43:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=C0veIXD12tRwkmARbIUPpytHwuGDS9GaI5ZCAL0YxtM=;
        b=mL8JmgZ03hIYWkmHMD9RUkF8FN12X8NgvwrPGcZKpHhSVoDEBLtR5x6VgKM+6/gZp+
         8CHlJkxTlce/SqG2t2vOG7FUGB+OWnt2FGAIq20YEPlzSWZxe/i8bhBny+yMBOjl1PHS
         P3YF/57yQ1jBDiC6R40jOHAx+v+Fx24N2K2LhwqC0yqtN0hHg7dwW/rfayu5c10PxeQ5
         Io5R+s72SE1TYXSU9EAjdkMTY1DtJSwEdO9b8ecoSZoALdsg2Gx8j2Zm54kFOUUQufa6
         n45p1e/iTbfJSE9w6Wel7zGvKn6s6VFASFCmJT0GJhbRMYK0C61gKQevnnMZXaeY0QnN
         4Jcw==
X-Gm-Message-State: AOAM533b32eBwXJt9uu/zLP14y6+YGOozv+SpDkBYzOUyt7PC5rCJ1hh
        bDGbr3hm62azKF4bqsw1Nw==
X-Google-Smtp-Source: ABdhPJy8M+f4nFxCTH13TvMUHFxJ1m8soMYBOgZhxmB4w7ZoRNTKIjUDBsh0NAvX07BegYnRBAkEOw==
X-Received: by 2002:a05:6830:44a9:: with SMTP id r41mr678852otv.230.1633999398628;
        Mon, 11 Oct 2021 17:43:18 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id p15sm1877611otq.59.2021.10.11.17.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 17:43:17 -0700 (PDT)
Received: (nullmailer pid 1474130 invoked by uid 1000);
        Tue, 12 Oct 2021 00:43:16 -0000
Date:   Mon, 11 Oct 2021 19:43:16 -0500
From:   Rob Herring <robh@kernel.org>
To:     Markus Schneider-Pargmann <msp@baylibre.com>
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Vinod Koul <vkoul@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 2/7] dt-bindings: mediatek,dp: Add Display Port binding
Message-ID: <YWTaJOXGgF2bHznv@robh.at.kernel.org>
References: <20211011094624.3416029-1-msp@baylibre.com>
 <20211011094624.3416029-3-msp@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211011094624.3416029-3-msp@baylibre.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 11, 2021 at 11:46:19AM +0200, Markus Schneider-Pargmann wrote:
> This controller is present on several mediatek hardware. Currently
> mt8195 and mt8395 have this controller without a functional difference,
> so only one compatible field is added.
> 
> The controller can have two forms, as a normal display port and as an
> embedded display port.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> ---
>  .../display/mediatek/mediatek,dp.yaml         | 89 +++++++++++++++++++
>  1 file changed, 89 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> new file mode 100644
> index 000000000000..f7a35962c23b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> @@ -0,0 +1,89 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/mediatek/mediatek,dp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Mediatek Display Port Controller
> +
> +maintainers:
> +  - CK Hu <ck.hu@mediatek.com>
> +  - Jitao shi <jitao.shi@mediatek.com>
> +
> +description: |
> +  Device tree bindings for the Mediatek (embedded) Display Port controller
> +  present on some Mediatek SoCs.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - mediatek,mt8195-edp_tx
> +      - mediatek,mt8195-dp_tx

Are these blocks different?

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: faxi clock
> +
> +  clock-names:
> +    items:
> +      - const: faxi
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Input endpoint of the controller, usually dp_intf
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Output endpoint of the controller
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/mt8195-power.h>
> +    dp_tx: edp_tx@1c500000 {
> +        compatible = "mediatek,mt8195-edp_tx";
> +        reg = <0 0x1c500000 0 0x8000>;
> +        interrupts = <GIC_SPI 676 IRQ_TYPE_LEVEL_HIGH 0>;
> +        power-domains = <&spm MT8195_POWER_DOMAIN_EPD_TX>;
> +        pinctrl-names = "default";
> +        pinctrl-0 = <&edp_pin>;
> +        status = "okay";

Don't show status in examples.

> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +                edp_in: endpoint {
> +                    remote-endpoint = <&dp_intf0_out>;
> +                };
> +            };
> +            port@1 {
> +                reg = <1>;
> +                edp_out: endpoint {
> +                	remote-endpoint = <&panel_in>;
> +                };
> +            };
> +        };
> +    };
> -- 
> 2.33.0
> 
> 
