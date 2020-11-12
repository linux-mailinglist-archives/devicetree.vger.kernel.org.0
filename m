Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C0372B0CAF
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 19:33:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726221AbgKLSdZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Nov 2020 13:33:25 -0500
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173]:36173 "EHLO
        6.mo3.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726219AbgKLSdZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Nov 2020 13:33:25 -0500
X-Greylist: delayed 8393 seconds by postgrey-1.27 at vger.kernel.org; Thu, 12 Nov 2020 13:33:22 EST
Received: from player731.ha.ovh.net (unknown [10.108.42.145])
        by mo3.mail-out.ovh.net (Postfix) with ESMTP id 6D87226AAAE
        for <devicetree@vger.kernel.org>; Thu, 12 Nov 2020 15:55:32 +0100 (CET)
Received: from milecki.pl (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player731.ha.ovh.net (Postfix) with ESMTPSA id 6E7F217E1F6AA;
        Thu, 12 Nov 2020 14:55:25 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-104R005a6023b77-783b-4af6-a622-946e139c72b9,
                    5DB2EC65EA10FA9BF03E1418F38E114673DCE3D8) smtp.auth=rafal@milecki.pl
Subject: Re: [PATCH 2/2] reset: brcm-pmc: add driver for Broadcom's PMC
To:     Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
References: <20201109163519.32605-1-zajec5@gmail.com>
 <20201109163519.32605-2-zajec5@gmail.com>
 <e89b4601-0c52-db46-4406-d9ac28687e8f@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Message-ID: <41d25c9d-3562-9549-3582-78a5e2d37330@milecki.pl>
Date:   Thu, 12 Nov 2020 15:55:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <e89b4601-0c52-db46-4406-d9ac28687e8f@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 5540553444794469937
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedruddvfedggeehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepuffvfhfhkffffgggjggtgfesthekredttdefjeenucfhrhhomheptfgrfhgrlhcuofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepkeduheejheffudefhffghfegjeejleetkeevueelveegkefhhfffieehleelgfevnecukfhppedtrddtrddtrddtpdduleegrddukeejrdejgedrvdeffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejfedurdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprhgrfhgrlhesmhhilhgvtghkihdrphhlpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10.11.2020 05:52, Florian Fainelli wrote:
> On 11/9/2020 8:35 AM, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> Power Management Controller can be found on BCM4908 and is needed to
>> power on SoC blocks. It can be controlled using:
>> 1. Firmware calls
>> 2. Direct regs access
>>
>> Only the later method is supported by this initial driver. It was
>> successfully tested on BCM4908 using HCD controllers.
>>
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>> ---
> 
> [snip]
> 
>> +#define PMBM_CTRL				0x00
>> +#define  PMC_PMBM_START				(1 << 31)
>> +#define  PMC_PMBM_TIMEOUT			(1 << 30)
>> +#define  PMC_PMBM_SLAVE_ERR			(1 << 29)
>> +#define  PMC_PMBM_BUSY				(1 << 28)
>> +#define  PMC_PMBM_READ				(0 << 20)
>> +#define  PMC_PMBM_WRITE				(1 << 20)
>> +#define PMBM_WR_DATA				0x04
>> +#define PMBM_TIMEOUT				0x08
>> +#define PMBM_RD_DATA				0x0c
> 
> Can you re-use the definitions from include/linux/reset/bcm63xx_pmb.h,
> you have the same constant names.
> 
>> +
>> +#define BPCM_ID_REG				0x00
>> +#define BPCM_CAPABILITIES			0x04
>> +#define BPCM_CONTROL				0x08
>> +#define BPCM_STATUS				0x0c
>> +#define BPCM_ROSC_CONTROL			0x10
>> +#define BPCM_ROSC_THRESH_H			0x14
>> +#define BPCM_ROSC_THRESHOLD_BCM6838		0x14
>> +#define BPCM_ROSC_THRESH_S			0x18
>> +#define BPCM_ROSC_COUNT_BCM6838			0x18
>> +#define BPCM_ROSC_COUNT				0x1c
>> +#define BPCM_PWD_CONTROL_BCM6838		0x1c
>> +#define BPCM_PWD_CONTROL			0x20
>> +#define BPCM_SR_CONTROL_BCM6838			0x20
>> +#define BPCM_PWD_ACCUM_CONTROL			0x24
>> +#define BPCM_SR_CONTROL				0x28
>> +#define BPCM_GLOBAL_CONTROL			0x2c
>> +#define BPCM_MISC_CONTROL			0x30
>> +#define BPCM_MISC_CONTROL2			0x34
>> +#define BPCM_SGPHY_CNTL				0x38
>> +#define BPCM_SGPHY_STATUS			0x3c
>> +#define BPCM_ZONE0				0x40
>> +#define  BPCM_ZONE_CONTROL			0x00
>> +#define  BPCM_ZONE_CONFIG1			0x04
>> +#define  BPCM_ZONE_CONFIG2			0x08
>> +#define  BPCM_ZONE_FREQ_SCALAR_CONTROL		0x0c
>> +#define  BPCM_ZONE_SIZE				0x10
>> +
>> +enum brcm_pmc_chipset {
>> +	BCM4908,
>> +	BCM6848,
>> +	BCM6858,
>> +};
>> +
>> +struct brcm_pmc_data {
>> +	enum brcm_pmc_chipset chipset;
>> +	int misc_strap_bus_reg;
>> +	int misc_strap_bus_pmc_rom_boot_bit;
>> +};
>> +
>> +static const struct brcm_pmc_data brcm_pmc_4908_data = {
>> +	.chipset				= BCM4908,
>> +	.misc_strap_bus_reg			= 0x00,
>> +	.misc_strap_bus_pmc_rom_boot_bit	= BIT(11),
>> +};
>> +
>> +union bpcm_capabilities {
>> +	struct {
>> +		int num_zones:8;
>> +		int sr_reg_bits:8;
>> +		int pllType:2;
>> +		int reserved0:1;
>> +		int ubus:1;
>> +		int reserved1:12;
>> +	} bits;
>> +	u32 raw32;
>> +} __attribute__((__packed__));
> 
> This is not going to work well if we extend this driver to support the
> BCM63xx DSL SoCs which are done by the same engineering group within
> Broadcom. Can you convert that to bits/masks instead such that this
> becomes endian independent?
> 
>> +
>> +union bpcm_zone_control {
>> +	struct {
>> +		u32 manual_clk_en:1;
>> +		u32 manual_reset_ctl:1;
>> +		u32 freq_scale_used:1;		/* R/O */
>> +		u32 dpg_capable:1;		/* R/O */
>> +		u32 manual_mem_pwr:2;
>> +		u32 manual_iso_ctl:1;
>> +		u32 manual_ctl:1;
>> +		u32 dpg_ctl_en:1;
>> +		u32 pwr_dn_req:1;
>> +		u32 pwr_up_req:1;
>> +		u32 mem_pwr_ctl_en:1;
>> +		u32 blk_reset_assert:1;
>> +		u32 mem_stby:1;
>> +		u32 reserved:5;
>> +		u32 pwr_cntl_state:5;
>> +		u32 freq_scalar_dyn_sel:1;	/* R/O */
>> +		u32 pwr_off_state:1;		/* R/O */
>> +		u32 pwr_on_state:1;		/* R/O */
>> +		u32 pwr_good:1;			/* R/O */
>> +		u32 dpg_pwr_state:1;		/* R/O */
>> +		u32 mem_pwr_state:1;		/* R/O */
>> +		u32 iso_state:1;		/* R/O */
>> +		u32 reset_state:1;		/* R/O */
>> +	} bits;
>> +	u32 raw32;
>> +} __attribute__((__packed__));
>> +
>> +struct brcm_pmc {
>> +	const struct brcm_pmc_data *data;
>> +	void __iomem *base;
>> +	struct regmap *misc;
>> +	struct regmap *procmon;
>> +	struct device *dev;
>> +	struct reset_controller_dev rcdev;
>> +	bool direct;
>> +	bool little_endian;
>> +};
>> +
>> +static DEFINE_SPINLOCK(lock);
> 
> You have a platform device, can you store the lock there instead of
> having a global?
> 
>> +
>> +#define cpu_to_dev32(pmc, val) \
>> +	((pmc)->little_endian ? cpu_to_le32(val) : cpu_to_be32(val))
> 
> This would probably be better written as a static inline helper, and
> maybe something like this:
> 
> static inline u32 brcm_pmc_readl(struct brcm_pmc *pmc, u8 offset)
> {
> 	if (pmc->little_endian)
> 		return ioread32(pmc->base + offset);
> 	else
> 		return ioread32_be(pmc->base + offset);
> }
> 
>> +
>> +#define dev32_to_cpu(pmc, val) \
>> +	((pmc)->little_endian ? le32_to_cpu(val) : be32_to_cpu(val))
>> +
>> +static int brcm_pmc_bpcm_wait(struct brcm_pmc *pmc, int bus)
>> +{
>> +	unsigned long deadline = jiffies + usecs_to_jiffies(1000);
>> +	int pmbm = PROCMON_PMBM + bus * PROCMON_PMBM_SIZE;
>> +	u32 val;
>> +
>> +	do {
>> +		regmap_read(pmc->procmon, pmbm + PMBM_CTRL, &val);
>> +		if (!(val & PMC_PMBM_START))
>> +			return 0;
>> +		cpu_relax();
>> +		udelay(10);
>> +	} while (!time_after_eq(jiffies, deadline));
>> +
>> +	dev_err(pmc->dev, "Timeout waiting for the BPCM\n");
> 
> Can you use include/linux/reset/bcm63xx_pmb.h again here and check
> arch/arm/mach-bcm/bcm63xx_pmb.c for how it is used.

I use regmap while bcm63xx_pmb.h depends on raw IO access. See below though.


>> +	return -EBUSY;
>> +}
>> +
>> +static int brcm_pmc_bpcm_read(struct brcm_pmc *pmc, u16 addr, int word_offset, u32 *val)
>> +{
>> +	int err = 0;
>> +
>> +	if (!pmc->direct) {
>> +		err = -EOPNOTSUPP;
> 
> Do an early return here so you don't have to indent the block under by
> one tab.

In a long term I'll need a full if + else anyway. Having it this way now
will save me some code moving (indent) later.


>> +	} else {
>> +		u8 device = addr & 0xff;
>> +		u8 bus = addr >> 8;
>> +		unsigned long flags;
>> +		int pmbm;
>> +		u32 tmp;
>> +
>> +		pmbm = PROCMON_PMBM + bus * PROCMON_PMBM_SIZE;
>> +
>> +		spin_lock_irqsave(&lock, flags);
>> +
>> +		/* TODO: Make sure PMBM is not busy */
>> +
>> +		regmap_write(pmc->procmon, pmbm + PMBM_CTRL,
>> +			     PMC_PMBM_START | PMC_PMBM_READ | (device << 12) | word_offset);
>> +
>> +		err = brcm_pmc_bpcm_wait(pmc, bus);
>> +		if (!err)
>> +			err = regmap_read(pmc->procmon, pmbm + PMBM_RD_DATA, val);
>> +
>> +		spin_unlock_irqrestore(&lock, flags);
>> +	}
>> +
>> +	return err;
>> +}
>> +
>> +static int brcm_pmc_bpcm_write(struct brcm_pmc *pmc, u16 addr, int word_offset, u32 val)
>> +{
>> +	int err = 0;
>> +
>> +	if (!pmc->direct) {
>> +		err = -EOPNOTSUPP;
> 
> Likewise.
> 
> [snip]
> 
>> +static int brcm_pmc_reset_xlate(struct reset_controller_dev *rcdev,
>> +				const struct of_phandle_args *reset_spec)
>> +{
>> +	u8 device = reset_spec->args[1];
>> +	u8 bus = reset_spec->args[0];
>> +
>> +	if (bus > 1)
>> +		return -EINVAL;
>> +
>> +	return (bus << 8) | device;
> 
> IIRC the bus is limited to 8 bits, and the device ID certainly is
> limited to 8 bits so you need to validate that before doing the
> assignment otherwise you are going to see truncated values which could
> be wrapped around and return some bogus reset ID combination.
> 
> You are using the same binding as
> Documentation/devicetree/bindings/reset/brcm,bcm63138-pmb.txt, so maybe
> you can add that compatible string into your binding document and
> deprecate this old binding file.

Looking at arch/arm/mach-bcm/bcm63xx_pmb.c made me realize this design may be
actually more complex than that.


*** PMB ***

It seems like PMB Master is reset controller on its own. Even though we don't
have actual driver for the (documented) "brcm,bcm63138-pmb" binding, arch code
treates it like a reset.

So it seems that a single PMB is capable at least of:
1. Resetting ARM CPU core (id by 8b addr)
2. Resetting devices (id by 8b addr) by (en|dis)abling zones

Above operations are performed in a different (programming) ways.


*** PMC ***

PMC seems to be a reset controller with firmware capable at least of:
1. Resetting devices (id by 8b addr) by (en|dis)abling zones

that fallback to using PMB blocks when needed / required.


*** Bindings ***

So I started wondering if following bindings were not more applicable:

pmb0: reset-controller@4800c0 {
	compatible = "brcm,bcm4908-pmb";
	reg = <0x802800c0 0x10>;
	#reset-cells = <2>;
};

pmb1: reset-controller@4800e0 {
	compatible = "brcm,bcm4908-pmb";
	reg = <0x802800e0 0x10>;
	#reset-cells = <2>;
};

pmc: reset-controller@80200000 {
	compatible = "brcm,bcm4908-pmc";
	reg = <0x80200000 0x5000>;
	brcm,syscon-misc = <&misc>;
	pmb-resets = <BUS_ID_0 &pmb0>, <BUS_ID_1 &pmb1>;
	#reset-cells = <2>;
};

cpu@1 {
	resets = <&pmb0 PMB_ARM 4>; /* ARM CPU */
}

foo {
	resets = <&pmb1 PMB_DEVICE 17>; /* Reset USB using PMB directly */
}

foo {
	resets = <&pmc BUS_ID_1 17>; /* Reset USB using PMC */
}


Then we would have:

1. PMB driver handling PMB_ARM and PMB_DEVICE with 2 different code paths
2. PMC driver falling back to PMB when needed / required



Florian: can you have an extra look at it please and review proposed design,
comment on it?
