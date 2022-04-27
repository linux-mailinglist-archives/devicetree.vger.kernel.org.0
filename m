Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A6225122EA
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 21:38:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233860AbiD0TlX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 15:41:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230160AbiD0Tkw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 15:40:52 -0400
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83D79109D
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 12:37:06 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id r1so2929270oie.4
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 12:37:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MA089dz1wIXlhu4FviLh30UnRmaYESAcVw9xhcDUUlY=;
        b=he0aLqBssCUw8Q91hM0BQQAQexnMg5VyxuJZuEaHp+wSg5hXY+qyzdiQb1X8pdr1Gw
         rAj5IDoNmk2y0/6fDUCPrTu9y/gPxx8sYqcbm6Z9E31h1LpErp6o1xGD6+cK/4FRfCAI
         YphmHk33s+SdgxKEyu9HFMlgcq3ImWBJeeLpETNK8il9zf07vIBB5ABKVXvSeAuOsVrC
         Q8pKsSh4ZMH1s3r2CRnqRpf9QWfkZ5wz/vwvi9pvdq7LwhCJK5iftL0Nuf3wDWLua/hC
         pIvkrWstrlr8vUyCfTYfhMk7qsbS2p70ze8k4wxBF3W+gdOADwGQbmpBFQDx1LNERh1+
         jlTw==
X-Gm-Message-State: AOAM531MZ+2Ib2Ugrfvvvv9Rd0zch1KRgfdrgQjEVf/ghvKCWaK/xx96
        4V6/Um00sb7pl0nLUh/WegM4DgAs7A==
X-Google-Smtp-Source: ABdhPJyslpE1dg20GVeaBVlcGlqXW7aoF0PUGX0Qfh+bKWErGHQYsJjKnrIRtFwR1HZr8aqTsZq9Xw==
X-Received: by 2002:a05:6808:1584:b0:322:6c50:9feb with SMTP id t4-20020a056808158400b003226c509febmr18384575oiw.33.1651088225754;
        Wed, 27 Apr 2022 12:37:05 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x21-20020a4aea15000000b0035e9a8d6e58sm877284ood.26.2022.04.27.12.37.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 12:37:05 -0700 (PDT)
Received: (nullmailer pid 536297 invoked by uid 1000);
        Wed, 27 Apr 2022 19:37:04 -0000
Date:   Wed, 27 Apr 2022 14:37:04 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 07/11] dt-bindings: arm: convert vexpress-config to DT
 schema
Message-ID: <YmmbYPYBgpSBI+kq@robh.at.kernel.org>
References: <20220427112528.4097815-1-andre.przywara@arm.com>
 <20220427112528.4097815-8-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220427112528.4097815-8-andre.przywara@arm.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 27, 2022 at 12:25:24PM +0100, Andre Przywara wrote:
> The Arm Versatile Express system features a bridge device that provides
> access to various smaller devices like clocks, reset gates and various
> sensors.
> 
> Extract the second half of the informal vexpress-sysreg.txt binding and
> make it proper DT schema compliant. This makes the old .txt binding
> redundant, so remove it.
> 
> This describes both the actual parent configuration bridge, as well as
> all the possible children devices.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../bindings/arm/vexpress-config.yaml         | 274 ++++++++++++++++++
>  .../bindings/arm/vexpress-sysreg.txt          | 103 -------
>  2 files changed, 274 insertions(+), 103 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/arm/vexpress-config.yaml
>  delete mode 100644 Documentation/devicetree/bindings/arm/vexpress-sysreg.txt
> 
> diff --git a/Documentation/devicetree/bindings/arm/vexpress-config.yaml b/Documentation/devicetree/bindings/arm/vexpress-config.yaml
> new file mode 100644
> index 0000000000000..6471b3fe13a46
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/vexpress-config.yaml
> @@ -0,0 +1,274 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/vexpress-config.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARM Versatile Express configuration bus bindings
> +
> +maintainers:
> +  - Andre Przywara <andre.przywara@arm.com>
> +
> +description: |+
> +  This is a system control register block, acting as a bridge to the
> +  platform's configuration bus via "system control" interface, addressing
> +  devices with site number, position in the board stack, config controller,
> +  function and device numbers - see motherboard's TRM for more details.
> +
> +properties:
> +  compatible:
> +    const: arm,vexpress,config-bus
> +
> +  arm,vexpress,config-bridge:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the sysreg node.
> +
> +  muxfpga:
> +    type: object

       additionalProperties: false

> +    properties:
> +      compatible:
> +        const: arm,vexpress-muxfpga
> +
> +      arm,vexpress-sysreg,func:
> +        description: FPGA specifier
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +        items:
> +          - const: 7
> +          - description: device number
> +
> +    required:
> +      - compatible
> +      - arm,vexpress-sysreg,func
> +
> +  shutdown:
> +    type: object

       additionalProperties: false

> +    properties:
> +      compatible:
> +        const: arm,vexpress-shutdown
> +
> +      arm,vexpress-sysreg,func:
> +        description: shutdown identifier
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +        items:
> +          - const: 8
> +          - description: device number
> +
> +    required:
> +      - compatible
> +      - arm,vexpress-sysreg,func
> +
> +  reboot:
> +    type: object

       additionalProperties: false

> +    properties:
> +      compatible:
> +        const: arm,vexpress-reboot
> +
> +      arm,vexpress-sysreg,func:
> +        description: reboot identifier
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +        items:
> +          - const: 9
> +          - description: device number
> +
> +    required:
> +      - compatible
> +      - arm,vexpress-sysreg,func
> +
> +  dvimode:
> +    type: object

       additionalProperties: false

> +    properties:
> +      compatible:
> +        const: arm,vexpress-dvimode
> +
> +      arm,vexpress-sysreg,func:
> +        description: DVI mode identifier
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +        items:
> +          - const: 11
> +          - description: device number
> +
> +    required:
> +      - compatible
> +      - arm,vexpress-sysreg,func
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - arm,vexpress,config-bridge
> +
> +patternProperties:
> +  '^.*clk[0-9]*$':

You can drop '^.*'

       additionalProperties: false

> +    type: object
> +    description:
> +      clocks
> +
> +    properties:
> +      compatible:
> +        const: arm,vexpress-osc
> +
> +      arm,vexpress-sysreg,func:
> +        description: clock specifier
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +        items:
> +          - const: 1
> +          - description: clock number
> +
> +      freq-range:
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +        items:
> +          - description: minimal clock frequency
> +          - description: maximum clock frequency
> +
> +      "#clock-cells":
> +        const: 0
> +
> +      clock-output-names:
> +        maxItems: 1
> +
> +    required:
> +      - compatible
> +      - arm,vexpress-sysreg,func
> +      - "#clock-cells"
> +
> +  "^volt-.+$":
> +    $ref: /schemas/regulator/regulator.yaml#

       unevaluatedProperties: false

> +    properties:
> +      compatible:
> +        const: arm,vexpress-volt
> +
> +      arm,vexpress-sysreg,func:
> +        description: regulator specifier
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +        items:
> +          - const: 2
> +          - description: device number
> +
> +      label:
> +        maxItems: 1
> +
> +    required:
> +      - compatible
> +      - arm,vexpress-sysreg,func
> +
> +  "^amp-.+$":
> +    type: object

       additionalProperties: false

> +    properties:
> +      compatible:
> +        const: arm,vexpress-amp
> +
> +      arm,vexpress-sysreg,func:
> +        description: current sensor identifier
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +        items:
> +          - const: 3
> +          - description: device number
> +
> +      label:
> +        maxItems: 1
> +
> +    required:
> +      - compatible
> +      - arm,vexpress-sysreg,func
> +
> +  "^temp-.+$":
> +    type: object

       additionalProperties: false

> +    properties:
> +      compatible:
> +        const: arm,vexpress-temp
> +
> +      arm,vexpress-sysreg,func:
> +        description: temperature sensor identifier
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +        items:
> +          - const: 4
> +          - description: device number
> +
> +      label:
> +        maxItems: 1
> +
> +    required:
> +      - compatible
> +      - arm,vexpress-sysreg,func
> +
> +  "^reset[0-9]*$":
> +    type: object

       additionalProperties: false

> +    properties:
> +      compatible:
> +        const: arm,vexpress-reset
> +
> +      arm,vexpress-sysreg,func:
> +        description: reset specifier
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +        items:
> +          - const: 5
> +          - description: reset device number
> +
> +    required:
> +      - compatible
> +      - arm,vexpress-sysreg,func
> +
> +  "^power-.+$":
> +    type: object

       additionalProperties: false

> +    properties:
> +      compatible:
> +        const: arm,vexpress-power
> +
> +      arm,vexpress-sysreg,func:
> +        description: power sensor identifier
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +        items:
> +          - const: 12
> +          - description: device number
> +
> +      label:
> +        maxItems: 1
> +
> +    required:
> +      - compatible
> +      - arm,vexpress-sysreg,func
> +
> +  "^energy(-.+)?$":
> +    type: object

       additionalProperties: false

> +    properties:
> +      compatible:
> +        const: arm,vexpress-energy
> +
> +      arm,vexpress-sysreg,func:
> +        description: energy sensor identifier
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +        oneOf:
> +          - items:
> +              - const: 13
> +              - description: device number
> +          - items:
> +              - const: 13
> +              - description: device number
> +              - const: 13
> +              - description: second device number
> +
> +      label:
> +        maxItems: 1
> +
> +    required:
> +      - compatible
> +      - arm,vexpress-sysreg,func
> +
> +examples:
> +  - |
> +    mcc {
> +        compatible = "arm,vexpress,config-bus";
> +        arm,vexpress,config-bridge = <&v2m_sysreg>;
> +
> +        clk0 {
> +            compatible = "arm,vexpress-osc";
> +            arm,vexpress-sysreg,func = <1 0>;
> +            #clock-cells = <0>;
> +        };
> +
> +        energy {
> +            compatible = "arm,vexpress-energy";
> +            arm,vexpress-sysreg,func = <13 0>, <13 1>;
> +        };
> +    };
> diff --git a/Documentation/devicetree/bindings/arm/vexpress-sysreg.txt b/Documentation/devicetree/bindings/arm/vexpress-sysreg.txt
> deleted file mode 100644
> index 50095802fb4ac..0000000000000
> --- a/Documentation/devicetree/bindings/arm/vexpress-sysreg.txt
> +++ /dev/null
> @@ -1,103 +0,0 @@
> -ARM Versatile Express system registers
> ---------------------------------------
> -
> -This is a system control registers block, providing multiple low level
> -platform functions like board detection and identification, software
> -interrupt generation, MMC and NOR Flash control etc.
> -
> -Required node properties:
> -- compatible value : = "arm,vexpress,sysreg";
> -- reg : physical base address and the size of the registers window
> -
> -Deprecated properties, replaced by GPIO subnodes (see below):
> -- gpio-controller : specifies that the node is a GPIO controller
> -- #gpio-cells : size of the GPIO specifier, should be 2:
> -  - first cell is the pseudo-GPIO line number:
> -    0 - MMC CARDIN
> -    1 - MMC WPROT
> -    2 - NOR FLASH WPn
> -  - second cell can take standard GPIO flags (currently ignored).
> -
> -Control registers providing pseudo-GPIO lines must be represented
> -by subnodes, each of them requiring the following properties:
> -- compatible value : one of
> -			"arm,vexpress-sysreg,sys_led"
> -			"arm,vexpress-sysreg,sys_mci"
> -			"arm,vexpress-sysreg,sys_flash"
> -- gpio-controller : makes the node a GPIO controller
> -- #gpio-cells : size of the GPIO specifier, must be 2:
> -  - first cell is the function number:
> -    - for sys_led : 0..7 = LED 0..7
> -    - for sys_mci : 0 = MMC CARDIN, 1 = MMC WPROT
> -    - for sys_flash : 0 = NOR FLASH WPn
> -  - second cell can take standard GPIO flags (currently ignored).
> -
> -Example:
> -	v2m_sysreg: sysreg@10000000 {
> - 		compatible = "arm,vexpress-sysreg";
> - 		reg = <0x10000000 0x1000>;
> -
> -		v2m_led_gpios: sys_led@8 {
> -			compatible = "arm,vexpress-sysreg,sys_led";
> -			gpio-controller;
> -			#gpio-cells = <2>;
> -		};
> -
> -		v2m_mmc_gpios: sys_mci@48 {
> -			compatible = "arm,vexpress-sysreg,sys_mci";
> -			gpio-controller;
> -			#gpio-cells = <2>;
> -		};
> -
> -		v2m_flash_gpios: sys_flash@4c {
> -			compatible = "arm,vexpress-sysreg,sys_flash";
> -			gpio-controller;
> -			#gpio-cells = <2>;
> -		};
> - 	};
> -
> -This block also can also act a bridge to the platform's configuration
> -bus via "system control" interface, addressing devices with site number,
> -position in the board stack, config controller, function and device
> -numbers - see motherboard's TRM for more details. All configuration
> -controller accessible via this interface must reference the sysreg
> -node via "arm,vexpress,config-bridge" phandle and define appropriate
> -topology properties - see main vexpress node documentation for more
> -details. Each child of such node describes one function and must
> -define the following properties:
> -- compatible value : must be one of (corresponding to the TRM):
> -	"arm,vexpress-amp"
> -	"arm,vexpress-dvimode"
> -	"arm,vexpress-energy"
> -	"arm,vexpress-muxfpga"
> -	"arm,vexpress-osc"
> -	"arm,vexpress-power"
> -	"arm,vexpress-reboot"
> -	"arm,vexpress-reset"
> -	"arm,vexpress-scc"
> -	"arm,vexpress-shutdown"
> -	"arm,vexpress-temp"
> -	"arm,vexpress-volt"
> -- arm,vexpress-sysreg,func : must contain a set of two cells long groups:
> -  - first cell of each group defines the function number
> -    (eg. 1 for clock generator, 2 for voltage regulators etc.)
> -  - second cell of each group defines device number (eg. osc 0,
> -    osc 1 etc.)
> -  - some functions (eg. energy meter, with its 64 bit long counter)
> -    are using more than one function/device number pair
> -
> -Example:
> -	mcc {
> -		compatible = "arm,vexpress,config-bus";
> -		arm,vexpress,config-bridge = <&v2m_sysreg>;
> -
> -		osc@0 {
> -			compatible = "arm,vexpress-osc";
> -			arm,vexpress-sysreg,func = <1 0>;
> -		};
> -
> -		energy@0 {
> -			compatible = "arm,vexpress-energy";
> -			arm,vexpress-sysreg,func = <13 0>, <13 1>;
> -		};
> -	};
> -- 
> 2.25.1
> 
> 
