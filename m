Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 970EB64EB0F
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 12:59:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229923AbiLPL7V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 06:59:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231260AbiLPL7J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 06:59:09 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E3C64D5FD
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:59:00 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id y25so3117263lfa.9
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:59:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6zwysc8U2s2e9h58SdsiWcuV1+0Rnn2H+B+IXbU4/hI=;
        b=ogK6gTtdShhE8/asKk6lhxKVuiOlB5qY7ksUv1et9VqURowPlazRu22GXz9SoM5U+s
         sbBuq82EmXECllzzz1VhM9FPwWBUbhvosZBEvdf6j2qFOG1cYBws5dXwvzaU3lXrLo3X
         bw2e9akyNaLZ0+V1E2iUpHpTWH7TS5iXLavHkTnefNTlME42NHo/RfG2d6eyFng17NN7
         C4PcB7GCSPFYrfukortkoQw/SFOfNSuux6hup32wh/7pbh+7qGD3Cx90nIHvVQOaWrDH
         gZdv8le3tpfr3JgodIZa5hXnDf70+UtPtziGbh6sxecKNJ9nm8PokyZBiAArbBlEkZKS
         EQtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6zwysc8U2s2e9h58SdsiWcuV1+0Rnn2H+B+IXbU4/hI=;
        b=Vw+J75YNrPkChQ2I6IAZujgua9OS68S2zxmDm6dJaK4BDr5ACDtjkHnUzRm6w42Anv
         GqGkTCctlWBPOf4FEh1hp9rkkgQaGktBh/Nc5f/MR+Q4frtFStujJYiYnc9qSlBz0mZy
         Q6T88LDNCUQrdrE4jKPh9DFXGDM4WwgCfGMaPwOFEMUsEjZRPzdRk2yYVpXQ1RAMN1SW
         IOfbLgB27P0VXGEWX9mJXI1VNytUCKKLSyu4AGFgpslErl0gSw8o4lRwKs87/FVKarut
         ga6Y2XpXtTEHHTIIAvSjyV6709IG4nF/X9J50fOx6gYlTQzGMCI4SCDkpRLqWyjljkpJ
         15kw==
X-Gm-Message-State: ANoB5pnAAhQ0+M6intYzM5JZh9WhJ3sDZbL09xsG3gaa56+jReuR0wAN
        m3MmvaLNwovXnInoZmaPzQsh1w==
X-Google-Smtp-Source: AA0mqf7g7q82RT/pQiTd9eg/VgfDs1p3VQk5vkY5g7+YPs38FlF4mex01Ma4Lx9Qp65YvFm6rpzDCg==
X-Received: by 2002:ac2:4422:0:b0:4b5:8421:587a with SMTP id w2-20020ac24422000000b004b58421587amr8848432lfl.44.1671191938489;
        Fri, 16 Dec 2022 03:58:58 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t21-20020ac243b5000000b0049313f77755sm199966lfl.213.2022.12.16.03.58.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 03:58:58 -0800 (PST)
Message-ID: <018a8db2-166b-ccbf-5ca5-c75c07fec3b7@linaro.org>
Date:   Fri, 16 Dec 2022 12:58:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: dt binding check error with hash and comma
Content-Language: en-US
To:     Tony Lindgren <tony@atomide.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org
References: <Y5xcE5Qoyf5Zg6fV@atomide.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y5xcE5Qoyf5Zg6fV@atomide.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/12/2022 12:52, Tony Lindgren wrote:
> Hi Krzysztof & Rob,
> 
> I'm getting a dt binding check error with a pinctrl-single yaml patch for
> property '#pinctrl-single,gpio-range-cells'. It seems to be caused by having
> both a hash and comma in the property:
> 
>   DTEX    Documentation/devicetree/bindings/pinctrl/pinctrl-single.example.dts
>   LINT    Documentation/devicetree/bindings
>   CHKDT   Documentation/devicetree/bindings/processed-schema.json
> Traceback (most recent call last):
>   File "/usr/bin/dt-doc-validate", line 63, in <module>
>     ret |= check_doc(f)
>            ^^^^^^^^^^^^
>   File "/usr/bin/dt-doc-validate", line 32, in check_doc
>     print(dtschema.format_error(filename, error, verbose=args.verbose), file=sys.stderr)
>           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/lib/python3.11/site-packages/dtschema/lib.py", line 1350, in format_error
>     msg += '\n' + format_error(filename, suberror, prefix=prefix+"\t", nodename=nodename, verbose=verbose)
>                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/lib/python3.11/site-packages/dtschema/lib.py", line 1326, in format_error
>     if error.linecol[0] >= 0:
>        ^^^^^^^^^^^^^
> AttributeError: 'ValidationError' object has no attribute 'linecol'
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>   DTC_CHK Documentation/devicetree/bindings/pinctrl/pinctrl-single.example.dtb
> 
> Any ideas why this is happening?
> 
> This is with dt-doc-validate 2022.11 and:

You have old dtschema, update. This error was fixed.


> 
> $ make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml
> 
> With the WIP patch below.
> 
> Regards,
> 
> Tony
> 
> 8< -------------------------
> diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-single.txt b/Documentation/devicetree/bindings/pinctrl/pinctrl-single.txt
> deleted file mode 100644
> --- a/Documentation/devicetree/bindings/pinctrl/pinctrl-single.txt
> +++ /dev/null
> @@ -1,262 +0,0 @@
> -One-register-per-pin type device tree based pinctrl driver
> -
> -Required properties:
> -- compatible : "pinctrl-single" or "pinconf-single".
> -  "pinctrl-single" means that pinconf isn't supported.
> -  "pinconf-single" means that generic pinconf is supported.
> -
> -- reg : offset and length of the register set for the mux registers
> -
> -- #pinctrl-cells : number of cells in addition to the index, set to 1
> -  or 2 for pinctrl-single,pins and set to 2 for pinctrl-single,bits
> -
> -- pinctrl-single,register-width : pinmux register access width in bits
> -
> -- pinctrl-single,function-mask : mask of allowed pinmux function bits
> -  in the pinmux register
> -
> -Optional properties:
> -- pinctrl-single,function-off : function off mode for disabled state if
> -  available and same for all registers; if not specified, disabling of
> -  pin functions is ignored
> -
> -- pinctrl-single,bit-per-mux : boolean to indicate that one register controls
> -  more than one pin, for which "pinctrl-single,function-mask" property specifies
> - position mask of pin.
> -
> -- pinctrl-single,drive-strength : array of value that are used to configure
> -  drive strength in the pinmux register. They're value of drive strength
> -  current and drive strength mask.
> -
> -		/* drive strength current, mask */
> -		pinctrl-single,power-source = <0x30 0xf0>;
> -
> -- pinctrl-single,bias-pullup : array of value that are used to configure the
> -  input bias pullup in the pinmux register.
> -
> -		/* input, enabled pullup bits, disabled pullup bits, mask */
> -		pinctrl-single,bias-pullup = <0 1 0 1>;
> -
> -- pinctrl-single,bias-pulldown : array of value that are used to configure the
> -  input bias pulldown in the pinmux register.
> -
> -		/* input, enabled pulldown bits, disabled pulldown bits, mask */
> -		pinctrl-single,bias-pulldown = <2 2 0 2>;
> -
> -  * Two bits to control input bias pullup and pulldown: User should use
> -    pinctrl-single,bias-pullup & pinctrl-single,bias-pulldown. One bit means
> -    pullup, and the other one bit means pulldown.
> -  * Three bits to control input bias enable, pullup and pulldown. User should
> -    use pinctrl-single,bias-pullup & pinctrl-single,bias-pulldown. Input bias
> -    enable bit should be included in pullup or pulldown bits.
> -  * Although driver could set PIN_CONFIG_BIAS_DISABLE, there's no property as
> -    pinctrl-single,bias-disable. Because pinctrl single driver could implement
> -    it by calling pulldown, pullup disabled.
> -
> -- pinctrl-single,input-schmitt : array of value that are used to configure
> -  input schmitt in the pinmux register. In some silicons, there're two input
> -  schmitt value (rising-edge & falling-edge) in the pinmux register.
> -
> -		/* input schmitt value, mask */
> -		pinctrl-single,input-schmitt = <0x30 0x70>;
> -
> -- pinctrl-single,input-schmitt-enable : array of value that are used to
> -  configure input schmitt enable or disable in the pinmux register.
> -
> -		/* input, enable bits, disable bits, mask */
> -		pinctrl-single,input-schmitt-enable = <0x30 0x40 0 0x70>;
> -
> -- pinctrl-single,low-power-mode : array of value that are used to configure
> -  low power mode of this pin. For some silicons, the low power mode will
> -  control the output of the pin when the pad including the pin enter low
> -  power mode.
> -		/* low power mode value, mask */
> -		pinctrl-single,low-power-mode = <0x288 0x388>;
> -
> -- pinctrl-single,gpio-range : list of value that are used to configure a GPIO
> -  range. They're value of subnode phandle, pin base in pinctrl device, pin
> -  number in this range, GPIO function value of this GPIO range.
> -  The number of parameters is depend on #pinctrl-single,gpio-range-cells
> -  property.
> -
> -		/* pin base, nr pins & gpio function */
> -		pinctrl-single,gpio-range = <&range 0 3 0>, <&range 3 9 1>;
> -
> -- interrupt-controller : standard interrupt controller binding if using
> -  interrupts for wake-up events for example. In this case pinctrl-single
> -  is set up as a chained interrupt controller and the wake-up interrupts
> -  can be requested by the drivers using request_irq().
> -
> -- #interrupt-cells : standard interrupt binding if using interrupts
> -
> -This driver assumes that there is only one register for each pin (unless the
> -pinctrl-single,bit-per-mux is set), and uses the common pinctrl bindings as
> -specified in the pinctrl-bindings.txt document in this directory.
> -
> -The pin configuration nodes for pinctrl-single are specified as pinctrl
> -register offset and values using pinctrl-single,pins. Only the bits specified
> -in pinctrl-single,function-mask are updated.
> -
> -When #pinctrl-cells = 1, then setting a pin for a device could be done with:
> -
> -	pinctrl-single,pins = <0xdc 0x118>;
> -
> -Where 0xdc is the offset from the pinctrl register base address for the device
> -pinctrl register, and 0x118 contains the desired value of the pinctrl register.
> -
> -When #pinctrl-cells = 2, then setting a pin for a device could be done with:
> -
> -	pinctrl-single,pins = <0xdc 0x30 0x07>;
> -
> -Where 0x30 is the pin configuration value and 0x07 is the pin mux mode value.
> -These two values are OR'd together to produce the value stored at offset 0xdc.
> -See the device example and static board pins example below for more information.
> -
> -In case when one register changes more than one pin's mux the
> -pinctrl-single,bits need to be used which takes three parameters:
> -
> -	pinctrl-single,bits = <0xdc 0x18 0xff>;
> -
> -Where 0xdc is the offset from the pinctrl register base address for the
> -device pinctrl register, 0x18 is the desired value, and 0xff is the sub mask to
> -be used when applying this change to the register.
> -
> -
> -Optional sub-node: In case some pins could be configured as GPIO in the pinmux
> -register, those pins could be defined as a GPIO range. This sub-node is required
> -by pinctrl-single,gpio-range property.
> -
> -Required properties in sub-node:
> -- #pinctrl-single,gpio-range-cells : the number of parameters after phandle in
> -  pinctrl-single,gpio-range property.
> -
> -	range: gpio-range {
> -		#pinctrl-single,gpio-range-cells = <3>;
> -	};
> -
> -
> -Example:
> -
> -/* SoC common file */
> -
> -/* first controller instance for pins in core domain */
> -pmx_core: pinmux@4a100040 {
> -	compatible = "pinctrl-single";
> -	reg = <0x4a100040 0x0196>;
> -	#address-cells = <1>;
> -	#size-cells = <0>;
> -	#interrupt-cells = <1>;
> -	interrupt-controller;
> -	pinctrl-single,register-width = <16>;
> -	pinctrl-single,function-mask = <0xffff>;
> -};
> -
> -/* second controller instance for pins in wkup domain */
> -pmx_wkup: pinmux@4a31e040 {
> -	compatible = "pinctrl-single";
> -	reg = <0x4a31e040 0x0038>;
> -	#address-cells = <1>;
> -	#size-cells = <0>;
> -	#interrupt-cells = <1>;
> -	interrupt-controller;
> -	pinctrl-single,register-width = <16>;
> -	pinctrl-single,function-mask = <0xffff>;
> -};
> -
> -control_devconf0: pinmux@48002274 {
> -	compatible = "pinctrl-single";
> -	reg = <0x48002274 4>;	/* Single register */
> -	#address-cells = <1>;
> -	#size-cells = <0>;
> -	pinctrl-single,bit-per-mux;
> -	pinctrl-single,register-width = <32>;
> -	pinctrl-single,function-mask = <0x5F>;
> -};
> -
> -/* third controller instance for pins in gpio domain */
> -pmx_gpio: pinmux@d401e000 {
> -	compatible = "pinconf-single";
> -	reg = <0xd401e000 0x0330>;
> -	#address-cells = <1>;
> -	#size-cells = <1>;
> -	ranges;
> -
> -	pinctrl-single,register-width = <32>;
> -	pinctrl-single,function-mask = <7>;
> -
> -	/* sparse GPIO range could be supported */
> -	pinctrl-single,gpio-range = <&range 0 3 0>, <&range 3 9 1>,
> -				    <&range 12 1 0>, <&range 13 29 1>,
> -				    <&range 43 1 0>, <&range 44 49 1>,
> -				    <&range 94 1 1>, <&range 96 2 1>;
> -
> -	range: gpio-range {
> -		#pinctrl-single,gpio-range-cells = <3>;
> -	};
> -};
> -
> -
> -/* board specific .dts file */
> -
> -&pmx_core {
> -
> -	/*
> -	 * map all board specific static pins enabled by the pinctrl driver
> -	 * itself during the boot (or just set them up in the bootloader)
> -	 */
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&board_pins>;
> -
> -	board_pins: pinmux_board_pins {
> -		pinctrl-single,pins = <
> -			0x6c 0xf
> -			0x6e 0xf
> -			0x70 0xf
> -			0x72 0xf
> -		>;
> -	};
> -
> -	uart0_pins: pinmux_uart0_pins {
> -		pinctrl-single,pins = <
> -			0x208 0		/* UART0_RXD (IOCFG138) */
> -			0x20c 0		/* UART0_TXD (IOCFG139) */
> -		>;
> -		pinctrl-single,bias-pulldown = <0 2 2>;
> -		pinctrl-single,bias-pullup = <0 1 1>;
> -	};
> -
> -	/* map uart2 pins */
> -	uart2_pins: pinmux_uart2_pins {
> -		pinctrl-single,pins = <
> -			0xd8 0x118
> -			0xda 0
> -			0xdc 0x118
> -			0xde 0
> -		>;
> -	};
> -};
> -
> -&control_devconf0 {
> -	mcbsp1_pins: pinmux_mcbsp1_pins {
> -		pinctrl-single,bits = <
> -			0x00 0x18 0x18 /* FSR/CLKR signal from FSX/CLKX pin */
> -		>;
> -	};
> -
> -	mcbsp2_clks_pins: pinmux_mcbsp2_clks_pins {
> -		pinctrl-single,bits = <
> -			0x00 0x40 0x40 /* McBSP2 CLKS from McBSP_CLKS pin */
> -		>;
> -	};
> -
> -};
> -
> -&uart1 {
> -       pinctrl-names = "default";
> -       pinctrl-0 = <&uart0_pins>;
> -};
> -
> -&uart2 {
> -       pinctrl-names = "default";
> -       pinctrl-0 = <&uart2_pins>;
> -};
> diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml b/Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml
> @@ -0,0 +1,141 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/pinctrl-single.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: One-register-per-pin type device tree based pinctrl driver
> +
> +maintainers:
> +  - Tony Lindgren <tony@atomide.com>
> +
> +description: |
> +  This binding describes pinctrl devices that use one hardware register to
> +  configure each pin.
> +
> +properties:
> +  compatible:
> +    oneOf:

Drop oneOf

> +      - enum:
> +          - pinctrl-single
> +          - pinconf-single
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupt-controller: true
> +
> +  '#interrupt-cells':
> +    const: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +  '#pinctrl-cells':
> +    enum: [ 1, 2 ]
> +
> +  '#gpio-range-cells':
> +    const: 3
> +    description: No longer needed, may exist in older files for gpio-ranges
> +    deprecated: true
> +
> +  pinctrl-single,bit-per-mux:
> +    description: Optional flag to indicate register controls more than one pin
> +    type: boolean
> +
> +  pinctrl-single,function-mask:
> +    description: Mask of the allowed register bits
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  pinctrl-single,function-off:
> +    description: Optional function off mode for disabled state
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  pinctrl-single,gpio-range:
> +    description: Optional list of pin base, nr pins & gpio function
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +
> +  '#pinctrl-single,gpio-range-cells':
> +    const: 3
> +    description: Number of gpio range cells
> +

If this is const:3 then why even having this property?

Best regards,
Krzysztof

