Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AED942ACEA7
	for <lists+devicetree@lfdr.de>; Tue, 10 Nov 2020 05:52:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729706AbgKJEwj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Nov 2020 23:52:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729454AbgKJEwh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Nov 2020 23:52:37 -0500
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E8E7C0613CF
        for <devicetree@vger.kernel.org>; Mon,  9 Nov 2020 20:52:34 -0800 (PST)
Received: by mail-pl1-x642.google.com with SMTP id y22so844972plr.6
        for <devicetree@vger.kernel.org>; Mon, 09 Nov 2020 20:52:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wNjmcRBPGppyozmQzrbW6h4MuBmkYwEgzr+RJuZ0GHw=;
        b=pfTtSy5KVCo+M06sHJIjLBy4d9VzbQ3h1mjUjpyMcgUsW4W4uqKsTGs7LM9k19paia
         EgKVeckt96eG/FcNxLMtjT4fTdTHa0C6vDo0la4IUEmVqdbyHtqc+afp5tTm4+JGP0Lk
         BIk7g+A4l8p2m4xbp67fOIsdjHwAC4K5BZ0vcFREv+GyA/Lw/4zibtb8qJAar2+33z8D
         TVZvzixZghsAHncwuUjZsnClONYAJgP8QrIfdHe6t/lvNymk86316wiinToYJ2NL2EOi
         FRjc5DTaaocQ5/5CpqFvI9xRiUhElt+mezw4w2R0lGCxeQw+98oGh4fWdiKm2yVS8ss3
         kq0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wNjmcRBPGppyozmQzrbW6h4MuBmkYwEgzr+RJuZ0GHw=;
        b=I358V9+yC3OZgM19HFI/rJJOxsO3Rwwr2Q98pbGKlBi3ysdwsd+rUHNTX5pK285Oq0
         HR//GXaLbKeSDzH+/OeefDH0saGz25ZI3V1Fzp2P6ca5owTy/TNtxlqJdyXUOHKYOMtr
         dPAwNDlkiLcpFEBt4HihL3NKmubIZWvoIiZtmKwO+mIFAJ7Mlvv5S41blQCE/rDX9Vtk
         5T/kZR5lzd7XYKxTpuvSXBo00M+Uscxfnqov4mG3jBQUIQa2qLB+2nCn7wiTH0rUUATE
         bfPSKuQpgntkm/aNjsfs0Z9gcBR1Au+QVFUExbLsnrfD/hZj0SXNU+CvyfzqB/KjAH18
         4jqw==
X-Gm-Message-State: AOAM5324+cQAiJvJebF14YI5j5jaTdN3rYGb1jZ2/yWztn6zhG1ooDii
        4pzPeIJ6SkFxC8pSrdbtpiI=
X-Google-Smtp-Source: ABdhPJzfVf0+TGk8mrBLKkaA51KjK3h2lYdgQOQmlJF/FCX1YzH7qdozDCes29LeSm7vLa6KmaECsQ==
X-Received: by 2002:a17:902:7487:b029:d6:c03b:bce4 with SMTP id h7-20020a1709027487b02900d6c03bbce4mr15663237pll.36.1604983954359;
        Mon, 09 Nov 2020 20:52:34 -0800 (PST)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
        by smtp.gmail.com with ESMTPSA id i2sm1227009pjl.15.2020.11.09.20.52.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 20:52:33 -0800 (PST)
Subject: Re: [PATCH 2/2] reset: brcm-pmc: add driver for Broadcom's PMC
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20201109163519.32605-1-zajec5@gmail.com>
 <20201109163519.32605-2-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <e89b4601-0c52-db46-4406-d9ac28687e8f@gmail.com>
Date:   Mon, 9 Nov 2020 20:52:32 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.4.1
MIME-Version: 1.0
In-Reply-To: <20201109163519.32605-2-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 11/9/2020 8:35 AM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Power Management Controller can be found on BCM4908 and is needed to
> power on SoC blocks. It can be controlled using:
> 1. Firmware calls
> 2. Direct regs access
> 
> Only the later method is supported by this initial driver. It was
> successfully tested on BCM4908 using HCD controllers.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

[snip]

> +#define PMBM_CTRL				0x00
> +#define  PMC_PMBM_START				(1 << 31)
> +#define  PMC_PMBM_TIMEOUT			(1 << 30)
> +#define  PMC_PMBM_SLAVE_ERR			(1 << 29)
> +#define  PMC_PMBM_BUSY				(1 << 28)
> +#define  PMC_PMBM_READ				(0 << 20)
> +#define  PMC_PMBM_WRITE				(1 << 20)
> +#define PMBM_WR_DATA				0x04
> +#define PMBM_TIMEOUT				0x08
> +#define PMBM_RD_DATA				0x0c

Can you re-use the definitions from include/linux/reset/bcm63xx_pmb.h,
you have the same constant names.

> +
> +#define BPCM_ID_REG				0x00
> +#define BPCM_CAPABILITIES			0x04
> +#define BPCM_CONTROL				0x08
> +#define BPCM_STATUS				0x0c
> +#define BPCM_ROSC_CONTROL			0x10
> +#define BPCM_ROSC_THRESH_H			0x14
> +#define BPCM_ROSC_THRESHOLD_BCM6838		0x14
> +#define BPCM_ROSC_THRESH_S			0x18
> +#define BPCM_ROSC_COUNT_BCM6838			0x18
> +#define BPCM_ROSC_COUNT				0x1c
> +#define BPCM_PWD_CONTROL_BCM6838		0x1c
> +#define BPCM_PWD_CONTROL			0x20
> +#define BPCM_SR_CONTROL_BCM6838			0x20
> +#define BPCM_PWD_ACCUM_CONTROL			0x24
> +#define BPCM_SR_CONTROL				0x28
> +#define BPCM_GLOBAL_CONTROL			0x2c
> +#define BPCM_MISC_CONTROL			0x30
> +#define BPCM_MISC_CONTROL2			0x34
> +#define BPCM_SGPHY_CNTL				0x38
> +#define BPCM_SGPHY_STATUS			0x3c
> +#define BPCM_ZONE0				0x40
> +#define  BPCM_ZONE_CONTROL			0x00
> +#define  BPCM_ZONE_CONFIG1			0x04
> +#define  BPCM_ZONE_CONFIG2			0x08
> +#define  BPCM_ZONE_FREQ_SCALAR_CONTROL		0x0c
> +#define  BPCM_ZONE_SIZE				0x10
> +
> +enum brcm_pmc_chipset {
> +	BCM4908,
> +	BCM6848,
> +	BCM6858,
> +};
> +
> +struct brcm_pmc_data {
> +	enum brcm_pmc_chipset chipset;
> +	int misc_strap_bus_reg;
> +	int misc_strap_bus_pmc_rom_boot_bit;
> +};
> +
> +static const struct brcm_pmc_data brcm_pmc_4908_data = {
> +	.chipset				= BCM4908,
> +	.misc_strap_bus_reg			= 0x00,
> +	.misc_strap_bus_pmc_rom_boot_bit	= BIT(11),
> +};
> +
> +union bpcm_capabilities {
> +	struct {
> +		int num_zones:8;
> +		int sr_reg_bits:8;
> +		int pllType:2;
> +		int reserved0:1;
> +		int ubus:1;
> +		int reserved1:12;
> +	} bits;
> +	u32 raw32;
> +} __attribute__((__packed__));

This is not going to work well if we extend this driver to support the
BCM63xx DSL SoCs which are done by the same engineering group within
Broadcom. Can you convert that to bits/masks instead such that this
becomes endian independent?

> +
> +union bpcm_zone_control {
> +	struct {
> +		u32 manual_clk_en:1;
> +		u32 manual_reset_ctl:1;
> +		u32 freq_scale_used:1;		/* R/O */
> +		u32 dpg_capable:1;		/* R/O */
> +		u32 manual_mem_pwr:2;
> +		u32 manual_iso_ctl:1;
> +		u32 manual_ctl:1;
> +		u32 dpg_ctl_en:1;
> +		u32 pwr_dn_req:1;
> +		u32 pwr_up_req:1;
> +		u32 mem_pwr_ctl_en:1;
> +		u32 blk_reset_assert:1;
> +		u32 mem_stby:1;
> +		u32 reserved:5;
> +		u32 pwr_cntl_state:5;
> +		u32 freq_scalar_dyn_sel:1;	/* R/O */
> +		u32 pwr_off_state:1;		/* R/O */
> +		u32 pwr_on_state:1;		/* R/O */
> +		u32 pwr_good:1;			/* R/O */
> +		u32 dpg_pwr_state:1;		/* R/O */
> +		u32 mem_pwr_state:1;		/* R/O */
> +		u32 iso_state:1;		/* R/O */
> +		u32 reset_state:1;		/* R/O */
> +	} bits;
> +	u32 raw32;
> +} __attribute__((__packed__));
> +
> +struct brcm_pmc {
> +	const struct brcm_pmc_data *data;
> +	void __iomem *base;
> +	struct regmap *misc;
> +	struct regmap *procmon;
> +	struct device *dev;
> +	struct reset_controller_dev rcdev;
> +	bool direct;
> +	bool little_endian;
> +};
> +
> +static DEFINE_SPINLOCK(lock);

You have a platform device, can you store the lock there instead of
having a global?

> +
> +#define cpu_to_dev32(pmc, val) \
> +	((pmc)->little_endian ? cpu_to_le32(val) : cpu_to_be32(val))

This would probably be better written as a static inline helper, and
maybe something like this:

static inline u32 brcm_pmc_readl(struct brcm_pmc *pmc, u8 offset)
{
	if (pmc->little_endian)
		return ioread32(pmc->base + offset);
	else
		return ioread32_be(pmc->base + offset);
}

> +
> +#define dev32_to_cpu(pmc, val) \
> +	((pmc)->little_endian ? le32_to_cpu(val) : be32_to_cpu(val))
> +
> +static int brcm_pmc_bpcm_wait(struct brcm_pmc *pmc, int bus)
> +{
> +	unsigned long deadline = jiffies + usecs_to_jiffies(1000);
> +	int pmbm = PROCMON_PMBM + bus * PROCMON_PMBM_SIZE;
> +	u32 val;
> +
> +	do {
> +		regmap_read(pmc->procmon, pmbm + PMBM_CTRL, &val);
> +		if (!(val & PMC_PMBM_START))
> +			return 0;
> +		cpu_relax();
> +		udelay(10);
> +	} while (!time_after_eq(jiffies, deadline));
> +
> +	dev_err(pmc->dev, "Timeout waiting for the BPCM\n");

Can you use include/linux/reset/bcm63xx_pmb.h again here and check
arch/arm/mach-bcm/bcm63xx_pmb.c for how it is used.

> +
> +	return -EBUSY;
> +}
> +
> +static int brcm_pmc_bpcm_read(struct brcm_pmc *pmc, u16 addr, int word_offset, u32 *val)
> +{
> +	int err = 0;
> +
> +	if (!pmc->direct) {
> +		err = -EOPNOTSUPP;

Do an early return here so you don't have to indent the block under by
one tab.

> +	} else {
> +		u8 device = addr & 0xff;
> +		u8 bus = addr >> 8;
> +		unsigned long flags;
> +		int pmbm;
> +		u32 tmp;
> +
> +		pmbm = PROCMON_PMBM + bus * PROCMON_PMBM_SIZE;
> +
> +		spin_lock_irqsave(&lock, flags);
> +
> +		/* TODO: Make sure PMBM is not busy */
> +
> +		regmap_write(pmc->procmon, pmbm + PMBM_CTRL,
> +			     PMC_PMBM_START | PMC_PMBM_READ | (device << 12) | word_offset);
> +
> +		err = brcm_pmc_bpcm_wait(pmc, bus);
> +		if (!err)
> +			err = regmap_read(pmc->procmon, pmbm + PMBM_RD_DATA, val);
> +
> +		spin_unlock_irqrestore(&lock, flags);
> +	}
> +
> +	return err;
> +}
> +
> +static int brcm_pmc_bpcm_write(struct brcm_pmc *pmc, u16 addr, int word_offset, u32 val)
> +{
> +	int err = 0;
> +
> +	if (!pmc->direct) {
> +		err = -EOPNOTSUPP;

Likewise.

[snip]

> +static int brcm_pmc_reset_xlate(struct reset_controller_dev *rcdev,
> +				const struct of_phandle_args *reset_spec)
> +{
> +	u8 device = reset_spec->args[1];
> +	u8 bus = reset_spec->args[0];
> +
> +	if (bus > 1)
> +		return -EINVAL;
> +
> +	return (bus << 8) | device;

IIRC the bus is limited to 8 bits, and the device ID certainly is
limited to 8 bits so you need to validate that before doing the
assignment otherwise you are going to see truncated values which could
be wrapped around and return some bogus reset ID combination.

You are using the same binding as
Documentation/devicetree/bindings/reset/brcm,bcm63138-pmb.txt, so maybe
you can add that compatible string into your binding document and
deprecate this old binding file.

Other than those, this looks great to me, thanks!
-- 
Florian
