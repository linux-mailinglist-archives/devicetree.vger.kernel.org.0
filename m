Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19F44507120
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 16:58:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239088AbiDSO4S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 10:56:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353523AbiDSO4R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 10:56:17 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 754E33AA57
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 07:53:34 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id s14so15987856plk.8
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 07:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=c4jz1QTzif//5wCIw3BdEbaKBs0UpQUXyXv6HJnmb1Y=;
        b=cQQS3EgJnb4tSSobdbHC+yTwfXxfo/QLfNUmLKx9JpLVsqDezr1nYXR+MifghjZPlu
         BGjYRTFi9gEmxPsMtEfviqSotyLcBGaDWVD5E45Ct75ql+Wg7WaQFwlypmcOqHnPXJR3
         E1kT7Hcsb0hVv7cNCHM3JLFm/u5M9nP2sUczuZqnkKeq6HnICph2o1SXugQJ8QNB+Hb5
         eEX4xfQRy2uhZ8I3t/T65S/yzK2QaRynWT3lfI4ChCv8slblP6AZ+wnUwyg0aLOyNMRV
         TbpeC6f2JYz44y3MNXJXTMXsLYRLAMu7fVa6/GsQMGx6rtZ+ZvdAvEP6hi8F2VQpuJZh
         TGbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=c4jz1QTzif//5wCIw3BdEbaKBs0UpQUXyXv6HJnmb1Y=;
        b=i5gEUG3nfpr2HSWLj+oF5m0O3Ur58VozU4S5YBYHJqD4Z6iW55LNIED26vj2WVUPPi
         WpcVl08C9e1a+X/GGqiahMzTlZoDk/i07pzHMeSCyDSQnsZvqSU/nVr5FI0XjR//jy8q
         OCjxtOjUH85jjS1g2tiPn/SgE4+NeORPVfnhdNYqzDhToWWrOX9X4YuI7k+85KFTFjyJ
         hozrS/oahQH/qX0umooTqmsBCbfh73e2q132iMNhOnLHzm3BrqB//aryrYfuqK6Kv6Xl
         dNbSJV7zlIObpFn9d00HeHmhwIxMnnHTDHygAea26uBu29iZ/99enTDB9y5/a5NXRJfB
         /yIQ==
X-Gm-Message-State: AOAM530x/wANxURSVgCNXRuMAZEUY/NGcV18IWHK/5fHPNv8xqWvUOng
        2LzI3QFPiHLYRQac3Auek4oke5anRjmhqYo21MFXpA==
X-Google-Smtp-Source: ABdhPJysg1S0yfLnJY0LTZXuMVeY7fujC50SzKWOpcmKnfOJ+CCSl0nFh1XwjqlfVeDB6KlGfIrJ6vtls1+fOAsFVWQ=
X-Received: by 2002:a17:90b:124c:b0:1bc:369b:7db5 with SMTP id
 gx12-20020a17090b124c00b001bc369b7db5mr24341841pjb.179.1650380013966; Tue, 19
 Apr 2022 07:53:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220419143958.94873-1-marex@denx.de>
In-Reply-To: <20220419143958.94873-1-marex@denx.de>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Tue, 19 Apr 2022 16:53:22 +0200
Message-ID: <CAG3jFyvao_dUHsuphR6EvY1NFk1Z2g+CsD65zP6xfBXgQ8-khw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: lt9211: Add Lontium
 LT9211 bridge driver
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, Rob Herring <robh@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Maxime Ripard <maxime@cerno.tech>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 19 Apr 2022 at 16:40, Marek Vasut <marex@denx.de> wrote:
>
> Add bindings for Lontium LT9211 Single/Dual-Link DSI/LVDS or Single DPI to
> Single-link/Dual-Link DSI/LVDS or Single DPI bridge. This chip is highly
> capable at converting formats, but sadly it is also highly undocumented.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
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
> V2: - Fix up s@i2c10@i2c@ in binding example
>     - Add RB from Rob
> ---
>  .../display/bridge/lontium,lt9211.yaml        | 117 ++++++++++++++++++
>  1 file changed, 117 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/lontium,lt9211.yaml
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt9211.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt9211.yaml
> new file mode 100644
> index 0000000000000..9a6e9b25d14a9
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
> +    i2c {
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

Applied series to drm-misc-next


Rob.
