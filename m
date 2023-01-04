Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87C4465E015
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 23:38:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235582AbjADWiA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 17:38:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230100AbjADWh7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 17:37:59 -0500
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE0351EC79
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 14:37:58 -0800 (PST)
Received: by mail-il1-x135.google.com with SMTP id m15so20269304ilq.2
        for <devicetree@vger.kernel.org>; Wed, 04 Jan 2023 14:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YcNoql4sxZAAG0Z9x382x27f16j/NJH8gvjDj7DBfeY=;
        b=ohe7m4zraaZuCG6StlOr3NDElGbtNTt/AgB57cgRJ7fR/62RRKlU/4Kkq1hw+ths9X
         H+IwFo9T4WLorbzXH15hXAuWYP0qA7UDgvG6zA0vgTCHsVQaPXB9tzFAp3rNEU/pjGFP
         Aj6X4ML3gX7K7csd049yNiopXlnTHatPghoj0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YcNoql4sxZAAG0Z9x382x27f16j/NJH8gvjDj7DBfeY=;
        b=PWIFdd1p4VH20IemlRgQh3XFrMmIICuCgl0s/1d20rt6VqnxrEh52eJzUocJlGoYfU
         Dgf0qu8TP12kSq2bg4vPL4ukJOIbexzr+vRVYosW0uuVE0YrBQe7wyK3VV8uNSmQaqIf
         KclkEOlAGpLYOas6geICTva4BxUQgCvfB4OXK5LSVTlazbjD6/CvWa2S3KXl/LDl08dU
         KEFNtygsQda6xuATgBqNoHRjxkpFMw92AvHObnaM/wZb1WX5V17UjkepmtCvCoY/lnRI
         KoWuaFUz+4fE+1KFEn2BLpTVVscGSqXNfRkSs0BfD4wm2zAoiV3h3H3XGo6socY4EvO5
         UMVg==
X-Gm-Message-State: AFqh2koFlo8otMBM634DPyhbO7nKsebMO+I4dwmwF9J6VFWAGxSChlr6
        1eb/wocFQ+P0QX5GFdI25D+FeA==
X-Google-Smtp-Source: AMrXdXsnV5WKBO3y2D9jF6L7JkTbhKxnOGOhp02IPb09JTYoS/rGNOwzeyl6ujdBGNOViFzaAqfhkA==
X-Received: by 2002:a05:6e02:b2c:b0:304:c95e:8c36 with SMTP id e12-20020a056e020b2c00b00304c95e8c36mr39114239ilu.14.1672871878123;
        Wed, 04 Jan 2023 14:37:58 -0800 (PST)
Received: from localhost (30.23.70.34.bc.googleusercontent.com. [34.70.23.30])
        by smtp.gmail.com with UTF8SMTPSA id r22-20020a02b116000000b00363ec4dcaacsm11304062jah.22.2023.01.04.14.37.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jan 2023 14:37:57 -0800 (PST)
Date:   Wed, 4 Jan 2023 22:37:57 +0000
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Anand Moon <linux.amoon@gmail.com>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-amlogic@lists.infradead.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 08/11] dt-bindings: usb: Add binding for Via lab
 VL817Q7 hub controller
Message-ID: <Y7X/xadXIA2f9lHz@google.com>
References: <20221228100321.15949-1-linux.amoon@gmail.com>
 <20221228100321.15949-9-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20221228100321.15949-9-linux.amoon@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 28, 2022 at 10:03:17AM +0000, Anand Moon wrote:
> The VIA Lab VL817-Q7 is a USB 3.1 Gen 1 4-Port hub controller that
> features 4 downstream ports, an internal 5V regulator and has
> external reset pin.
> 
> Add a device tree binding for its USB protocol part.
> The internal LDO is not covered by this and can just be modelled
> as a fixed regulator.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>  .../bindings/usb/vialab,vl817q7.yaml          | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/vialab,vl817q7.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/vialab,vl817q7.yaml b/Documentation/devicetree/bindings/usb/vialab,vl817q7.yaml
> new file mode 100644
> index 000000000000..4ae995160fd5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/vialab,vl817q7.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
> +%YAML 1.2
> +---
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Via labs VL817Q7 USB 3.1 hub controller

nit: VIA Labs VL817-Q7

> +
> +maintainers:
> +  - Anand Moon <linux.amoon@gmail.com>
> +
> +allOf:
> +  - $ref: usb-device.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - vialab,usb2109

This is not a valid compatible string as Johan already noted.

Besides that the VL817-Q7 provides both a 3.1 and a 2.0 USB hub, which
are enumerated separately. Please also add a compatible string for the
2.0 hub (assuming 0x2109 is the 3.1 hub).

> +
> +  reg: true
> +
> +  reset-gpios:
> +    description: GPIO controlling the RESET# pin.
> +
> +  vdd-supply:
> +    description:
> +      the regulator that provides 5.0V core power to the hub.
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    usb {
> +        dr_mode = "host";
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        hub: hub@1 {
> +            compatible = "vialab,usb2109"
> +            reg = <1>;
> +            reset-gpios = <&gpio GPIOH_4 GPIO_ACTIVE_LOW>;
> +        };

Please also add a node for the other hub and link the two nodes with
each other through the 'peer-hub' property. See realtek,rts5411.yaml
for reference.
