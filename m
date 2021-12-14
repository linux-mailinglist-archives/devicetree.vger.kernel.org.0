Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9EE0D4743A2
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 14:38:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234460AbhLNNi1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 08:38:27 -0500
Received: from foss.arm.com ([217.140.110.172]:56230 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234479AbhLNNi1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Dec 2021 08:38:27 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC7966D;
        Tue, 14 Dec 2021 05:38:26 -0800 (PST)
Received: from FVFF77S0Q05N (unknown [10.57.66.239])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 88BA33F793;
        Tue, 14 Dec 2021 05:38:25 -0800 (PST)
Date:   Tue, 14 Dec 2021 13:38:22 +0000
From:   Mark Rutland <mark.rutland@arm.com>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     will@kernel.org, catalin.marinas@arm.com, robh+dt@kernel.org,
        suzuki.poulose@arm.com, thierry.reding@gmail.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/5] arm64: perf: Simplify registration boilerplate
Message-ID: <YbieTvYTEJUpgbUL@FVFF77S0Q05N>
References: <cover.1638900542.git.robin.murphy@arm.com>
 <487243cf1a402d8b23bc517f271225fefe3d0e42.1638900542.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <487243cf1a402d8b23bc517f271225fefe3d0e42.1638900542.git.robin.murphy@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 07, 2021 at 06:20:40PM +0000, Robin Murphy wrote:
> The arm_pmu framework requires map_event to be non-NULL, so let
> armv8_pmu_init() treat NULL as a default value for the generic PMUv3
> event map and simplify the boilerplate in the callers a bit.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  arch/arm64/kernel/perf_event.c | 32 +++++++++++---------------------
>  1 file changed, 11 insertions(+), 21 deletions(-)
> 
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index b4044469527e..57720372da62 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -1128,7 +1128,7 @@ static int armv8_pmu_init(struct arm_pmu *cpu_pmu, char *name,
>  	cpu_pmu->filter_match		= armv8pmu_filter_match;
>  
>  	cpu_pmu->name			= name;
> -	cpu_pmu->map_event		= map_event;
> +	cpu_pmu->map_event		= map_event ?: armv8_pmuv3_map_event;
>  	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] = events ?
>  			events : &armv8_pmuv3_events_attr_group;
>  	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_FORMATS] = format ?

Acked-by: Mark Rutland <mark.rutland@arm.com>

I'll leave it to will to pick this.

Mark.

> @@ -1147,14 +1147,12 @@ static int armv8_pmu_init_nogroups(struct arm_pmu *cpu_pmu, char *name,
>  
>  static int armv8_pmuv3_init(struct arm_pmu *cpu_pmu)
>  {
> -	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_pmuv3",
> -				       armv8_pmuv3_map_event);
> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_pmuv3", NULL);
>  }
>  
>  static int armv8_a34_pmu_init(struct arm_pmu *cpu_pmu)
>  {
> -	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a34",
> -				       armv8_pmuv3_map_event);
> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a34", NULL);
>  }
>  
>  static int armv8_a35_pmu_init(struct arm_pmu *cpu_pmu)
> @@ -1171,8 +1169,7 @@ static int armv8_a53_pmu_init(struct arm_pmu *cpu_pmu)
>  
>  static int armv8_a55_pmu_init(struct arm_pmu *cpu_pmu)
>  {
> -	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a55",
> -				       armv8_pmuv3_map_event);
> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a55", NULL);
>  }
>  
>  static int armv8_a57_pmu_init(struct arm_pmu *cpu_pmu)
> @@ -1183,8 +1180,7 @@ static int armv8_a57_pmu_init(struct arm_pmu *cpu_pmu)
>  
>  static int armv8_a65_pmu_init(struct arm_pmu *cpu_pmu)
>  {
> -	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a65",
> -				       armv8_pmuv3_map_event);
> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a65", NULL);
>  }
>  
>  static int armv8_a72_pmu_init(struct arm_pmu *cpu_pmu)
> @@ -1201,38 +1197,32 @@ static int armv8_a73_pmu_init(struct arm_pmu *cpu_pmu)
>  
>  static int armv8_a75_pmu_init(struct arm_pmu *cpu_pmu)
>  {
> -	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a75",
> -				       armv8_pmuv3_map_event);
> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a75", NULL);
>  }
>  
>  static int armv8_a76_pmu_init(struct arm_pmu *cpu_pmu)
>  {
> -	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a76",
> -				       armv8_pmuv3_map_event);
> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a76", NULL);
>  }
>  
>  static int armv8_a77_pmu_init(struct arm_pmu *cpu_pmu)
>  {
> -	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a77",
> -				       armv8_pmuv3_map_event);
> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a77", NULL);
>  }
>  
>  static int armv8_a78_pmu_init(struct arm_pmu *cpu_pmu)
>  {
> -	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a78",
> -				       armv8_pmuv3_map_event);
> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a78", NULL);
>  }
>  
>  static int armv8_e1_pmu_init(struct arm_pmu *cpu_pmu)
>  {
> -	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_neoverse_e1",
> -				       armv8_pmuv3_map_event);
> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_neoverse_e1", NULL);
>  }
>  
>  static int armv8_n1_pmu_init(struct arm_pmu *cpu_pmu)
>  {
> -	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_neoverse_n1",
> -				       armv8_pmuv3_map_event);
> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_neoverse_n1", NULL);
>  }
>  
>  static int armv8_thunder_pmu_init(struct arm_pmu *cpu_pmu)
> -- 
> 2.28.0.dirty
> 
