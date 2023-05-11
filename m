Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4BD86FFBB8
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 23:13:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239049AbjEKVNy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 17:13:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238866AbjEKVNx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 17:13:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B07891BF2
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 14:13:52 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 448E7651F0
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 21:13:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3865C433EF;
        Thu, 11 May 2023 21:13:49 +0000 (UTC)
Date:   Thu, 11 May 2023 22:13:47 +0100
From:   Catalin Marinas <catalin.marinas@arm.com>
To:     Marc Zyngier <maz@kernel.org>
Cc:     James Morse <james.morse@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Oliver Upton <oliver.upton@linux.dev>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH 0/6] arm64: errata: Disable FWB on parts with non-ARM
 interconnects
Message-ID: <ZF1ai79ljnilIMoG@arm.com>
References: <20230330165128.3237939-1-james.morse@arm.com>
 <ZF0io4mDjRdm1AxN@arm.com>
 <86y1lun1zh.wl-maz@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86y1lun1zh.wl-maz@kernel.org>
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 11, 2023 at 07:42:58PM +0100, Marc Zyngier wrote:
> On Thu, 11 May 2023 18:15:15 +0100,
> Catalin Marinas <catalin.marinas@arm.com> wrote:
> > On Thu, Mar 30, 2023 at 05:51:22PM +0100, James Morse wrote:
> > > When stage1 translation is disabled, the SCTRL_E1.I bit controls the
> > > attributes used for instruction fetch, one of the options results in a
> > > non-cacheable access. A whole host of CPUs missed the FWB override
> > > in this case, meaning a KVM guest could fetch stale/junk data instead of
> > > instructions.
> > > 
> > > The workaround is to disable FWB, and do the required cache maintenance
> > > instead.
> > 
> > I think the workaround can be to only do the required cache maintenance
> > without disabling FWB. Having FWB on doesn't bring any performance
> > benefits if we do the cache maintenance anyway but keeping it around may
> > be useful for other reasons (e.g. KVM device pass-through using
> > cacheable mappings, though not something KVM supports currently).
> 
> But you'd also rely on the guest doing its own cache maintenance for
> instructions it writes, right?

Ah, you are right. It looks like I only considered the host writing
instructions. If the guest disabled stage 1 and wrote some instructions
with FWB on, they'd not necessarily reach the PoC while the instructions
are fetched from PoC with this bug. Even with SCTLR_EL1.I==0, the guest
is supposed to do an IC IVAU if it wrote instructions but that's not
sufficient (hint to the micro-architects, add a chicken bit to upgrade
IC IVAU to also do a DC CVAC ;))

> Which probably means exposing a different CLIDR_EL1 so that
> LoC/LoUU/LoUIS are consistent with *not* having FWB... I also wonder
> if keeping FWB set has the potential to change the semantics of the
> CMOs (the spec seems silent on that front).

Not sure about CMOs, I'd expect them to behave in the same way. However,
I don't see how faking CLIDR_EL1 can trick the guest into doing DC CVAC
when its MMU is off.

> > That said, maybe we can reduce the risk further by doing the
> > vcpu_has_run_once() trick with !FWB and clean the D side to PoC on a
> > stage 2 exec fault (together with the I-cache invalidation). We can then
> > ignore any other cache maintenance on S2 faults until someone shouts (we
> > can maybe recommend forcing FWB off on the command line through the
> > cpuid override).
> 
> You lost me here with your vcpu_has_run_once().

Most likely I lost myself in the code. So the tricks we used in the past
tracking the guest MMU off/on was only for the D side. If (we hope that)
the guest only wrote instructions to a page once before executing them
(and never writing instructions again), we could trap a subsequent exec
fault and do the D-cache clean to PoC again.

> Keeping the CMOs on exec fault is definitely manageable. But is that
> enough?

Yeah, not sure it's enough if the guest keeps writing instructions to
the same page with the MMU off.

-- 
Catalin
