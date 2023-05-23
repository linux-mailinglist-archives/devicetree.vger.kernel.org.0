Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8CCA770DAD8
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 12:50:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230239AbjEWKug (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 06:50:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236456AbjEWKse (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 06:48:34 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CF02121
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 03:48:33 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A44ED61C63
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 10:48:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC316C433EF;
        Tue, 23 May 2023 10:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684838912;
        bh=WkBtGJVfE08dgmIbbaA3PyDFug/X4VddxqFK+5DXezg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=DXHFW1Vg9LthKnbcbHgCJY3GjO8NedOZlqGnLe3aiNdtBbR2C2RTzpgxMhPmMev7e
         ktasr0briPZt2XrQhSwkGwmOLWcDX3XAS1ufy1Lu8BO58n7dbtAyhDDd4LlMWau17B
         SihIrN61IGZgtusPx47z0gkMB2Fz3IhP5r5Dyy2foygU7JzItEToIHhRhvdloxZPQP
         Z+pKxd0PL3BjhbMW4xzHXOClD77BQejCMFAyXT4Xp359y4+SvpfVwhqtWUX99jJfKt
         10MmY5xDNATks3HAmcTlA4BvrOkAY1xEoNcInTdTJ0LosVdk6mEfKXAKGkI09EK7HN
         xUP2jrwbgvQrw==
Date:   Tue, 23 May 2023 11:48:26 +0100
From:   Will Deacon <will@kernel.org>
To:     James Morse <james.morse@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Oliver Upton <oliver.upton@linux.dev>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH 0/6] arm64: errata: Disable FWB on parts with non-ARM
 interconnects
Message-ID: <20230523104825.GD7414@willie-the-truck>
References: <20230330165128.3237939-1-james.morse@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230330165128.3237939-1-james.morse@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi James,

On Thu, Mar 30, 2023 at 05:51:22PM +0100, James Morse wrote:
> Changes since the RFC?:
>  * Added DT support, in a way that means we don't end up with per-erratum
>    strings, or bloat in the calling code to check for those strings.
>  * Added a commandline argument. (boo)
>  * Changes to support errata affecting features on big-little systems properly.
> 
> ~
> 
> When stage1 translation is disabled, the SCTRL_E1.I bit controls the
> attributes used for instruction fetch, one of the options results in a
> non-cacheable access. A whole host of CPUs missed the FWB override
> in this case, meaning a KVM guest could fetch stale/junk data instead of
> instructions.
> 
> The workaround is to disable FWB, and do the required cache maintenance
> instead.
> 
> The good news is, this isn't a problem for systems using Arm's
> interconnect IP. The bad news is: linux can't know this. Arm knows of
> at least one platform that is affected by this erratum.
> 
> 
> This series adds support for the 'Errata Management Firmware Interface', [0]
> and queries that to determine if the CPU is affected or not. DT support is
> added so that the firmware interface values can be queried directly from the
> DT. This can be used as a fallback for platforms that don't yet support the
> interface.

It occurs to me that, when a device is assigned to a VM, there are a
whole bunch of non-probeable reasons why FWB cannot be used and perhaps
we should be looking to advertise that from firmware without pulling in
a reliance on this errata management interface.

Right now, I don't think KVM or VFIO do anything to prevent the assignment
of a device capable of non-coherent DMA traffic and FWB is used if the CPUs
support it. This, in theory, allows the guest to read stale data from host
memory pages using non-coherent DMA and I think we should gate usage of FWB
for a given VM on whether or not that VM has such a device assigned.

The problem is that I don't think you can probe this property reliably. It's
not enough to check for "dma-coherent"; rather we also need to know details
about the IOMMU and device-specific properties such as the ability to
generate NoSnoop transactions. I think firmware is probably the only option
here, so since you're proposing something similar, please can we make it
general enough to be used outside of errata scenarios?

Will
