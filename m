Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CF0D46C30B
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 19:44:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240667AbhLGSro (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 13:47:44 -0500
Received: from foss.arm.com ([217.140.110.172]:38930 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230001AbhLGSro (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 7 Dec 2021 13:47:44 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB2741063;
        Tue,  7 Dec 2021 10:44:13 -0800 (PST)
Received: from FVFF77S0Q05N (unknown [10.57.67.24])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 55D843F73B;
        Tue,  7 Dec 2021 10:44:12 -0800 (PST)
Date:   Tue, 7 Dec 2021 18:44:06 +0000
From:   Mark Rutland <mark.rutland@arm.com>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     will@kernel.org, catalin.marinas@arm.com, robh+dt@kernel.org,
        suzuki.poulose@arm.com, thierry.reding@gmail.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/5] arm64: perf: Support new DT compatibles
Message-ID: <Ya+rdqYBe7AyKoF6@FVFF77S0Q05N>
References: <cover.1638900542.git.robin.murphy@arm.com>
 <579f301dbf5347d20cfdf49480b850cba82c1ca2.1638900542.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <579f301dbf5347d20cfdf49480b850cba82c1ca2.1638900542.git.robin.murphy@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 07, 2021 at 06:20:41PM +0000, Robin Murphy wrote:
> Wire up the new DT compatibles so we can present appropriate
> PMU names to userspace for the latest and greatest CPUs.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  arch/arm64/kernel/perf_event.c | 36 ++++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index 57720372da62..3fe4dcfc28d4 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -1215,6 +1215,26 @@ static int armv8_a78_pmu_init(struct arm_pmu *cpu_pmu)
>  	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a78", NULL);
>  }
>  
> +static int armv9_a510_pmu_init(struct arm_pmu *cpu_pmu)
> +{
> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv9_cortex_a510", NULL);
> +}
> +
> +static int armv9_a710_pmu_init(struct arm_pmu *cpu_pmu)
> +{
> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv9_cortex_a710", NULL);
> +}
> +
> +static int armv8_x1_pmu_init(struct arm_pmu *cpu_pmu)
> +{
> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_x1", NULL);
> +}
> +
> +static int armv9_x2_pmu_init(struct arm_pmu *cpu_pmu)
> +{
> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv9_cortex_x2", NULL);
> +}

I wonder if it'd be better to do something like:

#define PMU_INIT_SIMPLE(name)						\
static int name##_pmu_init(struct arm_pmu *cpu_pmu)			\
{
	return armv8_pmu_init_nogroups(cpu_pmu, #name, NULL);		\
}

PMU_INIT_SIMPLE(armv9_cortex_a510)
PMU_INIT_SIMPLE(armv9_cortex_a710)
PMU_INIT_SIMPLE(armv8_xortex_x1)
PMU_INIT_SIMPLE(armv9_xortex_x2)

... and fix up the armv8_pmu_of_device_ids[] table to use the longer init names
that results in?

Otherwise, looks good to me.

Thanks,
Mark.

> +
>  static int armv8_e1_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_neoverse_e1", NULL);
> @@ -1225,6 +1245,16 @@ static int armv8_n1_pmu_init(struct arm_pmu *cpu_pmu)
>  	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_neoverse_n1", NULL);
>  }
>  
> +static int armv9_n2_pmu_init(struct arm_pmu *cpu_pmu)
> +{
> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv9_neoverse_n2", NULL);
> +}
> +
> +static int armv8_v1_pmu_init(struct arm_pmu *cpu_pmu)
> +{
> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_neoverse_v1", NULL);
> +}
> +
>  static int armv8_thunder_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cavium_thunder",
> @@ -1251,8 +1281,14 @@ static const struct of_device_id armv8_pmu_of_device_ids[] = {
>  	{.compatible = "arm,cortex-a76-pmu",	.data = armv8_a76_pmu_init},
>  	{.compatible = "arm,cortex-a77-pmu",	.data = armv8_a77_pmu_init},
>  	{.compatible = "arm,cortex-a78-pmu",	.data = armv8_a78_pmu_init},
> +	{.compatible = "arm,cortex-a510-pmu",	.data = armv9_a510_pmu_init},
> +	{.compatible = "arm,cortex-a710-pmu",	.data = armv9_a710_pmu_init},
> +	{.compatible = "arm,cortex-x1-pmu",	.data = armv8_x1_pmu_init},
> +	{.compatible = "arm,cortex-x2-pmu",	.data = armv9_x2_pmu_init},
>  	{.compatible = "arm,neoverse-e1-pmu",	.data = armv8_e1_pmu_init},
>  	{.compatible = "arm,neoverse-n1-pmu",	.data = armv8_n1_pmu_init},
> +	{.compatible = "arm,neoverse-n2-pmu",	.data = armv9_n2_pmu_init},
> +	{.compatible = "arm,neoverse-v1-pmu",	.data = armv8_v1_pmu_init},
>  	{.compatible = "cavium,thunder-pmu",	.data = armv8_thunder_pmu_init},
>  	{.compatible = "brcm,vulcan-pmu",	.data = armv8_vulcan_pmu_init},
>  	{},
> -- 
> 2.28.0.dirty
> 
