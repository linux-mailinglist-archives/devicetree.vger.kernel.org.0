Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89F5859CAA1
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 23:16:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237524AbiHVVQy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 17:16:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235532AbiHVVQx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 17:16:53 -0400
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E11763DF16
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 14:16:51 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id v12-20020a9d7d0c000000b00638e210c995so8541205otn.13
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 14:16:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=9y2Oz48UIY81KzVpm8ulqhW6wyuJT+0gOkPEBsha4Iw=;
        b=iZAeviRqalVTVNGoQTn2PKE8rsgdWeYqmfGudqGIGQzarcadZd/hBAqibvG5JOo+i7
         EYRh887sFQImUcoJcpgq0/o4Qd5F9wt7JvCE+DXDWSqsk8ypgaOrc+1oxD7JZeieL2cb
         Ko6Ur6AC2HSeDxZ6ci5cxiaahKNmlB4rGQQhMGC4ZHzdIWsIqG8gJPUKWimHQwr1cM/D
         RBnLmQ/r14V/WGraLWwmStC1UfH47qddoXiVivD/TNjas4YR6MGLqFCzSOqQ4ep1NJo+
         pB4okmxcyN3/R6YDN/RLOF1wS1joPe8dOLSVrk12A16t6QYa5v9mrAVMu8SkV7F4S1YQ
         ILHQ==
X-Gm-Message-State: ACgBeo07NeeV/tVvpCj454wRmuxGRldQKajalOLwwoXUHWloi47790DC
        nlbxaKw5TpI790+R7E9Nig==
X-Google-Smtp-Source: AA6agR6MHhrEFqWcfDX8wVGCscIT5phKPmMCbShnY1XYYQU3HIzQ5fQlao8foNFPCvhQLFolwAd56Q==
X-Received: by 2002:a05:6830:2696:b0:638:99c9:1944 with SMTP id l22-20020a056830269600b0063899c91944mr8259442otu.352.1661203011062;
        Mon, 22 Aug 2022 14:16:51 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id o17-20020a056870969100b0010d75440f41sm309413oaq.45.2022.08.22.14.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 14:16:50 -0700 (PDT)
Received: (nullmailer pid 862414 invoked by uid 1000);
        Mon, 22 Aug 2022 21:16:49 -0000
Date:   Mon, 22 Aug 2022 16:16:49 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        arm-soc <arm@kernel.org>,
        Device Tree <devicetree@vger.kernel.org>
Subject: Re: [PATCH 03/11] DT: pinctrl: Convert marvell,kirkwood-pintctrl to
 YAML
Message-ID: <20220822211649.GC808626-robh@kernel.org>
References: <20220820194804.3352415-1-andrew@lunn.ch>
 <20220820194804.3352415-4-andrew@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220820194804.3352415-4-andrew@lunn.ch>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 20, 2022 at 09:47:56PM +0200, Andrew Lunn wrote:
> Convert the text description to YAML. To keep the YAML versions
> readable, add a file per compatible.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> ---
>  .../pinctrl/marvell,88f6180-pinctrl.yaml      |  73 ++++
>  .../pinctrl/marvell,88f6190-pinctrl.yaml      |  73 ++++
>  .../pinctrl/marvell,88f6192-pinctrl.yaml      |  73 ++++
>  .../pinctrl/marvell,88f6281-pinctrl.yaml      |  74 ++++
>  .../pinctrl/marvell,88f6282-pinctrl.yaml      |  74 ++++
>  .../pinctrl/marvell,98dx1135-pinctrl.yaml     |  72 ++++
>  .../pinctrl/marvell,98dx4122-pinctrl.yaml     |  71 ++++
>  .../bindings/pinctrl/marvell,ac5-pinctrl.yaml |  14 +-
>  .../pinctrl/marvell,kirkwood-pinctrl.txt      | 359 ------------------
>  9 files changed, 517 insertions(+), 366 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,88f6180-pinctrl.yaml
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,88f6190-pinctrl.yaml
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,88f6192-pinctrl.yaml
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,88f6281-pinctrl.yaml
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,88f6282-pinctrl.yaml
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,98dx1135-pinctrl.yaml
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,98dx4122-pinctrl.yaml
>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,kirkwood-pinctrl.txt
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,88f6180-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/marvell,88f6180-pinctrl.yaml
> new file mode 100644
> index 000000000000..c3c679f95274
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/marvell,88f6180-pinctrl.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/marvell,88f6180-pinctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Marvell Kirkwood 88f6180 pin controller
> +
> +maintainers:
> +  - Andrew Lunn <andrew@lunn.ch>
> +
> +description:
> +  Bindings for Marvell's Kirkwood 88F6180 memory-mapped pin controller.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: marvell,88f6180-pinctrl
> +
> +  reg:
> +    maxItems: 1
> +
> +patternProperties:
> +  '^pmx-.*$':
> +    type: object
> +    $ref: pinmux-node.yaml#

What from this schema applies here? Looks like nothing to me.

You need:

       additionalProperties: false

Or 'unevaluatedProperties: false' if properties from pinmux-node.yaml 
apply.

> +
> +    properties:
> +      marvell,function:
> +        $ref: "/schemas/types.yaml#/definitions/string"
> +        description:
> +          Indicates the function to select.
> +        enum: [ audio, gpio, gpo, mii, nand, pex, ptp, ptp-1, ptp-2, sdio,
> +                spi, sysrst, twsi0, uart0, uart1 ]
> +
> +      marvell,pins:
> +        $ref: /schemas/types.yaml#/definitions/string-array
> +        description:
> +          Array of MPP pins to be used for the given function.
> +        minItems: 1
> +        items:
> +          enum: [ mpp0, mpp1, mpp2, mpp3, mpp4, mpp5, mpp6, mpp7, mpp8, mpp9,
> +                  mpp10, mpp11, mpp12, mpp13, mpp14, mpp15, mpp16, mpp17,
> +                  mpp18, mpp19, mpp20, mpp21, mpp22, mpp23, mpp24, mpp25,
> +                  mpp26, mpp27, mpp28, mpp29, mpp30, mpp31, mpp32, mpp33,
> +                  mpp34, mpp35, mpp36, mpp37, mpp38, mpp39, mpp40, mpp41,
> +                  mpp42, mpp43, mpp44 ]

pattern: '^mpp([0-9]|[1-3][0-9]|4[0-4])$'

Surely one or both of these properties are required?


Similar comments on the rest.

> +
> +allOf:
> +  - $ref: "pinctrl.yaml#"
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pinctrl@80020100 {
> +      compatible = "marvell,88f6180-pinctrl";
> +      reg = <0x80020100 0x20>;
> +
> +      pmx_spi: pmx-spidc {
> +        marvell,pins = "mpp0", "mpp1", "mpp2", "mpp3";
> +        marvell,function = "spi";
> +      };
> +
> +      pmx_spic_gpio: pmx-gpio-spi {
> +        marvell,pins = "mpp26", "mpp27";
> +        marvell,function = "gpio";
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,88f6190-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/marvell,88f6190-pinctrl.yaml
> new file mode 100644
> index 000000000000..46f0e61c3730
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/marvell,88f6190-pinctrl.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/marvell,88f6190-pinctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Marvell Kirkwood 88f6190 pin controller
> +
> +maintainers:
> +  - Andrew Lunn <andrew@lunn.ch>
> +
> +description:
> +  Bindings for Marvell's Kirkwood 88F6190 memory-mapped pin controller.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: marvell,88f6190-pinctrl
> +
> +  reg:
> +    maxItems: 1
> +
> +patternProperties:
> +  'pmx-.*$':
> +    type: object
> +    $ref: pinmux-node.yaml#
> +
> +    properties:
> +      marvell,function:
> +        $ref: "/schemas/types.yaml#/definitions/string"
> +        description:
> +          Indicates the function to select.
> +        enum: [ ge1, gpio, gpo, mii, mii-1, nand, pex, ptp, ptp-1, ptp-2,
> +                sata0, sdio, spi, sysrst, twsi0, uart0, uart1 ]
> +
> +      marvell,pins:
> +        $ref: /schemas/types.yaml#/definitions/string-array
> +        description:
> +          Array of MPP pins to be used for the given function.
> +        minItems: 1
> +        items:
> +          enum: [ mpp0, mpp1, mpp2, mpp3, mpp4, mpp5, mpp6, mpp7, mpp8, mpp9,
> +                  mpp10, mpp11, mpp12, mpp13, mpp14, mpp15, mpp16, mpp17,
> +                  mpp18, mpp19, mpp20, mpp21, mpp22, mpp23, mpp24, mpp25,
> +                  mpp26, mpp27, mpp28, mpp29, mpp30, mpp31, mpp32, mpp33,
> +                  mpp34, mpp35, mpp36, mpp37, mpp38, mpp39, mpp40, mpp41,
> +                  mpp42, mpp43, mpp44 ]
> +
> +allOf:
> +  - $ref: "pinctrl.yaml#"
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pinctrl@80020100 {
> +      compatible = "marvell,88f6180-pinctrl";
> +      reg = <0x80020100 0x20>;
> +
> +      pmx_spi: pmx-spidc {
> +        marvell,pins = "mpp0", "mpp1", "mpp2", "mpp3";
> +        marvell,function = "spi";
> +      };
> +
> +      pmx_spi_gpio: pmx-gpio-spi {
> +        marvell,pins = "mpp26", "mpp27";
> +        marvell,function = "gpio";
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,88f6192-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/marvell,88f6192-pinctrl.yaml
> new file mode 100644
> index 000000000000..82f8ce528d13
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/marvell,88f6192-pinctrl.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/marvell,88f6192-pinctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Marvell Kirkwood 88f6192 pin controller
> +
> +maintainers:
> +  - Andrew Lunn <andrew@lunn.ch>
> +
> +description:
> +  Bindings for Marvell's Kirkwood 88F6192 memory-mapped pin controller.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: marvell,88f6192-pinctrl
> +
> +  reg:
> +    maxItems: 1
> +
> +patternProperties:
> +  '^pmx-.*$':
> +    type: object
> +    $ref: pinmux-node.yaml#
> +
> +    properties:
> +      marvell,function:
> +        $ref: "/schemas/types.yaml#/definitions/string"
> +        description:
> +          Indicates the function to select.
> +        enum: [ audio, ge1, gpio, gpo, mii, mii-1, nand, pex, ptp, ptp-1, ptp-2,
> +                sata0, sata1, sdio, spi, sysrst, tdm, ts, twsi0, uart0, uart1 ]
> +
> +      marvell,pins:
> +        $ref: /schemas/types.yaml#/definitions/string-array
> +        description:
> +          Array of MPP pins to be used for the given function.
> +        minItems: 1
> +        items:
> +          enum: [ mpp0, mpp1, mpp2, mpp3, mpp4, mpp5, mpp6, mpp7, mpp8, mpp9,
> +                  mpp10, mpp11, mpp12, mpp13, mpp14, mpp15, mpp16, mpp17,
> +                  mpp18, mpp19, mpp20, mpp21, mpp22, mpp23, mpp24, mpp25,
> +                  mpp26, mpp27, mpp28, mpp29, mpp30, mpp31, mpp32, mpp33,
> +                  mpp34, mpp35, mpp36, mpp37, mpp38, mpp39, mpp40, mpp41,
> +                  mpp42, mpp43, mpp44 ]
> +
> +allOf:
> +  - $ref: "pinctrl.yaml#"
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pinctrl@80020100 {
> +      compatible = "marvell,88f6180-pinctrl";
> +      reg = <0x80020100 0x20>;
> +
> +      pmx_spi: pmx-spidc {
> +        marvell,pins = "mpp0", "mpp1", "mpp2", "mpp3";
> +        marvell,function = "spi";
> +      };
> +
> +      pmx_spic_gpio: pmx-gpio-spi {
> +        marvell,pins = "mpp26", "mpp27";
> +        marvell,function = "gpio";
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,88f6281-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/marvell,88f6281-pinctrl.yaml
> new file mode 100644
> index 000000000000..1d0c5932ca59
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/marvell,88f6281-pinctrl.yaml
> @@ -0,0 +1,74 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/marvell,88f6281-pinctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Marvell Kirkwood 88f6281 pin controller
> +
> +maintainers:
> +  - Andrew Lunn <andrew@lunn.ch>
> +
> +description:
> +  Bindings for Marvell's Kirkwood 88F6281 memory-mapped pin controller.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: marvell,88f6281-pinctrl
> +
> +  reg:
> +    maxItems: 1
> +
> +patternProperties:
> +  '^pmx-':
> +    type: object
> +    $ref: pinmux-node.yaml#
> +
> +    properties:
> +      marvell,function:
> +        $ref: "/schemas/types.yaml#/definitions/string"
> +        description:
> +          Indicates the function to select.
> +        enum: [ audio, ge1, gpio, gpo, mii, mii-1, nand, pex, ptp, ptp-1, ptp-2,
> +                sata0, sata1, sdio, spi, sysrst, tdm, ts, twsi0, twsi1, uart0,
> +                uart1 ]
> +
> +      marvell,pins:
> +        $ref: /schemas/types.yaml#/definitions/string-array
> +        description:
> +          Array of MPP pins to be used for the given function.
> +        minItems: 1
> +        items:
> +          enum: [ mpp0, mpp1, mpp2, mpp3, mpp4, mpp5, mpp6, mpp7, mpp8, mpp9,
> +                  mpp10, mpp11, mpp12, mpp13, mpp14, mpp15, mpp16, mpp17,
> +                  mpp18, mpp19, mpp20, mpp21, mpp22, mpp23, mpp24, mpp25,
> +                  mpp26, mpp27, mpp28, mpp29, mpp30, mpp31, mpp32, mpp33,
> +                  mpp34, mpp35, mpp36, mpp37, mpp38, mpp39, mpp40, mpp41,
> +                  mpp42, mpp43, mpp44, mpp45, mpp46, mpp47, mpp48, mpp49 ]
> +
> +allOf:
> +  - $ref: "pinctrl.yaml#"
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pinctrl@80020100 {
> +      compatible = "marvell,88f6180-pinctrl";
> +      reg = <0x80020100 0x20>;
> +
> +      pmx_spi: pmx-spi {
> +        marvell,pins = "mpp0", "mpp1", "mpp2", "mpp3";
> +        marvell,function = "spi";
> +      };
> +
> +      pmx_spi_gpio: pmx-gpio-spi {
> +        marvell,pins = "mpp26", "mpp27";
> +        marvell,function = "gpio";
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,88f6282-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/marvell,88f6282-pinctrl.yaml
> new file mode 100644
> index 000000000000..1365c392be9e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/marvell,88f6282-pinctrl.yaml
> @@ -0,0 +1,74 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/marvell,88f6282-pinctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Marvell Kirkwood 88f6282 pin controller
> +
> +maintainers:
> +  - Andrew Lunn <andrew@lunn.ch>
> +
> +description:
> +  Bindings for Marvell's Kirkwood 88F6282 memory-mapped pin controller.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: marvell,88f6282-pinctrl
> +
> +  reg:
> +    maxItems: 1
> +
> +patternProperties:
> +  '^pmx-':
> +    type: object
> +    $ref: pinmux-node.yaml#
> +
> +    properties:
> +      marvell,function:
> +        $ref: "/schemas/types.yaml#/definitions/string"
> +        description:
> +          Indicates the function to select.
> +        enum: [ audio, ge1, gpio, gpo, lcd, mii, mii-1, nand, pex,
> +                sata0, sata1, sdio, spi, sysrst, tdm, ts, twsi0, twsi1, uart0,
> +                uart1 ]
> +
> +      marvell,pins:
> +        $ref: /schemas/types.yaml#/definitions/string-array
> +        description:
> +          Array of MPP pins to be used for the given function.
> +        minItems: 1
> +        items:
> +          enum: [ mpp0, mpp1, mpp2, mpp3, mpp4, mpp5, mpp6, mpp7, mpp8, mpp9,
> +                  mpp10, mpp11, mpp12, mpp13, mpp14, mpp15, mpp16, mpp17,
> +                  mpp18, mpp19, mpp20, mpp21, mpp22, mpp23, mpp24, mpp25,
> +                  mpp26, mpp27, mpp28, mpp29, mpp30, mpp31, mpp32, mpp33,
> +                  mpp34, mpp35, mpp36, mpp37, mpp38, mpp39, mpp40, mpp41,
> +                  mpp42, mpp43, mpp44, mpp45, mpp46, mpp47, mpp48 ]
> +
> +allOf:
> +  - $ref: "pinctrl.yaml#"
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pinctrl@80020100 {
> +      compatible = "marvell,88f6180-pinctrl";
> +      reg = <0x80020100 0x20>;
> +
> +      pmx_spi: pmx-spidc {
> +        marvell,pins = "mpp0", "mpp1", "mpp2", "mpp3";
> +        marvell,function = "spi";
> +      };
> +
> +      pmx_spi_gpio: pmx-gpio-spi {
> +        marvell,pins = "mpp26", "mpp27";
> +        marvell,function = "gpio";
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,98dx1135-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/marvell,98dx1135-pinctrl.yaml
> new file mode 100644
> index 000000000000..38c1a48e7603
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/marvell,98dx1135-pinctrl.yaml
> @@ -0,0 +1,72 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/marvell,98dx1135-pinctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Marvell 98dx1135 pin controller
> +
> +maintainers:
> +  - Andrew Lunn <andrew@lunn.ch>
> +
> +description:
> +  Bindings for Marvell's 98DX1135 memory-mapped pin controller.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: marvell,98dx1135-pinctrl
> +
> +  reg:
> +    maxItems: 1
> +
> +patternProperties:
> +  '^pmx-':
> +    type: object
> +    $ref: pinmux-node.yaml#
> +
> +    properties:
> +      marvell,function:
> +        $ref: "/schemas/types.yaml#/definitions/string"
> +        description:
> +          Indicates the function to select.
> +        enum: [ gpio, gpo, nand, pex, spi, sysrst, twsi0, uart0, uart1 ]
> +
> +      marvell,pins:
> +        $ref: /schemas/types.yaml#/definitions/string-array
> +        description:
> +          Array of MPP pins to be used for the given function.
> +        minItems: 1
> +        items:
> +          enum: [ mpp0, mpp1, mpp2, mpp3, mpp4, mpp5, mpp6, mpp7, mpp8, mpp9,
> +                  mpp10, mpp11, mpp12, mpp13, mpp14, mpp15, mpp16, mpp17,
> +                  mpp18, mpp19, mpp20, mpp21, mpp22, mpp23, mpp24, mpp25,
> +                  mpp26, mpp27, mpp28, mpp29, mpp30, mpp31, mpp32, mpp33,
> +                  mpp34, mpp35, mpp36, mpp37, mpp38, mpp39, mpp40, mpp41,
> +                  mpp42, mpp43, mpp44 ]
> +
> +allOf:
> +  - $ref: "pinctrl.yaml#"
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pinctrl@80020100 {
> +      compatible = "marvell,88f6180-pinctrl";
> +      reg = <0x80020100 0x20>;
> +
> +      pmx_spi: pmx-spidc {
> +        marvell,pins = "mpp0", "mpp1", "mpp2", "mpp3";
> +        marvell,function = "spi";
> +      };
> +
> +      pmx_spi_gpio: pmx-gpio-spi {
> +        marvell,pins = "mpp26", "mpp27";
> +        marvell,function = "gpio";
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,98dx4122-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/marvell,98dx4122-pinctrl.yaml
> new file mode 100644
> index 000000000000..32080220748c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/marvell,98dx4122-pinctrl.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/marvell,98dx4122-pinctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Marvell 98dx4122 pin controller
> +
> +maintainers:
> +  - Andrew Lunn <andrew@lunn.ch>
> +
> +description:
> +  Bindings for Marvell's 98DX4122 memory-mapped pin controller.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: marvell,98dx4122-pinctrl
> +
> +  reg:
> +    maxItems: 1
> +
> +patternProperties:
> +  '^pmx-':
> +    type: object
> +    $ref: pinmux-node.yaml#
> +
> +    properties:
> +      marvell,function:
> +        $ref: "/schemas/types.yaml#/definitions/string"
> +        description:
> +          Indicates the function to select.
> +        enum: [ gpio, gpo, nand, pex, spi, sysrst, twsi0, uart0, uart1 ]
> +
> +      marvell,pins:
> +        $ref: /schemas/types.yaml#/definitions/string-array
> +        description:
> +          Array of MPP pins to be used for the given function.
> +        minItems: 1
> +        items:
> +          enum: [ mpp0, mpp1, mpp2, mpp3, mpp4, mpp5, mpp6, mpp7, mpp8, mpp9,
> +                  mpp10, mpp11, mpp12, mpp13, mpp14, mpp15, mpp16, mpp17, mpp18,
> +                  mpp19, mpp20, mpp21, mpp22, mpp23, mpp24, mpp25, mpp26, mpp27,
> +                  mpp28, mpp29, mpp30, mpp31, mpp32, mpp33, mpp34, mpp35, mpp36,
> +                  mpp37, mpp38, mpp39, mpp40, mpp41, mpp42, mpp43, mpp44 ]
> +
> +allOf:
> +  - $ref: "pinctrl.yaml#"
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pinctrl@80020100 {
> +      compatible = "marvell,88f6180-pinctrl";
> +      reg = <0x80020100 0x20>;
> +
> +      pmx_spi: pmx-spidc {
> +        marvell,pins = "mpp0", "mpp1", "mpp2", "mpp3";
> +        marvell,function = "spi";
> +      };
> +
> +      pmx_spi_gpio: pmx-gpio-spi {
> +        marvell,pins = "mpp26", "mpp27";
> +        marvell,function = "gpio";
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,ac5-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/marvell,ac5-pinctrl.yaml
> index a651b2744caf..4109bf1a2e5f 100644
> --- a/Documentation/devicetree/bindings/pinctrl/marvell,ac5-pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/marvell,ac5-pinctrl.yaml

This file isn't a conversion and deserves to be its own patch.

> @@ -21,7 +21,7 @@ properties:
>      maxItems: 1
>  
>  patternProperties:
> -  '-pins$':
> +  '^pmx-':
>      type: object
>      $ref: pinmux-node.yaml#
>  
> @@ -40,10 +40,10 @@ patternProperties:
>          minItems: 1
>          items:
>            enum: [ mpp0, mpp1, mpp2, mpp3, mpp4, mpp5, mpp6, mpp7, mpp8, mpp9,
> -                  mpp10, mpp11, mpp12, mpp13, mpp14, mpp15, mpp16, mpp17, mpp18, mpp19,
> -                  mpp20, mpp21, mpp22, mpp23, mpp24, mpp25, mpp26, mpp27, mpp28, mpp29,
> -                  mpp30, mpp31, mpp32, mpp33, mpp34, mpp35, mpp36, mpp37, mpp38, mpp39,
> -                  mpp40, mpp41, mpp42, mpp43, mpp44, mpp45 ]
> +                  mpp10, mpp11, mpp12, mpp13, mpp14, mpp15, mpp16, mpp17, mpp18,
> +                  mpp19, mpp20, mpp21, mpp22, mpp23, mpp24, mpp25, mpp26, mpp27,
> +                  mpp28, mpp29, mpp30, mpp31, mpp32, mpp33, mpp34, mpp35, mpp36,
> +                  mpp37, mpp38, mpp39, mpp40, mpp41, mpp42, mpp43, mpp44, mpp45 ]
>  
>  allOf:
>    - $ref: "pinctrl.yaml#"
> @@ -60,12 +60,12 @@ examples:
>        compatible = "marvell,ac5-pinctrl";
>        reg = <0x80020100 0x20>;
>  
> -      i2c0_pins: i2c0-pins {
> +      pmx_i2c0_pins: pmx-i2c0 {
>          marvell,pins = "mpp26", "mpp27";
>          marvell,function = "i2c0";
>        };
>  
> -      i2c0_gpio: i2c0-gpio-pins {
> +      pmx_i2c0_gpio: pmx-gpio-i2c0 {
>          marvell,pins = "mpp26", "mpp27";
>          marvell,function = "gpio";
>        };
