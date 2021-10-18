Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78E94431F58
	for <lists+devicetree@lfdr.de>; Mon, 18 Oct 2021 16:19:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231718AbhJROVX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 10:21:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231676AbhJROVW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Oct 2021 10:21:22 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DEB7C061745
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 07:19:11 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id v17so41656683wrv.9
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 07:19:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=rO3u8W1re/ntjdP9B4sW4LejsVx7mXqMR7pW2tEhW4Q=;
        b=O1+Nn4hkoQfSRaziBOLEs2H+RirbluSCSD2tQr2FERY9FAdMZDgS4CIeefn/xx37rH
         IAO7Knk0l1HaAtY6Ao88to0IiCogKf3A7qSuF9m6WAs3AOLOfp6VBcEpsFjgIolVmWlo
         IF3if4zl55WYSoLr+JIK1zCHCSaJKFgnWKgbzV7RNp5zvBKAKdJ18ErF0Ro/f64fPWBb
         4H0CTJOn9w0dkOq9zN/9iMra26JvcTahNTop4fNcPzhu3pYg5v/RAMzxx63E4z8hz1Af
         iXxBddPkSiPkh6BvUsQVcV8D4Zx1xCFgfsP39ah0399lXTwni8cKxn/jDFVvMGN+FFkn
         JQeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=rO3u8W1re/ntjdP9B4sW4LejsVx7mXqMR7pW2tEhW4Q=;
        b=t/YTlBFKXnk6ULHcaPg+1K4cN6IPyuP81AcHY9Q+CRnRbSuO00TAc1DolMe80fNrb8
         dBRs7s2pLx7v08cxA94Xubp2XN6fUM1hYjm/R2ezd4EVcnLcV6KtkW1hrD+yIu9iRG4F
         qwAzBDf7d+8iUWpyppAR3dbGpwmWExXEASDiWONlXtipSfi1CQjtSfrdJnCGfqTSytat
         r/a/aJRys/pay8FnRabgfM7e4PZ7k19xe7y49grbbP8xQtRIf+wzg7V0VNHSw2B5nTwr
         E76c6cvaGLugPiz1T/pUq7SbQ3aQCrSdSyXYXhSblL7gp65ePOaSv5FzvtO6uUprrreM
         tiqA==
X-Gm-Message-State: AOAM531U/1TnojfNJ0IsI1zOkcd0gth5IwSyQXDc801Dzj2fo+W3RO32
        mSHfZSTe2/Og/zwkqF8jlB6iuQ==
X-Google-Smtp-Source: ABdhPJx6QFnBuYrXhffPsvdEadj2vqw25nodwUVxgLLLJThHk6Zdq74Bt+K0UKskiB3M9DghQfMYMA==
X-Received: by 2002:adf:eb4f:: with SMTP id u15mr36415532wrn.215.1634566750156;
        Mon, 18 Oct 2021 07:19:10 -0700 (PDT)
Received: from blmsp ([2a02:2454:3e6:c900:5142:5fbb:5821:5dc3])
        by smtp.gmail.com with ESMTPSA id a2sm12835406wru.82.2021.10.18.07.19.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 07:19:09 -0700 (PDT)
Date:   Mon, 18 Oct 2021 16:19:08 +0200
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Vinod Koul <vkoul@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 2/7] dt-bindings: mediatek,dp: Add Display Port binding
Message-ID: <20211018141908.fuevv2m66fw3xg36@blmsp>
References: <20211011094624.3416029-1-msp@baylibre.com>
 <20211011094624.3416029-3-msp@baylibre.com>
 <YWTaJOXGgF2bHznv@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YWTaJOXGgF2bHznv@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Mon, Oct 11, 2021 at 07:43:16PM -0500, Rob Herring wrote:
> On Mon, Oct 11, 2021 at 11:46:19AM +0200, Markus Schneider-Pargmann wrote:
> > This controller is present on several mediatek hardware. Currently
> > mt8195 and mt8395 have this controller without a functional difference,
> > so only one compatible field is added.
> > 
> > The controller can have two forms, as a normal display port and as an
> > embedded display port.
> > 
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > ---
> >  .../display/mediatek/mediatek,dp.yaml         | 89 +++++++++++++++++++
> >  1 file changed, 89 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> > new file mode 100644
> > index 000000000000..f7a35962c23b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> > @@ -0,0 +1,89 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/mediatek/mediatek,dp.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Mediatek Display Port Controller
> > +
> > +maintainers:
> > +  - CK Hu <ck.hu@mediatek.com>
> > +  - Jitao shi <jitao.shi@mediatek.com>
> > +
> > +description: |
> > +  Device tree bindings for the Mediatek (embedded) Display Port controller
> > +  present on some Mediatek SoCs.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - mediatek,mt8195-edp_tx
> > +      - mediatek,mt8195-dp_tx
> 
> Are these blocks different?

Good point, the registers of these blocks are described in its own
chapter each. Also I do need to distinguish between both in the driver.
Would you suggest making this distinction differently or keep it as two
compatibles?

> 
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: faxi clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: faxi
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +    properties:
> > +      port@0:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: Input endpoint of the controller, usually dp_intf
> > +
> > +      port@1:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description: Output endpoint of the controller
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - ports
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/power/mt8195-power.h>
> > +    dp_tx: edp_tx@1c500000 {
> > +        compatible = "mediatek,mt8195-edp_tx";
> > +        reg = <0 0x1c500000 0 0x8000>;
> > +        interrupts = <GIC_SPI 676 IRQ_TYPE_LEVEL_HIGH 0>;
> > +        power-domains = <&spm MT8195_POWER_DOMAIN_EPD_TX>;
> > +        pinctrl-names = "default";
> > +        pinctrl-0 = <&edp_pin>;
> > +        status = "okay";
> 
> Don't show status in examples.

Fixed.

Thank you Rob.

Best,
Markus

> 
> > +
> > +        ports {
> > +            #address-cells = <1>;
> > +            #size-cells = <0>;
> > +
> > +            port@0 {
> > +                reg = <0>;
> > +                edp_in: endpoint {
> > +                    remote-endpoint = <&dp_intf0_out>;
> > +                };
> > +            };
> > +            port@1 {
> > +                reg = <1>;
> > +                edp_out: endpoint {
> > +                	remote-endpoint = <&panel_in>;
> > +                };
> > +            };
> > +        };
> > +    };
> > -- 
> > 2.33.0
> > 
> > 
