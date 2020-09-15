Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F3EB269DAE
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 07:09:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726057AbgIOFJw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 01:09:52 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:41662 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726046AbgIOFJv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 01:09:51 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08F59lQ3013226;
        Tue, 15 Sep 2020 00:09:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600146587;
        bh=HwfbaH0xe5oWdY4rvWZ+PXjJY7pmFcdt3PfWKKfGobs=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=kwy7UTfYhmElrYFMskyqg77saqK2cCicbb4stvqkiEbPHABiDk6vdiFqXXJqTguoR
         mKOVQRpaZwNbdELCAozJu0dzR5zJVhFxcft7Fgr8LlGhQd8hyAnEyFTG/uzfLfOPNS
         TOEz1+ATP6osiIar8GNCsjTqFxUor7ilghAwoMU0=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08F59lkk111735
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 15 Sep 2020 00:09:47 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 15
 Sep 2020 00:09:46 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 15 Sep 2020 00:09:46 -0500
Received: from [10.250.151.93] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F59hUs102356;
        Tue, 15 Sep 2020 00:09:44 -0500
Subject: Re: [PATCH v4 4/5] arm64: dts: ti: Add support for J7200 SoC
To:     Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>
CC:     Device Tree Mailing List <devicetree@vger.kernel.org>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
References: <20200914162231.2535-1-lokeshvutla@ti.com>
 <20200914162231.2535-5-lokeshvutla@ti.com>
From:   Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <ca98b0c7-ba9b-f5de-bffa-67290f7e61a9@ti.com>
Date:   Tue, 15 Sep 2020 10:39:42 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200914162231.2535-5-lokeshvutla@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

[...]

On 9/14/20 9:52 PM, Lokesh Vutla wrote:
> +
> +	cbass_main: bus@100000 {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges = <0x00 0x00100000 0x00 0x00100000 0x00 0x00020000>, /* ctrl mmr */
> +			 <0x00 0x00600000 0x00 0x00600000 0x00 0x00031100>, /* GPIO */
> +			 <0x00 0x00a40000 0x00 0x00a40000 0x00 0x00000800>, /* timesync router */
> +			 <0x00 0x01000000 0x00 0x01000000 0x00 0x0d000000>, /* Most peripherals */
> +			 <0x00 0x30000000 0x00 0x30000000 0x00 0x0c400000>, /* MAIN NAVSS */
> +			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00800000>, /* MSMC RAM */
> +			 <0x00 0x18000000 0x00 0x18000000 0x00 0x08000000>, /* PCIe1 DAT0 */
> +			 <0x41 0x00000000 0x41 0x00000000 0x01 0x00000000>, /* PCIe1 DAT1 */
> +
> +			 /* MCUSS_WKUP Range */
> +			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
> +			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00998400>,
> +			 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>,
> +			 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>,
> +			 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>,
> +			 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00100000>,
> +			 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>,
> +			 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>,
> +			 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>,
> +			 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>,
> +			 <0x00 0x50000000 0x00 0x50000000 0x00 0x10000000>,
> +			 <0x05 0x00000000 0x05 0x00000000 0x01 0x00000000>,
> +			 <0x07 0x00000000 0x07 0x00000000 0x01 0x00000000>;
> +
> +		cbass_mcu_wakeup: bus@28380000 {
> +			compatible = "simple-bus";
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges = <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>, /* MCU NAVSS*/
> +				 <0x00 0x40200000 0x00 0x40200000 0x00 0x00998400>, /* First peripheral window */
> +				 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>, /* CTRL_MMR0 */
> +				 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>, /* MCU R5F Core0 */
> +				 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>, /* MCU R5F Core1 */
> +				 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00100000>, /* MCU SRAM */
> +				 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>, /* WKUP peripheral window */
> +				 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>, /* MMRs, remaining NAVSS */
> +				 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>, /* CPSW */
> +				 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>, /* OSPI register space */
> +				 <0x00 0x50000000 0x00 0x50000000 0x00 0x10000000>, /* FSS OSPI0/1 data region 0 */
> +				 <0x05 0x00000000 0x05 0x00000000 0x01 0x00000000>, /* FSS OSPI0 data region 3 */
> +				 <0x07 0x00000000 0x07 0x00000000 0x01 0x00000000>; /* FSS OSPI1 data region 3 */
> +		};
> +	};
> +};

OSPI ranges look good to me... Thanks for adding them!

[...]
