Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 749EC5A755B
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 07:05:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229710AbiHaFFr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 01:05:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229880AbiHaFFq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 01:05:46 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4FE6592F6E
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 22:05:41 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id 5871080BF;
        Wed, 31 Aug 2022 04:58:17 +0000 (UTC)
Date:   Wed, 31 Aug 2022 08:05:39 +0300
From:   Tony Lindgren <tony@atomide.com>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, Keerthy <j-keerthy@ti.com>,
        Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: ti: k3-am65: Add general purpose
 timers for am65
Message-ID: <Yw7sI81Nzo5koM6c@atomide.com>
References: <20220830070750.30640-1-tony@atomide.com>
 <20220830070750.30640-3-tony@atomide.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220830070750.30640-3-tony@atomide.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Tony Lindgren <tony@atomide.com> [220830 07:09]:
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> @@ -271,6 +271,138 @@ main_spi4: spi@2140000 {
>  		#size-cells = <0>;
>  	};
>  
> +	main_timer0: timer@2400000 {
> +		compatible = "ti,am654-timer";
> +		reg = <0x00 0x2400000 0x00 0x400>;
> +		interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&k3_clks 23 0>;
> +		clock-names = "fck";
> +		assigned-clocks = <&k3_clks 23 0>;
> +		assigned-clock-parents = <&k3_clks 23 1>;
> +		ti,timer-pwm;
> +	};

Oops the power-domains are missing for the timers. This should
have power-domains = <&k3_pds 23 TI_SCI_PD_EXCLUSIVE>.

Can we tag all the timers with TI_SCI_PD_EXCLUSIVE, or do some
always need to be TI_SCI_PD_SHARED?

Regards,

Tony

