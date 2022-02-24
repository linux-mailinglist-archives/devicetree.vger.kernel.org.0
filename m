Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2415E4C34E2
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 19:42:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232926AbiBXSlo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 13:41:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231322AbiBXSlm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 13:41:42 -0500
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D125525F365
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 10:41:11 -0800 (PST)
Received: by mail-oi1-f170.google.com with SMTP id j2so4123653oie.7
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 10:41:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Nxq3BMyTsUkFwMZdrzuD1Tb3ZNjNUmA4Poy2IHN21Kc=;
        b=T9e2s+yaBk6oc2aTP2/ZN62iJANLEjApVMr6EpLn9dTLEX78N8m28ozzyXJlgfoI8j
         bH6n7DqoAgSl39czUjwlAGIXZxsOrST7gtgGFSW/6bgljWug8BB0u7g8bfiZXqaHdJT4
         1MNQ3vzH09wYYhRRh+mTyoCGTcoMNhAQ5/d+Ecm1e5ecP+6mUiu0/BW/O5y8dCZmu38e
         Kum+ueMP8oBcGp5GeLEvbwZu6LWGKnbzokN7Y6CCBX3iRgIkY4l63paCGeggrHOB+A3H
         J3hiWZZm8cuJqX+dtPKdOzwil3mmwEoUv6kcK4Vp4dY0hA+pniUdRvCqtbfxfR/EoOaB
         w3oQ==
X-Gm-Message-State: AOAM5337Ah6Tb606X3evG3xJTEA3754NDdcJeRdP1Z0K9prXbwGhdlDe
        rpKRLXf/OW3qjWhkWXLp9w==
X-Google-Smtp-Source: ABdhPJyJgAnznS45eOMMUV+egytjCox470wo12U5/RxeoSiV1WJ67kQRm5X+OymUOX/yrLnTmixdFw==
X-Received: by 2002:aca:32c1:0:b0:2ce:6ee7:2c9f with SMTP id y184-20020aca32c1000000b002ce6ee72c9fmr7963059oiy.205.1645728071097;
        Thu, 24 Feb 2022 10:41:11 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id ay6-20020a056808300600b002d45f1a02d7sm153421oib.6.2022.02.24.10.41.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 10:41:10 -0800 (PST)
Received: (nullmailer pid 3375280 invoked by uid 1000);
        Thu, 24 Feb 2022 18:41:09 -0000
Date:   Thu, 24 Feb 2022 12:41:09 -0600
From:   Rob Herring <robh@kernel.org>
To:     Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc:     dri-devel@lists.freedesktop.org, sam@ravnborg.org,
        maxime@cerno.tech, dave.stevenson@raspberrypi.com,
        david@lechnology.com, devicetree@vger.kernel.org,
        thierry.reding@gmail.com
Subject: Re: [PATCH v5 1/5] dt-bindings: display: add bindings for MIPI DBI
 compatible SPI panels
Message-ID: <YhfRRa+BJs7H/gkU@robh.at.kernel.org>
References: <20220224152708.14459-1-noralf@tronnes.org>
 <20220224152708.14459-2-noralf@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220224152708.14459-2-noralf@tronnes.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 24, 2022 at 04:27:04PM +0100, Noralf Trønnes wrote:
> Add binding for MIPI DBI compatible SPI panels.
> 
> v5:
> - Add sainsmart18 to compatible items (Rob)
> - Expand write-only description (Sam)
> 
> v4:
> - There should only be two compatible (Maxime)
> - s/panel-dbi-spi/panel-mipi-dbi-spi/in compatible
> 
> v3:
> - Move properties to Device Tree (Maxime)
> - Use contains for compatible (Maxime)
> - Add backlight property to example
> - Flesh out description
> 
> v2:
> - Fix path for panel-common.yaml
> - Use unevaluatedProperties
> - Drop properties which are in the allOf section
> - Drop model property (Rob)
> 
> Acked-by: Maxime Ripard <maxime@cerno.tech>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
> ---
>  .../display/panel/panel-mipi-dbi-spi.yaml     | 127 ++++++++++++++++++
>  1 file changed, 127 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> new file mode 100644
> index 000000000000..a054f65435ce
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> @@ -0,0 +1,127 @@
> +# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/panel-mipi-dbi-spi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MIPI DBI SPI Panel
> +
> +maintainers:
> +  - Noralf Trønnes <noralf@tronnes.org>
> +
> +description: |
> +  This binding is for display panels using a MIPI DBI compatible controller
> +  in SPI mode.
> +
> +  The MIPI Alliance Standard for Display Bus Interface defines the electrical
> +  and logical interfaces for display controllers historically used in mobile
> +  phones. The standard defines 4 display architecture types and this binding is
> +  for type 1 which has full frame memory. There are 3 interface types in the
> +  standard and type C is the serial interface.
> +
> +  The standard defines the following interface signals for type C:
> +  - Power:
> +    - Vdd: Power supply for display module
> +    - Vddi: Logic level supply for interface signals
> +    Combined into one in this binding called: power-supply
> +  - Interface:
> +    - CSx: Chip select
> +    - SCL: Serial clock
> +    - Dout: Serial out
> +    - Din: Serial in
> +    - SDA: Bidrectional in/out
> +    - D/CX: Data/command selection, high=data, low=command
> +      Called dc-gpios in this binding.
> +    - RESX: Reset when low
> +      Called reset-gpios in this binding.
> +
> +  The type C interface has 3 options:
> +
> +    - Option 1: 9-bit mode and D/CX as the 9th bit
> +      |              Command              |  the next command or following data  |
> +      |<0><D7><D6><D5><D4><D3><D2><D1><D0>|<D/CX><D7><D6><D5><D4><D3><D2><D1><D0>|
> +
> +    - Option 2: 16-bit mode and D/CX as a 9th bit
> +      |              Command or data                              |
> +      |<X><X><X><X><X><X><X><D/CX><D7><D6><D5><D4><D3><D2><D1><D0>|
> +
> +    - Option 3: 8-bit mode and D/CX as a separate interface line
> +      |        Command or data         |
> +      |<D7><D6><D5><D4><D3><D2><D1><D0>|
> +
> +  The panel resolution is specified using the panel-timing node properties
> +  hactive (width) and vactive (height). The other mandatory panel-timing
> +  properties should be set to zero except clock-frequency which can be
> +  optionally set to inform about the actual pixel clock frequency.
> +
> +  If the panel is wired to the controller at an offset specify this using
> +  hback-porch (x-offset) and vback-porch (y-offset).
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +        - sainsmart18
> +      - const: panel-mipi-dbi-spi
> +
> +  write-only:
> +    type: boolean
> +    description:
> +      Controller is not readable (ie. Din (MISO on the SPI interface) is not
> +      wired up).
> +
> +  dc-gpios:
> +    maxItems: 1
> +    description: |
> +      Controller data/command selection (D/CX) in 4-line SPI mode.
> +      If not set, the controller is in 3-line SPI mode.
> +
> +required:
> +  - compatible
> +  - reg
> +  - panel-timing
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    spi {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            display@0{
> +                    compatible = "sainsmart18", "panel-mipi-dbi-spi";
> +                    reg = <0>;
> +                    spi-max-frequency = <40000000>;
> +
> +                    dc-gpios = <&gpio 24 GPIO_ACTIVE_HIGH>;
> +                    reset-gpios = <&gpio 25 GPIO_ACTIVE_HIGH>;
> +                    write-only;
> +
> +                    backlight = <&backlight>;
> +
> +                    width-mm = <35>;
> +                    height-mm = <28>;
> +
> +                    panel-timing {
> +                        hactive = <160>;

The indentation is inconsistent here. I'd suggest using 4 spaces for 
each level.

With that and yamllint fix,

Reviewed-by: Rob Herring <robh@kernel.org>


> +                        vactive = <128>;
> +                        hback-porch = <0>;
> +                        vback-porch = <0>;
> +
> +                        clock-frequency = <0>;
> +                        hfront-porch = <0>;
> +                        hsync-len = <0>;
> +                        vfront-porch = <0>;
> +                        vsync-len = <0>;

0 doesn't make much sense here. 

If most of this is n/a and just populated to satisfy the schema, we 
should probably make all these optional. Anyway, that's a separate 
issue to address.

Rob
