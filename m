Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5E9446C366
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 20:14:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240893AbhLGTSG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 14:18:06 -0500
Received: from foss.arm.com ([217.140.110.172]:39472 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231634AbhLGTSF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 7 Dec 2021 14:18:05 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EE3D51063;
        Tue,  7 Dec 2021 11:14:34 -0800 (PST)
Received: from [10.57.34.58] (unknown [10.57.34.58])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A99833F73B;
        Tue,  7 Dec 2021 11:14:33 -0800 (PST)
Message-ID: <428b2e70-0ab1-8acc-3cbd-4df131976e27@arm.com>
Date:   Tue, 7 Dec 2021 19:14:29 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH 3/5] arm64: perf: Support new DT compatibles
Content-Language: en-GB
To:     Mark Rutland <mark.rutland@arm.com>
Cc:     will@kernel.org, catalin.marinas@arm.com, robh+dt@kernel.org,
        suzuki.poulose@arm.com, thierry.reding@gmail.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <cover.1638900542.git.robin.murphy@arm.com>
 <579f301dbf5347d20cfdf49480b850cba82c1ca2.1638900542.git.robin.murphy@arm.com>
 <Ya+rdqYBe7AyKoF6@FVFF77S0Q05N>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <Ya+rdqYBe7AyKoF6@FVFF77S0Q05N>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-12-07 18:44, Mark Rutland wrote:
> On Tue, Dec 07, 2021 at 06:20:41PM +0000, Robin Murphy wrote:
>> Wire up the new DT compatibles so we can present appropriate
>> PMU names to userspace for the latest and greatest CPUs.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   arch/arm64/kernel/perf_event.c | 36 ++++++++++++++++++++++++++++++++++
>>   1 file changed, 36 insertions(+)
>>
>> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
>> index 57720372da62..3fe4dcfc28d4 100644
>> --- a/arch/arm64/kernel/perf_event.c
>> +++ b/arch/arm64/kernel/perf_event.c
>> @@ -1215,6 +1215,26 @@ static int armv8_a78_pmu_init(struct arm_pmu *cpu_pmu)
>>   	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a78", NULL);
>>   }
>>   
>> +static int armv9_a510_pmu_init(struct arm_pmu *cpu_pmu)
>> +{
>> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv9_cortex_a510", NULL);
>> +}
>> +
>> +static int armv9_a710_pmu_init(struct arm_pmu *cpu_pmu)
>> +{
>> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv9_cortex_a710", NULL);
>> +}
>> +
>> +static int armv8_x1_pmu_init(struct arm_pmu *cpu_pmu)
>> +{
>> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_x1", NULL);
>> +}
>> +
>> +static int armv9_x2_pmu_init(struct arm_pmu *cpu_pmu)
>> +{
>> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv9_cortex_x2", NULL);
>> +}
> 
> I wonder if it'd be better to do something like:
> 
> #define PMU_INIT_SIMPLE(name)						\
> static int name##_pmu_init(struct arm_pmu *cpu_pmu)			\
> {
> 	return armv8_pmu_init_nogroups(cpu_pmu, #name, NULL);		\
> }
> 
> PMU_INIT_SIMPLE(armv9_cortex_a510)
> PMU_INIT_SIMPLE(armv9_cortex_a710)
> PMU_INIT_SIMPLE(armv8_xortex_x1)
> PMU_INIT_SIMPLE(armv9_xortex_x2)
> 
> ... and fix up the armv8_pmu_of_device_ids[] table to use the longer init names
> that results in?

Indeed I did ponder doing almost exactly that, but at that point I'd 
rather try refactoring a bit deeper to convert most of the arm_pmu init 
business to pure data, so I figured I'd chuck in the simple tweak to 
mitigate these new additions with minimal churn, then have a go at the 
bigger change in its own right.

> Otherwise, looks good to me.

Thanks!

Robin.

> 
> Thanks,
> Mark.
> 
>> +
>>   static int armv8_e1_pmu_init(struct arm_pmu *cpu_pmu)
>>   {
>>   	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_neoverse_e1", NULL);
>> @@ -1225,6 +1245,16 @@ static int armv8_n1_pmu_init(struct arm_pmu *cpu_pmu)
>>   	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_neoverse_n1", NULL);
>>   }
>>   
>> +static int armv9_n2_pmu_init(struct arm_pmu *cpu_pmu)
>> +{
>> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv9_neoverse_n2", NULL);
>> +}
>> +
>> +static int armv8_v1_pmu_init(struct arm_pmu *cpu_pmu)
>> +{
>> +	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_neoverse_v1", NULL);
>> +}
>> +
>>   static int armv8_thunder_pmu_init(struct arm_pmu *cpu_pmu)
>>   {
>>   	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cavium_thunder",
>> @@ -1251,8 +1281,14 @@ static const struct of_device_id armv8_pmu_of_device_ids[] = {
>>   	{.compatible = "arm,cortex-a76-pmu",	.data = armv8_a76_pmu_init},
>>   	{.compatible = "arm,cortex-a77-pmu",	.data = armv8_a77_pmu_init},
>>   	{.compatible = "arm,cortex-a78-pmu",	.data = armv8_a78_pmu_init},
>> +	{.compatible = "arm,cortex-a510-pmu",	.data = armv9_a510_pmu_init},
>> +	{.compatible = "arm,cortex-a710-pmu",	.data = armv9_a710_pmu_init},
>> +	{.compatible = "arm,cortex-x1-pmu",	.data = armv8_x1_pmu_init},
>> +	{.compatible = "arm,cortex-x2-pmu",	.data = armv9_x2_pmu_init},
>>   	{.compatible = "arm,neoverse-e1-pmu",	.data = armv8_e1_pmu_init},
>>   	{.compatible = "arm,neoverse-n1-pmu",	.data = armv8_n1_pmu_init},
>> +	{.compatible = "arm,neoverse-n2-pmu",	.data = armv9_n2_pmu_init},
>> +	{.compatible = "arm,neoverse-v1-pmu",	.data = armv8_v1_pmu_init},
>>   	{.compatible = "cavium,thunder-pmu",	.data = armv8_thunder_pmu_init},
>>   	{.compatible = "brcm,vulcan-pmu",	.data = armv8_vulcan_pmu_init},
>>   	{},
>> -- 
>> 2.28.0.dirty
>>
