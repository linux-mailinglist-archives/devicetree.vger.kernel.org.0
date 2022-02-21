Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B46124BDE08
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 18:46:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231432AbiBULbi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 06:31:38 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:47680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356454AbiBULbh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 06:31:37 -0500
Received: from smtp.domeneshop.no (smtp.domeneshop.no [IPv6:2a01:5b40:0:3005::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D139CEC
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 03:31:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
        ; s=ds202112; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
        References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=PoQ+bvT1gJMpzNe35fopScMyxUJOkfvO5PCdK+gnnEM=; b=qLjHJB+KR/MYJHLVQr7mDaDR9y
        DGb9qYDMQDQz+w09js3fUwR2+rmsBhnLG+zmTe1C/HrGYUZVpsbhGSytlzzO5sOuPqWW/4I7N+6uL
        05jubqMQp66xrRgvQ4OB1HPxkB+EAldHog9lGSRa7/LN6w5ADX1vJKjw4kua2G3ZROYKgfAEVfXcn
        b6K5914ecsDd7rfN3EFJosJLPxHW6rlbCG8Kfh8n7SluJJt25wNBAYCT0wsSkarVUKuzY6+DPCUAa
        HHVyqaAsHFMhZneIZ3xpwU22z4PcYk2CrsI5TbpfXjwW0in8JvBZRVuy6U3BHeHa/frUwzhhgqxAm
        nA0aP92w==;
Received: from [2a01:799:95e:a400:cca0:57ac:c55d:a485] (port=56049)
        by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <noralf@tronnes.org>)
        id 1nM6uN-0000bi-AQ; Mon, 21 Feb 2022 12:31:11 +0100
Message-ID: <d9ccc11c-0af6-717e-cb3f-514934894180@tronnes.org>
Date:   Mon, 21 Feb 2022 12:31:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH v4 1/3] dt-bindings: display: add bindings for MIPI DBI
 compatible SPI panels
To:     robh+dt@kernel.org, maxime@cerno.tech
Cc:     sam@ravnborg.org, dave.stevenson@raspberrypi.com,
        david@lechnology.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, thierry.reding@gmail.com,
        =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
References: <20220218151110.11316-1-noralf@tronnes.org>
 <20220218151110.11316-2-noralf@tronnes.org>
From:   =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
In-Reply-To: <20220218151110.11316-2-noralf@tronnes.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Den 18.02.2022 16.11, skrev Noralf Trønnes:
> Add binding for MIPI DBI compatible SPI panels.
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
> Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
> ---
>  .../display/panel/panel-mipi-dbi-spi.yaml     | 125 ++++++++++++++++++
>  1 file changed, 125 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> new file mode 100644
> index 000000000000..748c09113168
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml

> +allOf:
> +  - $ref: panel-common.yaml#
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - {} # Panel Specific Compatible
> +      - const: panel-mipi-dbi-spi
> +

Rob's bot uses a -m flag I didn't use, and with that the compatible fails:

$ make DT_CHECKER_FLAGS=-m dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
  CHKDT   Documentation/devicetree/bindings/processed-schema-examples.json
  SCHEMA  Documentation/devicetree/bindings/processed-schema-examples.json
  DTEX
Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.example.dts
  DTC
Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.example.dt.yaml
  CHECK
Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.example.dt.yaml
Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.example.dt.yaml:0:0:
/example-0/spi/display@0: failed to match any schema with compatible:
['sainsmart18', 'panel-mipi-dbi-spi']

How can I write the compatible property to make the checker happy?

Noralf.

> +  write-only:
> +    type: boolean
> +    description:
> +      Controller is not readable (ie. MISO is not wired up).
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
> +                        vactive = <128>;
> +                        hback-porch = <0>;
> +                        vback-porch = <0>;
> +
> +                        clock-frequency = <0>;
> +                        hfront-porch = <0>;
> +                        hsync-len = <0>;
> +                        vfront-porch = <0>;
> +                        vsync-len = <0>;
> +                    };
> +            };
> +    };
> +
> +...
