Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 224712A61B4
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 11:35:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726323AbgKDKfr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 05:35:47 -0500
Received: from foss.arm.com ([217.140.110.172]:34512 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728508AbgKDKfq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 4 Nov 2020 05:35:46 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA3FD13D5;
        Wed,  4 Nov 2020 02:35:45 -0800 (PST)
Received: from [10.57.54.223] (unknown [10.57.54.223])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 832683F66E;
        Wed,  4 Nov 2020 02:35:44 -0800 (PST)
Subject: Re: [PATCH 2/2] arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300
 early DTS files
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20201028101123.6293-1-zajec5@gmail.com>
 <20201028101123.6293-2-zajec5@gmail.com>
From:   Robin Murphy <robin.murphy@arm.com>
Message-ID: <e0cf2414-453e-4f15-5e4a-1c34aa965cf8@arm.com>
Date:   Wed, 4 Nov 2020 10:35:43 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201028101123.6293-2-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2020-10-28 10:11, Rafał Miłecki wrote:
[...]
> +		cpu0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "brcm,cortex-b53", "arm,cortex-a53";

Erm, there's no binding for that - did you mean "brcm,brahma-b53"?

> +			reg = <0x0>;
> +			next-level-cache = <&l2>;
> +		};
[...]
> +	gic: interrupt-controller@81000000 {
> +		compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";

There's really no logical reason for a 64-bit system to pretend to be 
compatible with Cortex-A9. This is presumably GIC-400 (or maybe GIC-500) 
so it would be better to describe it as what it is.

> +		#interrupt-cells = <3>;
> +		#address-cells = <0>;
> +		interrupt-controller;
> +		reg = <0x00 0x81001000 0x00 0x1000>, <0x00 0x81002000 0x00 0x2000>;
> +	};
[...]
> +	pmu {
> +		compatible = "arm,armv8-pmuv3";

Use the appropriate compatible for the actual CPUs - this is real 
hardware, not a software model.

Robin.

> +		interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
> +	};
