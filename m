Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A391F2A5F0A
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 09:02:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726539AbgKDICW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 03:02:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726152AbgKDICV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 03:02:21 -0500
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C9D4C061A4D
        for <devicetree@vger.kernel.org>; Wed,  4 Nov 2020 00:02:21 -0800 (PST)
Received: by mail-lf1-x144.google.com with SMTP id b1so25851574lfp.11
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 00:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gy5YNWG+xVfZNS0Dl4gFwHj8tU19PhMiQs0JO2GSAOA=;
        b=VQ3QOwjCir0psEUlVq7+VwN6xwJ2f1o1CLORUjFRtYv5Y1hjiPY2+APc8xuUVPYeHT
         CFHo8RXEjczdjS7LLzjPPZD6bRiMkHGOl+z2zaQEnhH29dKWbhiRlCukko5Q8KdCupc/
         HuCIrcRxOZ+feAgREQIOl1ke1UPu+5ioNpqIMIAeGll88h5B2S92oVYLvfy+11MDTCD4
         fUmawrMtR5NZzV8GP9DnuGE64RkNJ+RLPW+jMR6DVBTMFHGuNQILhr9XGx5qJfZzu7P/
         H/b7QaF8iy3VXPASftOYFlRvYDryaUorxYHZVQhGNSB88MdulWx48/elHDb8LdO1GmJX
         FNfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gy5YNWG+xVfZNS0Dl4gFwHj8tU19PhMiQs0JO2GSAOA=;
        b=bf+HTewLavRxemIRseuLvGvRvlne/f4qXhOZIbsDwfpIx6svplrG6fb8BSnT9ywlVC
         Pv2lckLir+8qytj3st9/veXd4BjWFqGZ7+GOcDD6nw+22JgD2coHndq/5gdUYo1hNjbL
         YSWq2bcdGSNASrPWV+jCGNU+cMXXzUQIzrEMBQvNnp6aw19XG+Tw4VrPR/X/LwYvxfYV
         KWpazArbzl71hZtNjB30TuxOm8AOzp85QxnGfhTMhHz3DY+MnS9YL5z5Jpei7xCrySOt
         3ADhMeWg5a59s0obzr8BeXZR6c2Uk6DAAELqyw/1gN8ZLksIO6my1370JVPbrXFGvZZg
         aN1w==
X-Gm-Message-State: AOAM531Rc0RwqQ9/OSL2ZpxxaJPYe1DQxOxczX0WsOCo3B58c5Xtbh4J
        BEOiX84rrTpP0A1kwCnHQA4=
X-Google-Smtp-Source: ABdhPJx1WTt9wOOzjp3kUfrR+Fipfmf28HK6r0l/TTZ89h2XX8NXvCSj04K3QtuYyO3rU69ozFj+tQ==
X-Received: by 2002:a19:6753:: with SMTP id e19mr377650lfj.425.1604476939510;
        Wed, 04 Nov 2020 00:02:19 -0800 (PST)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id o23sm334005lfl.285.2020.11.04.00.02.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 00:02:18 -0800 (PST)
Subject: Re: [PATCH 2/2] arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300
 early DTS files
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20201028101123.6293-1-zajec5@gmail.com>
 <20201028101123.6293-2-zajec5@gmail.com>
 <65671fc4-96c8-aa88-543e-23f1fae6262d@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <e99acf64-4f9d-ce8d-6b3d-b9a436a211e8@gmail.com>
Date:   Wed, 4 Nov 2020 09:02:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <65671fc4-96c8-aa88-543e-23f1fae6262d@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04.11.2020 04:33, Florian Fainelli wrote:
> On 10/28/2020 3:11 AM, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> They don't descibe hardware fully yet but it's enough to boot a system.
>>
>> Some missing blocks:
>> 1. PMC (Power Management Controller?)
>> 2. Crypto
>> 3. Thermal
>>
>> Asus misses defining full NAND partitions layout and buttons.
>>
>> Further changes will fill those gaps as soon as required bindings will
>> be found / tested / added.
>>
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>> ---
> 
> [snip]
> 
>> +++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
>> @@ -0,0 +1,182 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>> +
>> +#include <dt-bindings/interrupt-controller/irq.h>
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +/dts-v1/;
>> +
>> +/ {
>> +	interrupt-parent = <&gic>;
>> +
>> +	#address-cells = <2>;
>> +	#size-cells = <2>;
>> +
>> +	aliases {
>> +		serial0 = &uart0;
>> +	};
>> +
>> +	chosen {
>> +		bootargs = "earlycon=bcm63xx_uart,0xff800640";
> 
> These bootargs should be dropped from the

Can you explain why, is that some kernel rule I missed? That's extremely helpful for debugging.


>> +		stdout-path = "serial0:115200n8";
>> +	};
>> +
>> +	cpus {
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +
>> +		cpu0: cpu@0 {
>> +			device_type = "cpu";
>> +			compatible = "brcm,cortex-b53", "arm,cortex-a53";
> 
> Please drop "arm,cortex-a53"
> 
>> +			reg = <0x0>;
>> +			next-level-cache = <&l2>;
>> +		};
>> +
>> +		cpu1: cpu@1 {
>> +			device_type = "cpu";
>> +			compatible = "brcm,cortex-b53", "arm,cortex-a53";
>> +			reg = <0x1>;
>> +			enable-method = "spin-table";
>> +			cpu-release-addr = <0x0 0xfff8>;
>> +			next-level-cache = <&l2>;
> 
> The device that you have access to did not even ship with a version of PSCI?

Whenever trying to use psci defined as:

psci {
	compatible = "arm,psci-0.2";
	method = "smc";
};

(with updated enable-method) I get:

psci: probing for conduit method from DT.
------------[ cut here ]------------
kernel BUG at arch/arm64/kernel/traps.c:406!
Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
CPU: 0 PID: 0 Comm: swapper Not tainted 5.10.0-rc2 #3
Hardware name: Asus GT-AC5300 (DT)
pstate: 00000085 (nzcv daIf -PAN -UAO -TCO BTYPE=--)
pc : do_undefinstr+0x2d8/0x300
lr : do_undefinstr+0x2e4/0x300
sp : ffffffc010933c60
x29: ffffffc010933c60 x28: ffffffc01093b680
x27: ffffffc0107a4c40 x26: ffffffc0107bcca0
x25: ffffffc010953c28 x24: 0000000000000080
x23: 0000000080000085 x22: ffffffc01099e100
x21: 00000000d4000003 x20: ffffffc01093b680
x19: ffffffc010933cd0 x18: ffffffc010942fd0
x17: 0000000000001400 x16: 0000000000001c00
x15: fffffffeffe00000 x14: ffffffffffffffff
x13: 0000000000000038 x12: 0101010101010101
x11: 0000000000000004 x10: 0101010101010101
x9 : 0000000000000004 x8 : 0000000000000004
x7 : 0000000000000000 x6 : ffffffc010933cb8
x5 : ffffffc010933cb8 x4 : ffffffc01093cf58
x3 : 0000000000000001 x2 : 0000000000000000
x1 : ffffffc01093b680 x0 : 0000000080000085
Call trace:
  do_undefinstr+0x2d8/0x300
  el1_sync_handler+0xbc/0x140
  el1_sync+0x80/0x100
  __arm_smccc_smc+0x0/0x2c
  psci_probe+0x34/0x2c4
  psci_0_2_init+0x18/0x24
  psci_dt_init+0x64/0x8c
  setup_arch+0x428/0x5c4
  start_kernel+0x78/0x52c
Code: 17ffffa7 f9401bf7 17ffff80 f9001bf7 (d4210000)
random: get_random_bytes called from print_oops_end_marker+0x2c/0x70 with crng_init=0
---[ end trace 0000000000000000 ]---
Kernel panic - not syncing: Attempted to kill the idle task!


>> +		};
>> +
>> +		cpu2: cpu@2 {
>> +			device_type = "cpu";
>> +			compatible = "brcm,cortex-b53", "arm,cortex-a53";
>> +			reg = <0x2>;
>> +			enable-method = "spin-table";
>> +			cpu-release-addr = <0x0 0xfff8>;
>> +			next-level-cache = <&l2>;
>> +		};
>> +
>> +		cpu3: cpu@3 {
>> +			device_type = "cpu";
>> +			compatible = "brcm,cortex-b53", "arm,cortex-a53";
>> +			reg = <0x3>;
>> +			enable-method = "spin-table";
>> +			cpu-release-addr = <0x0 0xfff8>;
>> +			next-level-cache = <&l2>;
>> +		};
>> +
>> +		l2: l2-cache0 {
>> +			compatible = "cache";
>> +		};
>> +	};
>> +
>> +	gic: interrupt-controller@81000000 {
>> +		compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
>> +		#interrupt-cells = <3>;
>> +		#address-cells = <0>;
> 
> You would want to create a node that encapsulates the ARM peripheral
> addresses within the SoC's physical address range, see
> arch/arm/boot/dts/bcm63138.dtsi for an example with the axi bus node.
> 
> [snip]
> 
>> +
>> +			nandcs: nandcs@0 {
>> +				compatible = "brcm,nandcs";
>> +				reg = <0>;
>> +				nand-on-flash-bbt;
>> +				brcm,nand-has-wp;
> 
> Those last two properties should be moved to the board level DTS file.
> 
>> +			};
>> +		};
>> +
>> +		reboot {
>> +			compatible = "syscon-reboot";
>> +			regmap = <&timer>;
>> +			offset = <0x34>;
>> +			mask = <1>;
>> +		};
>> +	};
>> +};
