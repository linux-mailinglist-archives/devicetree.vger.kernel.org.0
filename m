Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1C92474395
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 14:36:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234454AbhLNNgW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 08:36:22 -0500
Received: from foss.arm.com ([217.140.110.172]:56134 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234453AbhLNNgW (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Dec 2021 08:36:22 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2AAA66D;
        Tue, 14 Dec 2021 05:36:22 -0800 (PST)
Received: from FVFF77S0Q05N (unknown [10.57.66.239])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B9B843F793;
        Tue, 14 Dec 2021 05:36:20 -0800 (PST)
Date:   Tue, 14 Dec 2021 13:36:18 +0000
From:   Mark Rutland <mark.rutland@arm.com>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     will@kernel.org, catalin.marinas@arm.com, robh+dt@kernel.org,
        suzuki.poulose@arm.com, thierry.reding@gmail.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/5] arm64: perf: Support new DT compatibles
Message-ID: <Ybid0mUjLI8uJV+R@FVFF77S0Q05N>
References: <cover.1638900542.git.robin.murphy@arm.com>
 <579f301dbf5347d20cfdf49480b850cba82c1ca2.1638900542.git.robin.murphy@arm.com>
 <Ya+rdqYBe7AyKoF6@FVFF77S0Q05N>
 <428b2e70-0ab1-8acc-3cbd-4df131976e27@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <428b2e70-0ab1-8acc-3cbd-4df131976e27@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 07, 2021 at 07:14:29PM +0000, Robin Murphy wrote:
> On 2021-12-07 18:44, Mark Rutland wrote:
> > On Tue, Dec 07, 2021 at 06:20:41PM +0000, Robin Murphy wrote:
> > > Wire up the new DT compatibles so we can present appropriate
> > > PMU names to userspace for the latest and greatest CPUs.
> > > 
> > > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > > ---
> > >   arch/arm64/kernel/perf_event.c | 36 ++++++++++++++++++++++++++++++++++
> > >   1 file changed, 36 insertions(+)
> > > 
> > > diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> > > index 57720372da62..3fe4dcfc28d4 100644
> > > --- a/arch/arm64/kernel/perf_event.c
> > > +++ b/arch/arm64/kernel/perf_event.c
> > > @@ -1215,6 +1215,26 @@ static int armv8_a78_pmu_init(struct arm_pmu *cpu_pmu)
> > >   	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a78", NULL);
> > >   }
> > > +static int armv9_a510_pmu_init(struct arm_pmu *cpu_pmu)
> > > +{
> > > +	return armv8_pmu_init_nogroups(cpu_pmu, "armv9_cortex_a510", NULL);
> > > +}
> > > +
> > > +static int armv9_a710_pmu_init(struct arm_pmu *cpu_pmu)
> > > +{
> > > +	return armv8_pmu_init_nogroups(cpu_pmu, "armv9_cortex_a710", NULL);
> > > +}
> > > +
> > > +static int armv8_x1_pmu_init(struct arm_pmu *cpu_pmu)
> > > +{
> > > +	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_x1", NULL);
> > > +}
> > > +
> > > +static int armv9_x2_pmu_init(struct arm_pmu *cpu_pmu)
> > > +{
> > > +	return armv8_pmu_init_nogroups(cpu_pmu, "armv9_cortex_x2", NULL);
> > > +}
> > 
> > I wonder if it'd be better to do something like:
> > 
> > #define PMU_INIT_SIMPLE(name)						\
> > static int name##_pmu_init(struct arm_pmu *cpu_pmu)			\
> > {
> > 	return armv8_pmu_init_nogroups(cpu_pmu, #name, NULL);		\
> > }
> > 
> > PMU_INIT_SIMPLE(armv9_cortex_a510)
> > PMU_INIT_SIMPLE(armv9_cortex_a710)
> > PMU_INIT_SIMPLE(armv8_xortex_x1)
> > PMU_INIT_SIMPLE(armv9_xortex_x2)
> > 
> > ... and fix up the armv8_pmu_of_device_ids[] table to use the longer init names
> > that results in?
> 
> Indeed I did ponder doing almost exactly that, but at that point I'd rather
> try refactoring a bit deeper to convert most of the arm_pmu init business to
> pure data, so I figured I'd chuck in the simple tweak to mitigate these new
> additions with minimal churn, then have a go at the bigger change in its own
> right.

Sure; that makes sense to me, so for this as-is:

Acked-by: Mark Rutland <mark.rutland@arm.com>

... and I'll leave it to Will to have the final say on whether we want the
"armv9_" prefix or whether we stick with "armv8_" for consistenct, when he
chooses to pick this.

One thing I've just realised is that for the ACPI case, we're stuck with
"armv8_pmuv3_%d" regardless, which I think is fine itself, but we might want to
call that out.

Thanks,
Mark.
