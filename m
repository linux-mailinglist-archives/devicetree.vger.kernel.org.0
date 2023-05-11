Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9486B6FF833
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 19:15:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238407AbjEKRPW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 13:15:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238617AbjEKRPV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 13:15:21 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 030C565A7
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 10:15:20 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7460C63CDA
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 17:15:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEAAEC433D2;
        Thu, 11 May 2023 17:15:17 +0000 (UTC)
Date:   Thu, 11 May 2023 18:15:15 +0100
From:   Catalin Marinas <catalin.marinas@arm.com>
To:     James Morse <james.morse@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Oliver Upton <oliver.upton@linux.dev>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH 0/6] arm64: errata: Disable FWB on parts with non-ARM
 interconnects
Message-ID: <ZF0io4mDjRdm1AxN@arm.com>
References: <20230330165128.3237939-1-james.morse@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230330165128.3237939-1-james.morse@arm.com>
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi James,

On Thu, Mar 30, 2023 at 05:51:22PM +0100, James Morse wrote:
> When stage1 translation is disabled, the SCTRL_E1.I bit controls the
> attributes used for instruction fetch, one of the options results in a
> non-cacheable access. A whole host of CPUs missed the FWB override
> in this case, meaning a KVM guest could fetch stale/junk data instead of
> instructions.
> 
> The workaround is to disable FWB, and do the required cache maintenance
> instead.

I think the workaround can be to only do the required cache maintenance
without disabling FWB. Having FWB on doesn't bring any performance
benefits if we do the cache maintenance anyway but keeping it around may
be useful for other reasons (e.g. KVM device pass-through using
cacheable mappings, though not something KVM supports currently).

> Unfortunately, no-one has firmware that supports this new interface yet,
> and the least surprising thing to do is to enable the workaround by default,
> meaning FWB is disabled on all these cores, even for unaffected platforms.
> ACPI Platforms that are not-affected can either take a firmware-update to
> support the interface, or if the kernel they run will only run on hardware
> that is unaffected, disable the workaround at build time.

Given that we know of more platforms that are _not_ affected and vendors
are pretty vague on whether they need this, I'd rather swap the default
and keep the workaround off with a firmware interface, DT or command
line opt-in.

That said, maybe we can reduce the risk further by doing the
vcpu_has_run_once() trick with !FWB and clean the D side to PoC on a
stage 2 exec fault (together with the I-cache invalidation). We can then
ignore any other cache maintenance on S2 faults until someone shouts (we
can maybe recommend forcing FWB off on the command line through the
cpuid override).

-- 
Catalin
