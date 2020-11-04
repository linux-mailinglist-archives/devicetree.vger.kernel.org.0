Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31F002A5D1F
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 04:33:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728619AbgKDDdt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Nov 2020 22:33:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728272AbgKDDdt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Nov 2020 22:33:49 -0500
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 859D5C061A4D
        for <devicetree@vger.kernel.org>; Tue,  3 Nov 2020 19:33:47 -0800 (PST)
Received: by mail-pf1-x444.google.com with SMTP id c20so16152461pfr.8
        for <devicetree@vger.kernel.org>; Tue, 03 Nov 2020 19:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2jUnciHPWTJLufC07o47cAeByHy7mrLPpgf5OkBSgio=;
        b=spU6uIBIHF8vhuhXsVnMF510AdouStN6Ax7aaWQtRrM2tgoBJ1AaPAYjsEDGul4S00
         sbFUJrxrRALPwySc4en+hXAewd6A1MO3JG/46cxE44EH1Krq90QTgRrDJsYJaykE8qRD
         azrA8RUwG6VvXk/Tk3JkROi2YkKGV/Fvuy1m35md2JiG5d1+DZisQpja2sLtUCMb4d+m
         pilImcMzkuEbeM/0Ud4nbCZA91+p5HZyTnAJqBMoozP1qASNSGliVeXPJKZvuCQqnlFm
         Xc/ItwDF23PK7pG3G+KP7/uO0vCOpuvWCCOnNKMyC/MBLTpF0vFPtoMQRuZBKDayybyX
         Ky2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2jUnciHPWTJLufC07o47cAeByHy7mrLPpgf5OkBSgio=;
        b=Yf7Z+ZwWDYyWoXiC3kCLfh0BIj5K7n7efvnNOZdl2cKCqLMGP1FCzbeMXQQy820Yvd
         3Y9rV4NmyHQmKpxiPNN2XeTcE51PXtply5VZAaTeHHU5cETgk+Q4GEygAKvWlQ6jfpht
         KEwIyS0yyt77al7kDnE5BbIYXj5eKfEzdL/DjOWXlJj9Y9Edrws25GAICUg/NKbKtTnF
         +zzMPRoTOEkrXpEwO2JBiSNyw9NflkdcgswOXgZLGGzTcn5E1rsqp/WGwJU2ycwdsmom
         QjMSpHvCB8/5x4Rzhrxci12S5t1wKhLVRfi7zmadQ4+nfQ0lGtdXQPVN26Arx/SisWGl
         kpqg==
X-Gm-Message-State: AOAM531kvIltg25jVvxrLPcFaoz9AQMhZm7vZ0a8OGnwQ0OlSo7ApVuT
        gByJBor3khBPBQbIwpI8iU0=
X-Google-Smtp-Source: ABdhPJzJE9XSYv2dyII+0CMuEWEba7oEDHwXt9LdkLzJETlmC8DvIxnhuez238lYwkB+ggaKTjQKSg==
X-Received: by 2002:a17:90b:310e:: with SMTP id gc14mr2444968pjb.147.1604460827097;
        Tue, 03 Nov 2020 19:33:47 -0800 (PST)
Received: from [10.230.28.234] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s145sm553094pfs.187.2020.11.03.19.33.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 19:33:46 -0800 (PST)
Subject: Re: [PATCH 2/2] arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300
 early DTS files
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20201028101123.6293-1-zajec5@gmail.com>
 <20201028101123.6293-2-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <65671fc4-96c8-aa88-543e-23f1fae6262d@gmail.com>
Date:   Tue, 3 Nov 2020 19:33:44 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201028101123.6293-2-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 10/28/2020 3:11 AM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> They don't descibe hardware fully yet but it's enough to boot a system.
> 
> Some missing blocks:
> 1. PMC (Power Management Controller?)
> 2. Crypto
> 3. Thermal
> 
> Asus misses defining full NAND partitions layout and buttons.
> 
> Further changes will fill those gaps as soon as required bindings will
> be found / tested / added.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

[snip]

> +++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
> @@ -0,0 +1,182 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/dts-v1/;
> +
> +/ {
> +	interrupt-parent = <&gic>;
> +
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	aliases {
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		bootargs = "earlycon=bcm63xx_uart,0xff800640";

These bootargs should be dropped from the

> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		cpu0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "brcm,cortex-b53", "arm,cortex-a53";

Please drop "arm,cortex-a53"

> +			reg = <0x0>;
> +			next-level-cache = <&l2>;
> +		};
> +
> +		cpu1: cpu@1 {
> +			device_type = "cpu";
> +			compatible = "brcm,cortex-b53", "arm,cortex-a53";
> +			reg = <0x1>;
> +			enable-method = "spin-table";
> +			cpu-release-addr = <0x0 0xfff8>;
> +			next-level-cache = <&l2>;

The device that you have access to did not even ship with a version of PSCI?

> +		};
> +
> +		cpu2: cpu@2 {
> +			device_type = "cpu";
> +			compatible = "brcm,cortex-b53", "arm,cortex-a53";
> +			reg = <0x2>;
> +			enable-method = "spin-table";
> +			cpu-release-addr = <0x0 0xfff8>;
> +			next-level-cache = <&l2>;
> +		};
> +
> +		cpu3: cpu@3 {
> +			device_type = "cpu";
> +			compatible = "brcm,cortex-b53", "arm,cortex-a53";
> +			reg = <0x3>;
> +			enable-method = "spin-table";
> +			cpu-release-addr = <0x0 0xfff8>;
> +			next-level-cache = <&l2>;
> +		};
> +
> +		l2: l2-cache0 {
> +			compatible = "cache";
> +		};
> +	};
> +
> +	gic: interrupt-controller@81000000 {
> +		compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
> +		#interrupt-cells = <3>;
> +		#address-cells = <0>;

You would want to create a node that encapsulates the ARM peripheral
addresses within the SoC's physical address range, see
arch/arm/boot/dts/bcm63138.dtsi for an example with the axi bus node.

[snip]

> +
> +			nandcs: nandcs@0 {
> +				compatible = "brcm,nandcs";
> +				reg = <0>;
> +				nand-on-flash-bbt;
> +				brcm,nand-has-wp;

Those last two properties should be moved to the board level DTS file.

> +			};
> +		};
> +
> +		reboot {
> +			compatible = "syscon-reboot";
> +			regmap = <&timer>;
> +			offset = <0x34>;
> +			mask = <1>;
> +		};
> +	};
> +};
> 

-- 
Florian
