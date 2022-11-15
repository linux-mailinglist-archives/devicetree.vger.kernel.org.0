Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 046FB629DC2
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 16:39:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230393AbiKOPj5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 10:39:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbiKOPjz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 10:39:55 -0500
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 31DC929361
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 07:39:54 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id 5D76C80E0;
        Tue, 15 Nov 2022 15:29:53 +0000 (UTC)
Date:   Tue, 15 Nov 2022 17:39:52 +0200
From:   Tony Lindgren <tony@atomide.com>
To:     Nishanth Menon <nm@ti.com>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Keerthy <j-keerthy@ti.com>,
        Georgi Vlaev <g-vlaev@ti.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: ti: k3-am625-sk: Use pwm-led instead
 of gpio-led
Message-ID: <Y3OyyBqdEjzt3D93@atomide.com>
References: <20221107163533.48777-1-tony@atomide.com>
 <20221107163533.48777-5-tony@atomide.com>
 <20221115144730.sewbrukm5yjuka35@stinging>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221115144730.sewbrukm5yjuka35@stinging>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Nishanth Menon <nm@ti.com> [221115 14:37]:
> On 18:35-20221107, Tony Lindgren wrote:
> [...]
> 
> > ---
> >  arch/arm64/boot/dts/ti/k3-am625-sk.dts | 17 ++++++++++++-----
> >  1 file changed, 12 insertions(+), 5 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/ti/k3-am625-sk.dts b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
> > --- a/arch/arm64/boot/dts/ti/k3-am625-sk.dts
> > +++ b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
> [...]
> > +
> > +	main_pwm7: dmtimer-main-pwm-7 {
> > +		pinctrl-0 = <&usr_led_pins_default>;
> > +		pinctrl-names = "default";
> > +		compatible = "ti,omap-dmtimer-pwm";
> 
> 
> we'd need to convert
> Documentation/devicetree/bindings/pwm/pwm-omap-dmtimer.txt to
> yaml for me to be able to accept this :(

OK. Let's drop this last patch for now.

Regards,

Tony
