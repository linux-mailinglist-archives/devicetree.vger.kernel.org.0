Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E93892EA5CD
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 08:20:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725797AbhAEHTz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jan 2021 02:19:55 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:56048 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725778AbhAEHTz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jan 2021 02:19:55 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1057J7P8024438;
        Tue, 5 Jan 2021 01:19:07 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1609831147;
        bh=NyeCcrw60zdtcaezb7V+VqqvmQCelbxdT171ochlhqI=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=ZWgtpwc1jSw7qOcw/Lxv3GKX6AZlhHS53Y3m1fGWzCMLBR02a0uIVI7fheDAbAW+R
         HWgPp5pA+qz7+yykAtvcZKdgXO9KplCJVbXlCwV0mpy4u/nHrttm+VEsZui61nP/ED
         eKfzBd9LkdoQptbOl/eG01xQFOOl+u7V/b4zdLOE=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1057J7ZD091657
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 5 Jan 2021 01:19:07 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 5 Jan
 2021 01:19:06 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 5 Jan 2021 01:19:06 -0600
Received: from [10.250.233.179] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1057J2YO034359;
        Tue, 5 Jan 2021 01:19:03 -0600
Subject: Re: [PATCH 2/3] arm64: dts: ti: Add Support for AM642 SoC
To:     Dave Gerlach <d-gerlach@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Nishanth Menon <nm@ti.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Tony Lindgren <tony@atomide.com>,
        Suman Anna <s-anna@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
References: <20201125052004.17823-1-d-gerlach@ti.com>
 <20201125052004.17823-3-d-gerlach@ti.com>
From:   Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <4f797382-e8dc-9e22-26b8-1a9b904a7cb7@ti.com>
Date:   Tue, 5 Jan 2021 12:49:02 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201125052004.17823-3-d-gerlach@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dave,

On 11/25/20 10:50 AM, Dave Gerlach wrote:
> +	cbass_main: bus@f4000 {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges = <0x00 0x00600000 0x00 0x00600000 0x00 0x00001100>, /* GPIO */
> +			 <0x00 0x00a40000 0x00 0x00a40000 0x00 0x00000800>, /* Timesync router */
> +			 <0x00 0x01000000 0x00 0x01000000 0x00 0x02330400>, /* First peripheral window */
> +			 <0x00 0x08000000 0x00 0x08000000 0x00 0x00200000>, /* Main CPSW */
> +			 <0x00 0x0d000000 0x00 0x0d000000 0x00 0x00800000>, /* PCIE_CORE */
> +			 <0x00 0x0f000000 0x00 0x0f000000 0x00 0x00c44200>, /* Second peripheral window */
> +			 <0x00 0x20000000 0x00 0x20000000 0x00 0x0a008000>, /* Third peripheral window */
> +			 <0x00 0x30000000 0x00 0x30000000 0x00 0x000bc100>, /* ICSSG0/1 */
> +			 <0x00 0x37000000 0x00 0x37000000 0x00 0x00040000>, /* TIMERMGR0 TIMERS */
> +			 <0x00 0x39000000 0x00 0x39000000 0x00 0x00000400>, /* CPTS0 */
> +			 <0x00 0x3b000000 0x00 0x3b000000 0x00 0x00000400>, /* GPMC0_CFG */
> +			 <0x00 0x3cd00000 0x00 0x3cd00000 0x00 0x00000200>, /* TIMERMGR0_CONFIG */
> +			 <0x00 0x3f004000 0x00 0x3f004000 0x00 0x00000400>, /* GICSS0_REGS */
> +			 <0x00 0x43000000 0x00 0x43000000 0x00 0x00020000>, /* CTRL_MMR0 */
> +			 <0x00 0x48000000 0x00 0x48000000 0x00 0x06400000>, /* DMASS */
> +			 <0x00 0x50000000 0x00 0x50000000 0x00 0x08000000>, /* GPMC0 DATA */

Could you please include OSPI DAT0 region:

+                        <0x00 0x60000000 0x00 0x60000000 0x00 0x08000000>, /* FSS0 DAT1 */

This will be used by R5 SPL to access OSPI (OSPI data region within 32 bit addressable space)

> +			 <0x00 0x000f4000 0x00 0x000f4000 0x00 0x000002e4>, /* PINCTRL */
> +			 <0x00 0x68000000 0x00 0x68000000 0x00 0x08000000>, /* PCIe DAT0 */
> +			 <0x06 0x00000000 0x06 0x00000000 0x01 0x00000000>, /* PCIe DAT1 */
> +			 <0x05 0x00000000 0x05 0x00000000 0x01 0x00000000>, /* FSS0 DAT3 */
> +
> +			 /* MCU Domain Range */
> +			 <0x00 0x04000000 0x00 0x04000000 0x00 0x01ff1400>;
> +
> +		cbass_mcu: bus@4000000 {
> +			compatible = "simple-bus";
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges = <0x00 0x04000000 0x00 0x04000000 0x00 0x01ff1400>; /* Peripheral window */
> +		};
> +	};
> +};
> +
