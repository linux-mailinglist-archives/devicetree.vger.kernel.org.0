Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10DFE66A3E4
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 21:11:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231191AbjAMUK6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 15:10:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231126AbjAMUK5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 15:10:57 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id D771F892C2
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 12:10:51 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 69479FEC;
        Fri, 13 Jan 2023 12:11:33 -0800 (PST)
Received: from [10.57.76.81] (unknown [10.57.76.81])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1C29B3F587;
        Fri, 13 Jan 2023 12:10:49 -0800 (PST)
Message-ID: <fd12e28f-5a61-87b1-224c-1361a607e943@arm.com>
Date:   Fri, 13 Jan 2023 20:10:42 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 2/2] perf: Add xilinx APM support
Content-Language: en-GB
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     git@amd.com, devicetree@vger.kernel.org, michal.simek@xilinx.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
References: <20221222084235.12235-1-shubhrajyoti.datta@amd.com>
 <20221222084235.12235-3-shubhrajyoti.datta@amd.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20221222084235.12235-3-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-12-22 08:42, Shubhrajyoti Datta wrote:
> The programmable AXI performance monitors (APM) collect real-time
> transaction metrics at multiple points on the AXI interconnect to
> help system software profile real-time activity. In our platform
> we have it in PL and also some of the hardened instances in PS.
> Add Xilinx APM driver support.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> ---
> 
> Changes in v2:
>      - Fix a warn
> 
>   drivers/perf/Kconfig      |  11 +
>   drivers/perf/Makefile     |   1 +
>   drivers/perf/xilinx_apm.c | 666 ++++++++++++++++++++++++++++++++++++++

Please add something to Documentation/admin-guide/perf to give users a 
bit of help in actually knowing how to use this PMU.

>   3 files changed, 678 insertions(+)
>   create mode 100644 drivers/perf/xilinx_apm.c
> 
> diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
> index 341010f20b77..a9daeb750710 100644
> --- a/drivers/perf/Kconfig
> +++ b/drivers/perf/Kconfig
> @@ -190,6 +190,17 @@ config ALIBABA_UNCORE_DRW_PMU
>   	  Support for Driveway PMU events monitoring on Yitian 710 DDR
>   	  Sub-system.
>   
> +config XILINX_APM_PMU
> +	tristate "Enable PMU support for the Xilinx APM controller"
> +	help
> +	  Enables perf support for the Xilinx Axi Performance Monitor
> +	  controller.The IP AXI Performance Monitor core measures
> +	  major performance metrics for the AMBA AXI system. The Performance
> +	  Monitor measures bus latency of a specific master/slave (AXI4/AXI3/AXI4-Stream/AXI4-Lite)
> +	  in a system and the amount of memory traffic for specific durations.
> +	  This core can also be used for real-time profiling for software applications.
> +
> +
>   source "drivers/perf/hisilicon/Kconfig"
>   
>   config MARVELL_CN10K_DDR_PMU
> diff --git a/drivers/perf/Makefile b/drivers/perf/Makefile
> index 050d04ee19dd..161b328f6108 100644
> --- a/drivers/perf/Makefile
> +++ b/drivers/perf/Makefile
> @@ -21,3 +21,4 @@ obj-$(CONFIG_MARVELL_CN10K_TAD_PMU) += marvell_cn10k_tad_pmu.o
>   obj-$(CONFIG_MARVELL_CN10K_DDR_PMU) += marvell_cn10k_ddr_pmu.o
>   obj-$(CONFIG_APPLE_M1_CPU_PMU) += apple_m1_cpu_pmu.o
>   obj-$(CONFIG_ALIBABA_UNCORE_DRW_PMU) += alibaba_uncore_drw_pmu.o
> +obj-$(CONFIG_XILINX_APM_PMU) += xilinx_apm.o
> diff --git a/drivers/perf/xilinx_apm.c b/drivers/perf/xilinx_apm.c
> new file mode 100644
> index 000000000000..0af3c83f2b00
> --- /dev/null
> +++ b/drivers/perf/xilinx_apm.c
> @@ -0,0 +1,666 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Driver for Xilinx APM Performance Reporting
> + *
> + * Copyright 2022 AMD, Inc.
> + *
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/clk.h>
> +#include <linux/io.h>
> +#include <linux/of.h>
> +#include <linux/perf_event.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +
> +#define XAPM_MODE_ADVANCED	1
> +#define XAPM_MODE_PROFILE	2
> +#define XAPM_MODE_TRACE		3
> +
> +#define XAPM_MSR_OFFSET			0x44
> +#define XAPM_MSR_COUNTER		8
> +#define XAPM_SLOTID_SHIFT		0x5
> +#define XAPM_CTRL_OFFSET		0x300
> +#define XAPM_MCR_OFFSET			0x100
> +#define XAPM_MCR_COUNTER		16
> +#define XAPM_RR				0x108
> +
> +#define XAPM_METRICS_CNT_EN		BIT(0)
> +#define XAPM_GLOBAL_CLK_CNT_EN		BIT(16)
> +#define XAPM_COUNTER_MASK		0xF
> +#define XAPM_EVENT_MASK			GENMASK_ULL(11, 0)
> +#define XAPM_EVENT_SHIFT		0
> +#define XAPM_EVTYPE_MASK		GENMASK_ULL(15, 12)
> +#define XAPM_EVTYPE_SHIFT		12
> +#define XAPM_EVTYPE_APM			1
> +
> +#define get_event(_config)	FIELD_GET(XAPM_EVENT_MASK, _config)
> +#define get_evtype(_config)	FIELD_GET(XAPM_EVTYPE_MASK, _config)
> +
> +#define to_xapm_perf_priv(_pmu)	container_of(_pmu, struct xapm_perf_priv, pmu)
> +
> +#define XAPM_EVENT_CONFIG(_event, _type)					\
> +	((void *)((((_event) << XAPM_EVENT_SHIFT) & XAPM_EVENT_MASK) |	\
> +		(((_type) << XAPM_EVTYPE_SHIFT) & XAPM_EVTYPE_MASK)))
> +
> +PMU_FORMAT_ATTR(event,		"config:0-11");
> +
> +/*
> + * Performance Counter Registers for APM.
> + *
> + */
> +enum metric {
> +	WRITE_TRANSACTION	= 0,
> +	READ_TRANSACTION	= 1,
> +	WRITE_BYTE		= 2,
> +	READ_BYTE		= 3,
> +	WRITE_BEAT		= 4,
> +	READ_LATENCY		= 5,
> +	WRITE_LATENCY		= 6,
> +	SLV_WR_IDLE		= 7,
> +	MST_RD_IDLE		= 8,
> +	BVALID			= 9,
> +	WLASTS			= 9,
> +	RLASTS			= 10,
> +	MIN_WR_LATENCY		= 11,
> +	MAX_WR_LATENCY		= 12,
> +	MIN_RD_LATENCY		= 13,
> +	MAX_RD_LATENCY		= 14,
> +	MAX_METRIC		= 15
> +};
> +
> +/**
> + * struct xapm_perf_priv - priv data structure for xapm perf driver
> + *
> + * @dev: parent device.
> + * @ioaddr: mapped base address of DDR region.
> + * @pmu: pmu data structure for xapm perf counters.
> + * @cpu: active CPU to which the PMU is bound for accesses.
> + * @mode: Mode of APM eg advanced/profile/trace .
> + * @counter: current counter.
> + * @slot: current slot to be read.
> + * @range: Range to be allowed.
> + * @node: handle to the xapm node.
> + * @maxslots: Maximum number of slots.
> + * @cpuhp_state: state for CPU hotplug notification.
> + * @clk: clock handle.
> + */
> +struct xapm_perf_priv {
> +	struct device *dev;
> +	void __iomem *ioaddr;
> +	struct pmu pmu;
> +	unsigned int cpu;
> +	u32 mode;
> +	u32 counter;
> +	u32 slot;
> +	u32 maxslots;
> +	u32 range;
> +	struct hlist_node node;
> +	enum cpuhp_state cpuhp_state;
> +	struct clk *clk;
> +};
> +
> +static ssize_t cpumask_show(struct device *dev,
> +			    struct device_attribute *attr, char *buf)
> +{
> +	struct pmu *pmu = dev_get_drvdata(dev);
> +	struct xapm_perf_priv *priv;
> +
> +	priv = to_xapm_perf_priv(pmu);
> +
> +	return cpumap_print_to_pagebuf(true, buf, cpumask_of(priv->cpu));
> +}
> +static DEVICE_ATTR_RO(cpumask);
> +
> +static ssize_t slot_store(struct device *dev,
> +			  struct device_attribute *attr,
> +			  const char *buf, size_t size)
> +{
> +	int ret;
> +	struct pmu *pmu = dev_get_drvdata(dev);
> +	struct xapm_perf_priv *priv;
> +
> +	priv = to_xapm_perf_priv(pmu);
> +	ret = kstrtou32(buf, 0, &priv->slot);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (priv->slot > priv->maxslots)
> +		return -EINVAL;

And yet the new value is kept... :/

But I guess since as a user I haven't the slightest idea what purpose 
this, or the "range" attribute below, actually serve, and how I'm 
supposed to use them, I'm unlikely to be touching them anyway.

> +
> +	return size;
> +}
> +static DEVICE_ATTR_WO(slot);
> +
> +static ssize_t range_store(struct device *dev,
> +			   struct device_attribute *attr,
> +			   const char *buf, size_t size)
> +{
> +	int ret;
> +	struct pmu *pmu = dev_get_drvdata(dev);
> +	struct xapm_perf_priv *priv;
> +
> +	priv = to_xapm_perf_priv(pmu);
> +	ret = kstrtou32(buf, 0, &priv->range);
> +	if (ret < 0)
> +		return ret;
> +
> +	writel(priv->range, priv->ioaddr + XAPM_RR);
> +
> +	return size;
> +}
> +static DEVICE_ATTR_WO(range);
> +
> +static struct attribute *xapm_perf_cpumask_attrs[] = {
> +	&dev_attr_cpumask.attr,
> +	&dev_attr_slot.attr,
> +	&dev_attr_range.attr,
> +	NULL,
> +};
> +
> +static struct attribute_group xapm_perf_cpumask_group = {
> +	.attrs = xapm_perf_cpumask_attrs,
> +};
> +
> +static struct attribute *xapm_perf_format_attrs[] = {
> +	&format_attr_event.attr,
> +	NULL,
> +};
> +
> +static struct attribute_group xapm_perf_format_group = {
> +	.name = "format",
> +	.attrs = xapm_perf_format_attrs,
> +};
> +
> +static ssize_t xapm_perf_event_show(struct device *dev,
> +				    struct device_attribute *attr, char *buf)
> +{
> +	struct dev_ext_attribute *eattr;
> +	unsigned long config;
> +	char *ptr = buf;
> +
> +	eattr = container_of(attr, struct dev_ext_attribute, attr);
> +	config = (unsigned long)eattr->var;
> +
> +	ptr += sprintf(ptr, "event=0x%02x\n", (unsigned int)get_event(config));

Use sysfs_emit().

> +	return (ssize_t)(ptr - buf);
> +}
> +
> +#define XAPM_EVENT_ATTR(_name) \
> +	__ATTR(_name, 0444, xapm_perf_event_show, NULL)
> +
> +#define XAPM_EVENT(_name, _event)					\
> +static struct dev_ext_attribute xapm_perf_event_##_name = {		\
> +	.attr = XAPM_EVENT_ATTR(xapm_##_name),				\
> +	.var = XAPM_EVENT_CONFIG(_event, XAPM_EVTYPE_APM),		\
> +}
> +
> +XAPM_EVENT(write_cnt_0,   WRITE_TRANSACTION | (0 << 4));
> +XAPM_EVENT(read_cnt_0,  READ_TRANSACTION | (0 << 4));
> +XAPM_EVENT(writebyte_cnt_0,   WRITE_BYTE | (0 << 4));
> +XAPM_EVENT(readbyte_cnt_0,  READ_BYTE | (0 << 4));
> +XAPM_EVENT(slvwridle_cnt_0,  SLV_WR_IDLE | (0 << 4));
> +XAPM_EVENT(mstrdidle_cnt_0,  MST_RD_IDLE | (0 << 4));
> +XAPM_EVENT(readlatency_cnt_0,  READ_LATENCY | (0 << 4));
> +XAPM_EVENT(writelatency_cnt_0,   WRITE_LATENCY | (0 << 4));
> +
> +XAPM_EVENT(write_cnt_1,   WRITE_TRANSACTION | (1 << 4));
> +XAPM_EVENT(read_cnt_1,  READ_TRANSACTION | (1 << 4));
> +XAPM_EVENT(writebyte_cnt_1,   WRITE_BYTE | (1 << 4));
> +XAPM_EVENT(readbyte_cnt_1,  READ_BYTE | (1 << 4));
> +XAPM_EVENT(slvwridle_cnt_1,  SLV_WR_IDLE | (1 << 4));
> +XAPM_EVENT(mstrdidle_cnt_1,  MST_RD_IDLE | (1 << 4));
> +XAPM_EVENT(readlatency_cnt_1,  READ_LATENCY | (1 << 4));
> +XAPM_EVENT(writelatency_cnt_1,   WRITE_LATENCY | (1 << 4));
> +
> +XAPM_EVENT(write_cnt_2,   WRITE_TRANSACTION | (2 << 4));
> +XAPM_EVENT(read_cnt_2,  READ_TRANSACTION | (2 << 4));
> +XAPM_EVENT(writebyte_cnt_2,   WRITE_BYTE | (2 << 4));
> +XAPM_EVENT(readbyte_cnt_2,  READ_BYTE | (2 << 4));
> +XAPM_EVENT(slvwridle_cnt_2,  SLV_WR_IDLE | (2 << 4));
> +XAPM_EVENT(mstrdidle_cnt_2,  MST_RD_IDLE | (2 << 4));
> +XAPM_EVENT(readlatency_cnt_2,  READ_LATENCY | (2 << 4));
> +XAPM_EVENT(writelatency_cnt_2,   WRITE_LATENCY | (2 << 4));
> +
> +XAPM_EVENT(write_cnt_3,   WRITE_TRANSACTION | (3 << 4));
> +XAPM_EVENT(read_cnt_3,  READ_TRANSACTION | (3 << 4));
> +XAPM_EVENT(writebyte_cnt_3,   WRITE_BYTE | (3 << 4));
> +XAPM_EVENT(readbyte_cnt_3,  READ_BYTE | (3 << 4));
> +XAPM_EVENT(slvwridle_cnt_3,  SLV_WR_IDLE | (3 << 4));
> +XAPM_EVENT(mstrdidle_cnt_3,  MST_RD_IDLE | (3 << 4));
> +XAPM_EVENT(readlatency_cnt_3,  READ_LATENCY | (3 << 4));
> +XAPM_EVENT(writelatency_cnt_3,   WRITE_LATENCY | (3 << 4));
> +
> +XAPM_EVENT(write_cnt_4,   WRITE_TRANSACTION | (4 << 4));
> +XAPM_EVENT(read_cnt_4,  READ_TRANSACTION | (4 << 4));
> +XAPM_EVENT(writebyte_cnt_4,   WRITE_BYTE | (4 << 4));
> +XAPM_EVENT(readbyte_cnt_4,  READ_BYTE | (4 << 4));
> +XAPM_EVENT(slvwridle_cnt_4,  SLV_WR_IDLE | (4 << 4));
> +XAPM_EVENT(mstrdidle_cnt_4,  MST_RD_IDLE | (4 << 4));
> +XAPM_EVENT(readlatency_cnt_4,  READ_LATENCY | (4 << 4));
> +XAPM_EVENT(writelatency_cnt_4,   WRITE_LATENCY | (4 << 4));
> +
> +XAPM_EVENT(write_cnt_5,   WRITE_TRANSACTION | (5 << 4));
> +XAPM_EVENT(read_cnt_5,  READ_TRANSACTION | (5 << 4));
> +XAPM_EVENT(writebyte_cnt_5,   WRITE_BYTE | (5 << 4));
> +XAPM_EVENT(readbyte_cnt_5,  READ_BYTE | (5 << 4));
> +XAPM_EVENT(slvwridle_cnt_5,  SLV_WR_IDLE | (5 << 4));
> +XAPM_EVENT(mstrdidle_cnt_5,  MST_RD_IDLE | (5 << 4));
> +XAPM_EVENT(readlatency_cnt_5,  READ_LATENCY | (5 << 4));
> +XAPM_EVENT(writelatency_cnt_5,   WRITE_LATENCY | (5 << 4));
> +
> +XAPM_EVENT(write_cnt_6,   WRITE_TRANSACTION | (6 << 4));
> +XAPM_EVENT(read_cnt_6,  READ_TRANSACTION | (6 << 4));
> +XAPM_EVENT(writebyte_cnt_6,   WRITE_BYTE | (6 << 4));
> +XAPM_EVENT(readbyte_cnt_6,  READ_BYTE | (6 << 4));
> +XAPM_EVENT(slvwridle_cnt_6,  SLV_WR_IDLE | (6 << 4));
> +XAPM_EVENT(mstrdidle_cnt_6,  MST_RD_IDLE | (6 << 4));
> +XAPM_EVENT(readlatency_cnt_6,  READ_LATENCY | (6 << 4));
> +XAPM_EVENT(writelatency_cnt_6,   WRITE_LATENCY | (6 << 4));
> +
> +XAPM_EVENT(write_cnt_7,   WRITE_TRANSACTION | (7 << 4));
> +XAPM_EVENT(read_cnt_7,  READ_TRANSACTION | (7 << 4));
> +XAPM_EVENT(writebyte_cnt_7,   WRITE_BYTE | (7 << 4));
> +XAPM_EVENT(readbyte_cnt_7,  READ_BYTE | (7 << 4));
> +XAPM_EVENT(slvwridle_cnt_7,  SLV_WR_IDLE | (7 << 4));
> +XAPM_EVENT(mstrdidle_cnt_7,  MST_RD_IDLE | (7 << 4));
> +XAPM_EVENT(readlatency_cnt_7,  READ_LATENCY | (7 << 4));
> +XAPM_EVENT(writelatency_cnt_7,   WRITE_LATENCY | (7 << 4));
> +
> +XAPM_EVENT(write_cnt_8,   WRITE_TRANSACTION | (8 << 4));
> +XAPM_EVENT(read_cnt_8,  READ_TRANSACTION | (8 << 4));
> +XAPM_EVENT(writebyte_cnt_8,   WRITE_BYTE | (8 << 4));
> +XAPM_EVENT(readbyte_cnt_8,  READ_BYTE | (8 << 4));
> +XAPM_EVENT(slvwridle_cnt_8,  SLV_WR_IDLE | (8 << 4));
> +XAPM_EVENT(mstrdidle_cnt_8,  MST_RD_IDLE | (8 << 4));
> +XAPM_EVENT(readlatency_cnt_8,  READ_LATENCY | (8 << 4));
> +XAPM_EVENT(writelatency_cnt_8,   WRITE_LATENCY | (8 << 4));
> +
> +XAPM_EVENT(write_cnt_9,   WRITE_TRANSACTION | (9 << 4));
> +XAPM_EVENT(read_cnt_9,  READ_TRANSACTION | (9 << 4));
> +XAPM_EVENT(writebyte_cnt_9,   WRITE_BYTE | (9 << 4));
> +XAPM_EVENT(readbyte_cnt_9,  READ_BYTE | (9 << 4));
> +XAPM_EVENT(slvwridle_cnt_9,  SLV_WR_IDLE | (9 << 4));
> +XAPM_EVENT(mstrdidle_cnt_9,  MST_RD_IDLE | (9 << 4));
> +XAPM_EVENT(readlatency_cnt_9,  READ_LATENCY | (9 << 4));
> +XAPM_EVENT(writelatency_cnt_9,   WRITE_LATENCY | (9 << 4));

Do we really need to expose apparently the same set of events 10 times 
over? Judging from the code below, I'm guessing the mystery number is 
some sort of counter index, which at best could probably be a separate 
config field orthogonal to the actual event type, but possibly is 
something the driver could allocate automatically?

> +static struct attribute *xapm_perf_events_attrs_all[81] = {
> +	&xapm_perf_event_readbyte_cnt_0.attr.attr,
> +	&xapm_perf_event_writebyte_cnt_0.attr.attr,
> +	&xapm_perf_event_read_cnt_0.attr.attr,
> +	&xapm_perf_event_write_cnt_0.attr.attr,
> +	&xapm_perf_event_readlatency_cnt_0.attr.attr,
> +	&xapm_perf_event_writelatency_cnt_0.attr.attr,
> +	&xapm_perf_event_mstrdidle_cnt_0.attr.attr,
> +	&xapm_perf_event_slvwridle_cnt_0.attr.attr,
> +
> +	&xapm_perf_event_readbyte_cnt_1.attr.attr,
> +	&xapm_perf_event_writebyte_cnt_1.attr.attr,
> +	&xapm_perf_event_readlatency_cnt_1.attr.attr,
> +	&xapm_perf_event_writelatency_cnt_1.attr.attr,
> +	&xapm_perf_event_read_cnt_1.attr.attr,
> +	&xapm_perf_event_write_cnt_1.attr.attr,
> +	&xapm_perf_event_mstrdidle_cnt_1.attr.attr,
> +	&xapm_perf_event_slvwridle_cnt_1.attr.attr,
> +
> +	&xapm_perf_event_readbyte_cnt_2.attr.attr,
> +	&xapm_perf_event_writebyte_cnt_2.attr.attr,
> +	&xapm_perf_event_readlatency_cnt_2.attr.attr,
> +	&xapm_perf_event_writelatency_cnt_2.attr.attr,
> +	&xapm_perf_event_read_cnt_2.attr.attr,
> +	&xapm_perf_event_write_cnt_2.attr.attr,
> +	&xapm_perf_event_mstrdidle_cnt_2.attr.attr,
> +	&xapm_perf_event_slvwridle_cnt_2.attr.attr,
> +
> +	&xapm_perf_event_read_cnt_3.attr.attr,
> +	&xapm_perf_event_write_cnt_3.attr.attr,
> +	&xapm_perf_event_readbyte_cnt_3.attr.attr,
> +	&xapm_perf_event_writebyte_cnt_3.attr.attr,
> +	&xapm_perf_event_readlatency_cnt_3.attr.attr,
> +	&xapm_perf_event_writelatency_cnt_3.attr.attr,
> +	&xapm_perf_event_mstrdidle_cnt_3.attr.attr,
> +	&xapm_perf_event_slvwridle_cnt_3.attr.attr,
> +
> +	&xapm_perf_event_readbyte_cnt_4.attr.attr,
> +	&xapm_perf_event_writebyte_cnt_4.attr.attr,
> +	&xapm_perf_event_read_cnt_4.attr.attr,
> +	&xapm_perf_event_write_cnt_4.attr.attr,
> +	&xapm_perf_event_readlatency_cnt_4.attr.attr,
> +	&xapm_perf_event_writelatency_cnt_4.attr.attr,
> +	&xapm_perf_event_mstrdidle_cnt_4.attr.attr,
> +	&xapm_perf_event_slvwridle_cnt_4.attr.attr,
> +
> +	&xapm_perf_event_readbyte_cnt_5.attr.attr,
> +	&xapm_perf_event_writebyte_cnt_5.attr.attr,
> +	&xapm_perf_event_read_cnt_5.attr.attr,
> +	&xapm_perf_event_write_cnt_5.attr.attr,
> +	&xapm_perf_event_readlatency_cnt_5.attr.attr,
> +	&xapm_perf_event_writelatency_cnt_5.attr.attr,
> +	&xapm_perf_event_mstrdidle_cnt_5.attr.attr,
> +	&xapm_perf_event_slvwridle_cnt_5.attr.attr,
> +
> +	&xapm_perf_event_readbyte_cnt_6.attr.attr,
> +	&xapm_perf_event_writebyte_cnt_6.attr.attr,
> +	&xapm_perf_event_read_cnt_6.attr.attr,
> +	&xapm_perf_event_write_cnt_6.attr.attr,
> +	&xapm_perf_event_readlatency_cnt_6.attr.attr,
> +	&xapm_perf_event_writelatency_cnt_6.attr.attr,
> +	&xapm_perf_event_mstrdidle_cnt_6.attr.attr,
> +	&xapm_perf_event_slvwridle_cnt_6.attr.attr,
> +
> +	&xapm_perf_event_readbyte_cnt_7.attr.attr,
> +	&xapm_perf_event_writebyte_cnt_7.attr.attr,
> +	&xapm_perf_event_read_cnt_7.attr.attr,
> +	&xapm_perf_event_write_cnt_7.attr.attr,
> +	&xapm_perf_event_readlatency_cnt_7.attr.attr,
> +	&xapm_perf_event_writelatency_cnt_7.attr.attr,
> +	&xapm_perf_event_mstrdidle_cnt_7.attr.attr,
> +	&xapm_perf_event_slvwridle_cnt_7.attr.attr,
> +
> +	&xapm_perf_event_readbyte_cnt_8.attr.attr,
> +	&xapm_perf_event_writebyte_cnt_8.attr.attr,
> +	&xapm_perf_event_read_cnt_8.attr.attr,
> +	&xapm_perf_event_write_cnt_8.attr.attr,
> +	&xapm_perf_event_readlatency_cnt_8.attr.attr,
> +	&xapm_perf_event_writelatency_cnt_8.attr.attr,
> +	&xapm_perf_event_mstrdidle_cnt_8.attr.attr,
> +	&xapm_perf_event_slvwridle_cnt_8.attr.attr,
> +
> +	&xapm_perf_event_readbyte_cnt_9.attr.attr,
> +	&xapm_perf_event_writebyte_cnt_9.attr.attr,
> +	&xapm_perf_event_read_cnt_9.attr.attr,
> +	&xapm_perf_event_write_cnt_9.attr.attr,
> +	&xapm_perf_event_readlatency_cnt_9.attr.attr,
> +	&xapm_perf_event_writelatency_cnt_9.attr.attr,
> +	&xapm_perf_event_mstrdidle_cnt_9.attr.attr,
> +	&xapm_perf_event_slvwridle_cnt_9.attr.attr,
> +
> +	NULL,
> +};
> +
> +static u64 xapm_read_event_counter(struct xapm_perf_priv *priv, u32 event)
> +{
> +	void __iomem *base = priv->ioaddr;
> +	u64 counter;
> +	u64 reg;
> +
> +	priv->counter = event >> 4;
> +
> +	reg = readl(base + XAPM_MSR_OFFSET);
> +	reg =	reg & ~(XAPM_COUNTER_MASK  << priv->counter * XAPM_MSR_COUNTER);
> +	reg =	reg | (event) << priv->counter * 8;
> +	reg =	reg | (priv->slot) << (priv->counter * 8 + XAPM_SLOTID_SHIFT);

That is... hard to make sense of...

However, I have persevered, and I think I now understand that its 
purpose is to corrupt a register by clearing a 4-bit field, inserting an 
unchecked 11-bit value into those 4 bits, then inserting an unchecked 
32-bit value into the top 6 bits of the 11 bits of the 4 bits. Have I 
got that right?

> +	writel(reg, base + XAPM_MSR_OFFSET);
> +
> +	counter = readl(base + XAPM_MCR_OFFSET + (priv->counter * XAPM_MCR_COUNTER));
> +
> +	return counter;
> +}
> +
> +static int xapm_perf_event_init(struct perf_event *event)
> +{
> +	struct xapm_perf_priv *priv = to_xapm_perf_priv(event->pmu);
> +	struct hw_perf_event *hwc = &event->hw;
> +	void __iomem *base = priv->ioaddr;
> +	u32 reg;
> +
> +	hwc->event_base = get_evtype(event->attr.config);
> +	hwc->idx = (int)get_event(event->attr.config);
> +
> +	reg = readl(base + XAPM_CTRL_OFFSET);
> +	reg |= XAPM_GLOBAL_CLK_CNT_EN;
> +	reg |= XAPM_METRICS_CNT_EN;
> +	writel(reg, base + XAPM_CTRL_OFFSET);
> +
> +	return 0;
> +}

The purpose of .event_init is to check that the event is valid for your 
PMU and perform any one-off intialisation of private state in the event 
struct itself. You should not be touching any hardware until .add when 
the event is actually scheduled, and at the very least you must not 
accept events that are intended for a different PMU.

> +
> +static void xapm_perf_event_update(struct perf_event *event)
> +{
> +	struct xapm_perf_priv *priv = to_xapm_perf_priv(event->pmu);
> +	struct hw_perf_event *hwc = &event->hw;
> +	u64 now, prev, delta;
> +
> +	now = xapm_read_event_counter(priv, (u32)hwc->idx);
> +	prev = local64_read(&hwc->prev_count);
> +	delta = now - prev;
> +
> +	local64_add(delta, &event->count);
> +}
> +
> +static void xapm_perf_event_start(struct perf_event *event, int flags)
> +{
> +	struct xapm_perf_priv *priv = to_xapm_perf_priv(event->pmu);
> +	struct hw_perf_event *hwc = &event->hw;
> +	u64 count;
> +
> +	count = xapm_read_event_counter(priv, (u32)hwc->idx);
> +	local64_set(&hwc->prev_count, count);
> +}
> +
> +static void xapm_perf_event_stop(struct perf_event *event, int flags)
> +{
> +	xapm_perf_event_update(event);
> +}

So does that mean the counters are free-running and there's no way to 
physically start and stop them (or the PMU as a whole)? Fair enough if 
so, but note that that means .event_init should strictly reject any 
group with more than one hardware event.

> +
> +static int xapm_perf_event_add(struct perf_event *event, int flags)
> +{
> +	if (flags & PERF_EF_START)
> +		xapm_perf_event_start(event, flags);
> +
> +	return 0;

So if I open all 2048 possible events on this PMU simultaneously, 
they'll all count correctly? Neat!

> +}
> +
> +static void xapm_perf_event_del(struct perf_event *event, int flags)
> +{
> +	xapm_perf_event_stop(event, PERF_EF_UPDATE);
> +}
> +
> +static void xapm_perf_event_read(struct perf_event *event)
> +{
> +	xapm_perf_event_update(event);
> +}
> +
> +static int xapm_perf_offline_cpu(unsigned int cpu, struct hlist_node *node)
> +{
> +	struct xapm_perf_priv *priv;
> +	int target;
> +
> +	priv = hlist_entry_safe(node, struct xapm_perf_priv, node);
> +
> +	if (cpu != priv->cpu)
> +		return 0;
> +
> +	target = cpumask_any_but(cpu_online_mask, cpu);
> +	if (target >= nr_cpu_ids)
> +		return 0;
> +
> +	priv->cpu = target;

You need to migrate the event context for any events currently 
scheduled, which will still have the previous CPU affinity.

> +	return 0;
> +}
> +
> +static int xapm_perf_probe(struct platform_device *pdev)
> +{
> +	static struct attribute_group xapm_perf_events_group;
> +	static struct attribute *xapm_perf_events_attrs[81];
> +	struct xapm_perf_priv *priv;
> +	void __iomem *baseaddr;
> +	struct resource *res;
> +	u32 numcounters;
> +	struct pmu *pmu;
> +	u32 mode = 0;
> +	char *name;
> +	int ret, i;
> +	static const struct attribute_group *xapm_perf_groups[] = {
> +		&xapm_perf_format_group,
> +		&xapm_perf_cpumask_group,
> +		&xapm_perf_events_group,
> +		NULL,
> +	};
> +
> +	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, priv);
> +	baseaddr = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
> +	if (IS_ERR(baseaddr))
> +		return PTR_ERR(baseaddr);
> +
> +	priv->dev = &pdev->dev;
> +	priv->ioaddr = baseaddr;
> +
> +	ret = of_property_read_u32(pdev->dev.of_node, "xlnx,num-of-counters",
> +				   &numcounters);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "no property xlnx,num-of-counters");
> +		return ret;

The DT binding claims it's optional. Which is true?

> +	}
> +
> +	priv->clk = devm_clk_get(&pdev->dev, NULL);
> +	if (IS_ERR(priv->clk)) {
> +		if (PTR_ERR(priv->clk) != -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "axi clock error\n");
> +		return PTR_ERR(priv->clk);

Use dev_err_probe().

> +	}
> +
> +	priv->cpu = raw_smp_processor_id();
> +
> +	ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
> +				      "perf/xapm/xapm:online",
> +				      NULL, xapm_perf_offline_cpu);
> +	if (ret < 0)
> +		return ret;

Huh? Why are you registering a separate multi-instance hotplug state for 
each device instance probed? If there's only ever a single device in the 
system, just use a regular hotplug state. Otherwise, use a single 
multi-state properly; as-is this is silly and wasteful (the number of 
dynamic slots is fairly limited).

> +
> +	priv->cpuhp_state = ret;
> +	priv->mode = XAPM_MODE_ADVANCED;
> +
> +	ret = of_property_read_u32(pdev->dev.of_node, "xlnx,enable-profile", &mode);
> +	if (ret < 0)
> +		dev_info(&pdev->dev, "no property xlnx,enable-profile\n");
> +	else if (mode)
> +		priv->mode = XAPM_MODE_PROFILE;
> +
> +	ret = of_property_read_u32(pdev->dev.of_node, "xlnx,enable-trace", &mode);
> +	if (ret < 0)
> +		dev_info(&pdev->dev, "no property xlnx,enable-trace\n");
> +	else if (mode)
> +		priv->mode = XAPM_MODE_TRACE;

If would be more useful to inform the user which mode you have 
ultimately determined to use, rather than print cryptic messages about 
DT properties not being present. Especially when they're optional and 
appear to be mutually-exclusive, so it's presumably expected for at 
least one of them, if not both, to be missing.

However, given that priv->mode is never used anywhere, I'd have to ask 
why bother with these properties at all?

> +
> +	ret = clk_prepare_enable(priv->clk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Unable to enable clock.\n");
> +		goto cpuhp_instance_err;
> +	}
> +	/* Register the pmu instance for cpu hotplug */
> +	ret = cpuhp_state_add_instance_nocalls(priv->cpuhp_state, &priv->node);
> +	if (ret)
> +		goto cpuhp_instance_err;
> +
> +	for (i = 0; i < numcounters * 8; i++)
> +		xapm_perf_events_attrs[i] = xapm_perf_events_attrs_all[i];

If numcounters is a physical limit of the hardware, exposing named 
events or not does nothing to enforce it. Even with regular perf tool, 
users are free to format their own events manually, e.g. 
"<pmu>/event=0x765/", or pass through completely unchecked values with 
"<pmu>/config=.../"

> +	xapm_perf_events_attrs[i] = NULL;
> +
> +	xapm_perf_events_group.name = "events";
> +	xapm_perf_events_group.attrs = xapm_perf_events_attrs;
> +
> +	pmu = &priv->pmu;
> +
> +	pmu->task_ctx_nr =	perf_invalid_context;
> +	pmu->attr_groups =	xapm_perf_groups;
> +	pmu->event_init =	xapm_perf_event_init;
> +	pmu->add =		xapm_perf_event_add;
> +	pmu->del =		xapm_perf_event_del;
> +	pmu->start =		xapm_perf_event_start;
> +	pmu->stop =		xapm_perf_event_stop;
> +	pmu->read =		xapm_perf_event_read;
> +	pmu->capabilities =	PERF_PMU_CAP_NO_INTERRUPT |
> +				PERF_PMU_CAP_NO_EXCLUDE;

You definitely need to set pmu->module if this driver can be built as a 
module.

> +
> +	ret = of_property_read_u32(pdev->dev.of_node, "xlnx,num-monitor-slots",
> +				   &priv->maxslots);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "no property xlnx,num-monitor-slots");
> +		return ret;

Again this is supposedly optional.

> +	}
> +
> +	name = devm_kasprintf(priv->dev, GFP_KERNEL, "xapm%llx_counter",
> +			      (u64)res->start);
> +	ret = perf_pmu_register(pmu, name, -1);
> +	if (ret)
> +		goto pmu_register_err;
> +
> +	pm_runtime_get_noresume(&pdev->dev);
> +	pm_runtime_set_active(&pdev->dev);
> +	pm_runtime_enable(&pdev->dev);
> +
> +	return 0;
> +pmu_register_err:
> +	cpuhp_state_remove_instance_nocalls(priv->cpuhp_state, &priv->node);
> +cpuhp_instance_err:
> +	cpuhp_remove_multi_state(priv->cpuhp_state);
> +	return ret;
> +}
> +
> +static int xapm_perf_remove(struct platform_device *pdev)
> +{
> +	struct xapm_perf_priv *priv = platform_get_drvdata(pdev);
> +
> +	perf_pmu_unregister(&priv->pmu);
> +	cpuhp_state_remove_instance_nocalls(priv->cpuhp_state, &priv->node);
> +	clk_disable_unprepare(priv->clk);
> +	pm_runtime_disable(&pdev->dev);
> +	pm_runtime_set_suspended(&pdev->dev);
> +	return 0;
> +}
> +
> +static int __maybe_unused xapm_runtime_suspend(struct device *dev)
> +{
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct xapm_perf_priv *priv = platform_get_drvdata(pdev);

Just use dev_get_drvdata() directly. There's no pretence that platform 
drivers might keep their data anywhere else.

> +	clk_disable_unprepare(priv->clk);
> +	return 0;
> +};
> +
> +static int __maybe_unused xapm_runtime_resume(struct device *dev)
> +{
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct xapm_perf_priv *priv = platform_get_drvdata(pdev);
> +	int ret;
> +
> +	ret = clk_prepare_enable(priv->clk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Unable to enable clock.\n");
> +		return ret;
> +	}
> +	return 0;
> +};
> +
> +static const struct dev_pm_ops xapm_dev_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(xapm_runtime_suspend, xapm_runtime_resume)
> +	SET_RUNTIME_PM_OPS(xapm_runtime_suspend,
> +			   xapm_runtime_resume, NULL)
> +};

Consider the new DEFINE_RUNTIME_DEV_PM_OPS() helper instead.

> +
> +static const struct of_device_id xapm_perf_match[] = {
> +	{ .compatible = "xlnx,axi-perf-monitor", },
> +	{},
> +};
> +
> +static struct platform_driver xlnx_apm_driver = {
> +	.driver = {
> +		.name = "xlnx_apm_perf",
> +		.of_match_table = xapm_perf_match,
> +		.suppress_bind_attrs = true,
> +		.pm = &xapm_dev_pm_ops,
> +	},
> +	.probe = xapm_perf_probe,
> +	.remove = xapm_perf_remove,
> +};
> +module_platform_driver(xlnx_apm_driver);
> +MODULE_LICENSE("GPL");
> +MODULE_DESCRIPTION("ARM CCI PMU support");

Um, no it isn't.

Thanks,
Robin.
