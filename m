Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28C594D5F81
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 11:30:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347883AbiCKKbB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 05:31:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238989AbiCKKbB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 05:31:01 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E2B01A39FF
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 02:29:58 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 4B91B3F1B7
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 10:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646994595;
        bh=GAdlqHcA6Sh85uTkI0dqow1UouMp3pSS26cRmxWTyao=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=T9SVmNdTLWoOxqVLP+PDvuAMnzgvhUrVPRTf1HJljCwr3ijofvIdPMPToToYvnehk
         o6jkODlh21Hl9/I4d0qW+s+yCaaF/uBkjIgtbVhQuqFiqita4qmngsyrZMatTatXAm
         9vPD1ZPv0EWlrNED8GKwwzXQ/pNwGMofLDG4cnRoA+W4PpttFFkmpQ5rCyuV99eFGS
         aOdPamj76KhkYXrJ1YR9RKMWNTxj3nf064wNNxDNBeCncHugCqCR2jgO5k/84V4Mms
         LWYIdbQfwWAEh4Xl5Gzb1CPrI4Jj5tC+Zncq503CojfWqvbLSLosV6wBBzHRMmWJB0
         U8JhW8iFyTYWQ==
Received: by mail-ed1-f70.google.com with SMTP id n11-20020a50cc4b000000b00415e939bf9eso4616615edi.22
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 02:29:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GAdlqHcA6Sh85uTkI0dqow1UouMp3pSS26cRmxWTyao=;
        b=QeMcV9qqqNpqIWvDay69q5s9iNqgjOJWbM7C9V/PhaLsl2FaJ+sNTEhRUEFmPpOme+
         h0lzO6pnG4CiEummX3ih3iHnW9OzSigCrfik+zKyoCk9azszBap3KjxmdWIXaLHTlL6D
         G14MqEVXN+gPRlGLyxStLEZwcFvjTLNqnIMLdGfhK78DJOr6MAPq9wctjkD5jd0/dAei
         PrvXeOShQ0VbGQ9ZqkJD+lQi7wOEj2KR92tnV2W7JPsprT+pQa9WabflgVxqJKOoBXZq
         t2cS37yip0WGAnxrkqM+nlk0COoeBiM+I5BJSvvad9+isl8mqLxVC6IR5OQEoLYZFE2S
         JQrg==
X-Gm-Message-State: AOAM533xhGk+p8SsMj3G0kKAi3Om1ix3ZKC5ksClOoAPV5Ljyx1GO8sO
        E6Z4V9UfUMWH20mo8O65pcGQU++Qpb9dSKGeCJ6U6uVbrHYVNMKpGucr0Vr5/xRfu6Lf/Re8lR9
        RRDjCiIHHIidEFhfAMy+ij8cwV0HJacJ6c4tEZjw=
X-Received: by 2002:a17:907:3e09:b0:6da:83e0:f2a4 with SMTP id hp9-20020a1709073e0900b006da83e0f2a4mr8202652ejc.758.1646994594905;
        Fri, 11 Mar 2022 02:29:54 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzT2eso8G7Fi6TIPVxrIn33+/LwnmQUGoAsBS+jNWgtjnhVY+thE0W80PoU0E/7xBrAbEwkzg==
X-Received: by 2002:a17:907:3e09:b0:6da:83e0:f2a4 with SMTP id hp9-20020a1709073e0900b006da83e0f2a4mr8202633ejc.758.1646994594631;
        Fri, 11 Mar 2022 02:29:54 -0800 (PST)
Received: from [192.168.0.148] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id n25-20020aa7db59000000b00415965e9727sm3058824edt.18.2022.03.11.02.29.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Mar 2022 02:29:54 -0800 (PST)
Message-ID: <eb66cc83-2da9-8e19-db69-633e34fef946@canonical.com>
Date:   Fri, 11 Mar 2022 11:29:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 09/10] arch: arm: boot: dts: Introduce HPE GXP Device
 tree
Content-Language: en-US
To:     nick.hawkins@hpe.com, verdun@hpe.com
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220310195229.109477-1-nick.hawkins@hpe.com>
 <20220310195229.109477-9-nick.hawkins@hpe.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220310195229.109477-9-nick.hawkins@hpe.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/03/2022 20:52, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> The HPE SoC is new to linux. This patch
> creates the basic device tree layout with minimum required
> for linux to boot. This includes timer and watchdog
> support.
> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
> ---
>  arch/arm/boot/dts/Makefile               |   2 +
>  arch/arm/boot/dts/hpe-bmc-dl360gen10.dts |  27 +++++
>  arch/arm/boot/dts/hpe-gxp.dtsi           | 148 +++++++++++++++++++++++
>  3 files changed, 177 insertions(+)
>  create mode 100644 arch/arm/boot/dts/hpe-bmc-dl360gen10.dts
>  create mode 100644 arch/arm/boot/dts/hpe-gxp.dtsi
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index e41eca79c950..2823b359d373 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1550,3 +1550,5 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>  	aspeed-bmc-vegman-n110.dtb \
>  	aspeed-bmc-vegman-rx20.dtb \
>  	aspeed-bmc-vegman-sx20.dtb
> +dtb-$(CONFIG_ARCH_HPE_GXP) += \
> +	hpe-bmc-dl360gen10.dtb

Alphabetically, also in respect to other architectures, so before
CONFIG_ARCH_INTEGRATOR.

> diff --git a/arch/arm/boot/dts/hpe-bmc-dl360gen10.dts b/arch/arm/boot/dts/hpe-bmc-dl360gen10.dts
> new file mode 100644
> index 000000000000..da5eac1213a8
> --- /dev/null
> +++ b/arch/arm/boot/dts/hpe-bmc-dl360gen10.dts
> @@ -0,0 +1,27 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Device Tree file for HPE DL360Gen10
> + */
> +
> +/include/ "hpe-gxp.dtsi"
> +
> +/ {
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +	compatible = "hpe,gxp";

Missing board compatible.

> +	model = "Hewlett Packard Enterprise ProLiant dl360 Gen10";
> +
> +	chosen {
> +		bootargs = "earlyprintk console=ttyS2,115200";

I have impression we talked about it...

> +	};
> +
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x40000000 0x20000000>;
> +	};
> +
> +	ahb {

Why do you need empty node?

> +
> +	};
> +
> +};
> diff --git a/arch/arm/boot/dts/hpe-gxp.dtsi b/arch/arm/boot/dts/hpe-gxp.dtsi
> new file mode 100644
> index 000000000000..dfaf8df829fe
> --- /dev/null
> +++ b/arch/arm/boot/dts/hpe-gxp.dtsi
> @@ -0,0 +1,148 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Device Tree file for HPE GXP
> + */
> +
> +/dts-v1/;
> +/ {
> +	model = "Hewlett Packard Enterprise GXP BMC";
> +	compatible = "hpe,gxp";
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		cpu@0 {
> +			compatible = "arm,cortex-a9";
> +			device_type = "cpu";
> +			reg = <0>;
> +		};
> +	};
> +
> +	gxp-init@cefe0010 {

Need a generic node name. gpx-init is specific.

> +		compatible = "hpe,gxp-cpu-init";
> +		reg = <0xcefe0010 0x04>;
> +	};
> +
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x40000000 0x20000000>;
> +	};
> +
> +	ahb {

By convention we call it soc.

> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		device_type = "soc";
> +		ranges;
> +
> +		vic0: interrupt-controller@ceff0000 {
> +			compatible = "arm,pl192-vic";
> +			interrupt-controller;
> +			reg = <0xceff0000 0x1000>;

Please put reg after compatible, everywhere.

> +			#interrupt-cells = <1>;
> +		};
> +
> +		vic1: interrupt-controller@80f00000 {
> +			compatible = "arm,pl192-vic";
> +			interrupt-controller;
> +			reg = <0x80f00000 0x1000>;
> +			#interrupt-cells = <1>;
> +		};
> +
> +		timer0: timer@c0000080 {
> +			compatible = "hpe,gxp-timer";
> +			reg = <0xc0000080 0x1>, <0xc0000094 0x01>, <0xc0000088 0x08>;
> +			interrupts = <0>;
> +			interrupt-parent = <&vic0>;
> +			clock-frequency = <400000000>;
> +		};
> +
> +		uarta: serial@c00000e0 {
> +			compatible = "ns16550a";
> +			reg = <0xc00000e0 0x8>;
> +			interrupts = <17>;
> +			interrupt-parent = <&vic0>;
> +			clock-frequency = <1846153>;
> +			reg-shift = <0>;
> +		};
> +
> +		uartb: serial@c00000e8 {
> +			compatible = "ns16550a";
> +			reg = <0xc00000e8 0x8>;
> +			interrupts = <18>;
> +			interrupt-parent = <&vic0>;
> +			clock-frequency = <1846153>;
> +			reg-shift = <0>;
> +		};
> +
> +		uartc: serial@c00000f0 {
> +			compatible = "ns16550a";
> +			reg = <0xc00000f0 0x8>;
> +			interrupts = <19>;
> +			interrupt-parent = <&vic0>;
> +			clock-frequency = <1846153>;
> +			reg-shift = <0>;
> +		};
> +
> +		usb0: usb@cefe0000 {
> +			compatible = "generic-ehci";

I think one of previous comments was that you cannot have "generic-ehci"
only, right?

> +			reg = <0xcefe0000 0x100>;
> +			interrupts = <7>;
> +			interrupt-parent = <&vic0>;
> +		};
> +
> +		usb1: usb@cefe0100 {
> +			compatible = "generic-ohci";
> +			reg = <0xcefe0100 0x110>;
> +			interrupts = <6>;
> +			interrupt-parent = <&vic0>;
> +		};
> +
> +		vrom@58000000 {
> +			compatible = "mtd-ram";
> +			bank-width = <4>;
> +			reg = <0x58000000 0x4000000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			partition@0 {
> +				label = "vrom-prime";
> +				reg = <0x0 0x2000000>;
> +			};
> +			partition@2000000 {
> +				label = "vrom-second";
> +				reg = <0x2000000 0x2000000>;
> +			};
> +		};
> +
> +		i2cg: syscon@c00000f8 {


> +			compatible = "simple-mfd", "syscon";
> +			reg = <0xc00000f8 0x08>;
> +		};
> +	};
> +
> +	clocks {
> +		osc: osc {

Keep node naming consistent, so just "clk"... but it's also very generic
comparing to others, so I wonder what is this clock?

> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-output-names = "osc";
> +			clock-frequency = <33333333>;
> +		};
> +
> +		iopclk: iopclk {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-output-names = "iopclk";
> +			clock-frequency = <400000000>;
> +		};
> +
> +		memclk: memclk {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-output-names = "memclk";
> +			clock-frequency = <800000000>;
> +		};

What are these clocks? If external to the SoC, then where are they? On
the board?

> +	};
> +};


Best regards,
Krzysztof
