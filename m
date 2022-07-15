Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B4AA576AD9
	for <lists+devicetree@lfdr.de>; Sat, 16 Jul 2022 01:53:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbiGOXxQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 19:53:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229499AbiGOXxP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 19:53:15 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 180BF6E8B1
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 16:53:15 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id o3-20020a17090a744300b001ef8f7f3dddso7510789pjk.3
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 16:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=6AuaQ+8DrGoPjM8wTSD7bSkJrhkfBqM2FBtrBOpICH4=;
        b=fDkj4lK+BzQD+DzOkHpFhewJzUZ4+fxAFmRKEHhSNtYM4JKVWlZJjiEAU+7h4z6QTQ
         KQ/e0kh8HsCapKsvaeJDEKfTWBzZu/YvCubIS6/YkIItvoAFHk2Pf1tV+IIm5sCjUsxi
         BYnQHWrzq2x5gWMg5NcjKjUaXdIIqBTQEaqP0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6AuaQ+8DrGoPjM8wTSD7bSkJrhkfBqM2FBtrBOpICH4=;
        b=joXygnG9a+iQ1cR3IofxG49nk8+rnw5yAaXWMFCAbpAxFPkrD3PSJIOS1xHNMxM+bw
         AdPLVtgmwIBJER+eYq3K5zfaJDJYPxolHLuxJGOMjBHtFxE0sHmFrP3PHpuXanHM471y
         KpjkKRH1LVdBm3bZ58CKOwi0Xqv62SLzAIVmXVfktOkWg9JwPXfULvQL0AUfL9I69BnE
         QC95K0VagM+k1F0t+Ooi9IZ22zsfHMr+U4m0FeJ6+cwAjSA28vI7JnAjY8cZqPPiYlkJ
         HM8sp7qC9p4+4iozXIngN6DlX6tp7m+IZ9gvhRMhRAXe8WJU1rgD3f0/oMviM7hNUCpa
         EuUw==
X-Gm-Message-State: AJIora9v30ro3aWWWe15AsoH1KItmpH7M+j9lWCzRywXNLyimG9LEplB
        ZsY4FkH2H1MtkqY8cBX2FVAm9g==
X-Google-Smtp-Source: AGRyM1vCGYH4aIQ2v167fDYfFMaeZhZiSvB6D/zZxsRzgYVbW06izbbvcBIWbtUwznn08RlHo0BIKw==
X-Received: by 2002:a17:902:8f89:b0:168:d336:ddba with SMTP id z9-20020a1709028f8900b00168d336ddbamr15716146plo.1.1657929194586;
        Fri, 15 Jul 2022 16:53:14 -0700 (PDT)
Received: from localhost ([2620:15c:11a:202:835b:7656:818:a69a])
        by smtp.gmail.com with UTF8SMTPSA id u64-20020a626043000000b00528baea5dacsm4439860pfb.201.2022.07.15.16.53.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 16:53:14 -0700 (PDT)
Date:   Fri, 15 Jul 2022 16:53:12 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: usb: Add binding for TI USB8041 hub
 controller
Message-ID: <YtH96FGD1+ORPKKk@google.com>
References: <20220715073300.868087-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220715073300.868087-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 15, 2022 at 09:32:58AM +0200, Alexander Stein wrote:
> The TI USB8041 is a USB 3.0 hub controller with 4 ports.
> 
> This initial version of the binding only describes USB related aspects
> of the USB8041, it does not cover the option of connecting the controller
> as an i2c slave.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> Changes in v2:
> * Removed 'items' from compatible, it's just en enum now
> * Rename reset-gpio to reset-gpios
> * Use 'items' for reset-gpios
> * Adjust description of vdd-supply
> * Sorted required list
> * Adjusted example
> 
>  .../devicetree/bindings/usb/ti,usb8041.yaml   | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/ti,usb8041.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/ti,usb8041.yaml b/Documentation/devicetree/bindings/usb/ti,usb8041.yaml
> new file mode 100644
> index 000000000000..7fe7416e2b51
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/ti,usb8041.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/ti,usb8041.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Binding for the TI USB8041 USB 3.0 hub controller
> +
> +maintainers:
> +  - Matthias Kaehlcke <mka@chromium.org>

Not sure this should be me, just because I'm the author/maintainer of
the onboard_usb_hub driver, which may be used for this hub.

> +
> +allOf:
> +  - $ref: usb-device.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - usb451,8140
> +      - usb451,8142
> +
> +  reg: true
> +
> +  reset-gpios:
> +    items:
> +      - description: GPIO specifier for GRST# pin.
> +
> +  vdd-supply:
> +    description:
> +      "VDD power supply to the hub"
> +
> +  peer-hub:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      phandle to the peer hub on the controller.
> +
> +required:
> +  - compatible
> +  - reg
> +  - peer-hub
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    usb {
> +        dr_mode = "host";
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        /* 2.0 hub on port 1 */
> +        hub_2_0: hub@1 {
> +          compatible = "usb451,8142";
> +          reg = <1>;
> +          peer-hub = <&hub_3_0>;
> +          reset-gpios = <&gpio1 11 GPIO_ACTIVE_LOW>;
> +        };
> +
> +        /* 3.0 hub on port 2 */
> +        hub_3_0: hub@2 {
> +          compatible = "usb451,8140";
> +          reg = <2>;
> +          peer-hub = <&hub_2_0>;
> +          reset-gpios = <&gpio1 11 GPIO_ACTIVE_LOW>;
> +        };
> +    };
> -- 
> 2.25.1
> 
