Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BABF4EEBDD
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 12:53:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242937AbiDAKzQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 06:55:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244943AbiDAKzP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 06:55:15 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 352CD6A068
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 03:53:26 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF62712FC;
        Fri,  1 Apr 2022 03:53:25 -0700 (PDT)
Received: from bogus (unknown [10.57.43.163])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C33D13F66F;
        Fri,  1 Apr 2022 03:53:24 -0700 (PDT)
Date:   Fri, 1 Apr 2022 11:53:22 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Rui Miguel Silva <rui.silva@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: arm: add corstone1000 device tree
Message-ID: <20220401105322.k7ob3w2t5stuhhay@bogus>
References: <20220330131053.1122502-1-rui.silva@linaro.org>
 <20220330131053.1122502-4-rui.silva@linaro.org>
 <20220331104854.sffey43mlxlg343o@bogus>
 <20220331112414.cediztrnxaoihdgq@arch-thunder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220331112414.cediztrnxaoihdgq@arch-thunder>
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 31, 2022 at 12:24:14PM +0100, Rui Miguel Silva wrote:
> On Thu, Mar 31, 2022 at 11:48:54AM +0100, Sudeep Holla wrote:
> > On Wed, Mar 30, 2022 at 02:10:53PM +0100, Rui Miguel Silva wrote:
> > > +
> > > +		mhu_hse1: mailbox@1b820000 {
> > > +			compatible = "arm,mhuv2-tx", "arm,primecell";
> > > +			reg = <0x1b820000 0x1000>;
> > > +			clocks = <&refclk100mhz>;
> > > +			clock-names = "apb_pclk";
> > > +			interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
> > > +			#mbox-cells = <2>;
> > > +			arm,mhuv2-protocols = <0 0>;
> > > +			secure-status = "okay";     /* secure-world-only */
> > 
> > Please drop the above. Though I see it is in the binding, no one uses
> > it in the kernel and I prefer not to have this.
> 
> the secure partitions in secure world use this mailbox to
> doorbell the secure enclave so, after talking with Rob he suggested to
> use this bindings to make this clear. So, I will keep this ones.
> 
Hi Rob,

Since this is first user of this binding(which is there for a while, but
no users in the kernel code base), are you fine with this ? 

-- 
Regards,
Sudeep
