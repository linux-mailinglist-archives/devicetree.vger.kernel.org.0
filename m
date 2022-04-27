Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 884C65122D1
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 21:33:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233801AbiD0Tg2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 15:36:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234125AbiD0TgQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 15:36:16 -0400
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC86B10D9
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 12:33:03 -0700 (PDT)
Received: by mail-oi1-f182.google.com with SMTP id e189so3066724oia.8
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 12:33:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Phc+U1fpzdB/EdrGMc44mJMu/QC9bg4wRE5my5kM9bM=;
        b=nbeLBlhtnfGrKOXtAUguCmE7oj82mwGsCgFJ+5ct1YXgibJp8tPWt01PdFxTiJOfD4
         exJQYEUO6xAMtRAlpiQFxI4QvlyjZqsxmKLtC6R07U2Zs+m/5hdvLSKxT9sAmtMLJ329
         /WG6XJfcGRPSBZBrOzMZ1pefLMVQH5m9GxRXRmdrEqJn1JeusGxcieNZ+IW0jT+a+lCb
         i+SO2+zCFUeeXbLXixGcJmtZlL1c4T6qDn9tXDv1Sj7zuYFeXB7xZQ9aozlV6us5BoKz
         3fYjG02Qyc7s7Tjd98mq596bIZY1nFf8flc9TjxW8Zu02SNnYZvY+GuheqaGHZWMBvwy
         S2Bw==
X-Gm-Message-State: AOAM533Uf4xkLwmg+re689qBbxIEHpnyPfFVfmUPsCdalxw9wrurIah/
        zE9uhiKyFH82QUBNNmHBhg==
X-Google-Smtp-Source: ABdhPJwTgzxPAXb9YZ25Y6d1SriIQBsbSPR5HYGVb617qhvLnjub3ck5fPV7MhRj0lQx9jNdUEA2GQ==
X-Received: by 2002:a05:6808:11c3:b0:2f9:62e0:ebe with SMTP id p3-20020a05680811c300b002f962e00ebemr13919140oiv.22.1651087983117;
        Wed, 27 Apr 2022 12:33:03 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j3-20020a4ad2c3000000b0035e9f4cea22sm636452oos.20.2022.04.27.12.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 12:33:02 -0700 (PDT)
Received: (nullmailer pid 530546 invoked by uid 1000);
        Wed, 27 Apr 2022 19:33:02 -0000
Date:   Wed, 27 Apr 2022 14:33:02 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 06/11] dt-bindings: arm: convert vexpress-sysregs to DT
 schema
Message-ID: <YmmabtaPvC+sD49z@robh.at.kernel.org>
References: <20220427112528.4097815-1-andre.przywara@arm.com>
 <20220427112528.4097815-7-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220427112528.4097815-7-andre.przywara@arm.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 27, 2022 at 12:25:23PM +0100, Andre Przywara wrote:
> The Arm Versatile Express system control register block provides GPIO
> functionality to some devices and is also used for board identification.
> 
> Extract the first half of the informal vexpress-sysreg.txt binding and
> make it proper DT schema compliant.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../bindings/arm/vexpress-sysreg.yaml         | 89 +++++++++++++++++++
>  1 file changed, 89 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/vexpress-sysreg.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/vexpress-sysreg.yaml b/Documentation/devicetree/bindings/arm/vexpress-sysreg.yaml
> new file mode 100644
> index 0000000000000..b5c03ebba6a6e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/vexpress-sysreg.yaml
> @@ -0,0 +1,89 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/vexpress-sysreg.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARM Versatile Express system registers bindings
> +
> +maintainers:
> +  - Andre Przywara <andre.przywara@arm.com>
> +
> +description: |+

Don't need '|+' unless you have formatting to maintain and you don't.

> +  This is a system control registers block, providing multiple low level
> +  platform functions like board detection and identification, software
> +  interrupt generation, MMC and NOR Flash control etc.

comma                                               ^

> +
> +properties:
> +  compatible:
> +    const: arm,vexpress-sysreg
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1
> +
> +  ranges: true
> +
> +additionalProperties: false
> +
> +patternProperties:
> +  '^gpio@[0-9a-fA-F]+$':

Lowercase hex only for unit address.

> +    type: object

       additionalProperties: false

> +    description:
> +      GPIO children
> +
> +    properties:
> +      compatible:
> +        enum:
> +          - arm,vexpress-sysreg,sys_led
> +          - arm,vexpress-sysreg,sys_mci
> +          - arm,vexpress-sysreg,sys_flash
> +
> +      gpio-controller: true
> +
> +      "#gpio-cells":
> +        const: 2
> +        description: |
> +          The first cell is the function number:
> +          for sys_led : 0..7 = LED 0..7
> +          for sys_mci : 0 = MMC CARDIN, 1 = MMC WPROT
> +          for sys_flash : 0 = NOR FLASH WPn
> +          The second cell can take standard GPIO flags.
> +
> +      reg:
> +        maxItems: 1
> +
> +    required:
> +      - compatible
> +      - reg
> +      - gpio-controller
> +      - "#gpio-cells"
> +
> +required:
> +  - compatible
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +examples:
> +  - |
> +    sysreg@0 {
> +            compatible = "arm,vexpress-sysreg";
> +            reg = <0x00000 0x1000>;
> +            #address-cells = <1>;
> +            #size-cells = <1>;
> +            ranges = <0 0 0x1000>;
> +
> +            v2m_led_gpios: gpio@8 {
> +                    compatible = "arm,vexpress-sysreg,sys_led";
> +                    reg = <0x008 4>;
> +                    gpio-controller;
> +                    #gpio-cells = <2>;
> +            };
> +    };
> +
> +...
> -- 
> 2.25.1
> 
> 
