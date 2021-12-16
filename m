Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BDDB6476B16
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 08:36:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232209AbhLPHg0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 02:36:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229664AbhLPHg0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 02:36:26 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEDCFC061574;
        Wed, 15 Dec 2021 23:36:25 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id A4E97B822E2;
        Thu, 16 Dec 2021 07:36:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 583D1C36AE4;
        Thu, 16 Dec 2021 07:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1639640182;
        bh=TM+T6EuiqaJJum/Ho30ovNE8Im4W9+iJf6EfC1nQThc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gjQEjTkbXDAR0YKsqBE2OJMy+N/7ViWTbVf9HxJIAk14clQf3abRW1QbbUF57NkAM
         rs3Xn5ToEx9lZEKQ4u6soLNSHqXoyhNkjMa7ReDvJdZbA5kMG6B3+oy4t6lKShqbcT
         ElVjUXtHqPJJA9qHpseK/A1kqeqZ30hgk04md7so=
Date:   Thu, 16 Dec 2021 08:36:14 +0100
From:   Greg KH <gregkh@linuxfoundation.org>
To:     Tony Huang <tonyhuang.sunplus@gmail.com>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linuxkernel@vger.kernel.org, derek.kiernan@xilinx.com,
        dragan.cvetic@xilinx.com, arnd@arndb.de, wells.lu@sunplus.com,
        tonyhuang@sunplus.com
Subject: Re: [PATCH v4 2/2] misc: Add iop driver for Sunplus SP7021
Message-ID: <YbrsbtBgUDnjZJ/o@kroah.com>
References: <cover.1639557112.git.tonyhuang.sunplus@gmail.com>
 <c3a3b64c38807b2f344c3df500eb4c60b885eadf.1639557112.git.tonyhuang.sunplus@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c3a3b64c38807b2f344c3df500eb4c60b885eadf.1639557112.git.tonyhuang.sunplus@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 16, 2021 at 09:38:16AM +0800, Tony Huang wrote:
> IOP (IO Processor) embedded inside SP7021 which is used as
> Processor for I/O control, RTC wake-up and cooperation with
> CPU & PMC in power management purpose.
> The IOP core is DQ8051, so also named IOP8051,
> it supports dedicated JTAG debug pins which share with SP7021.
> In standby mode operation, the power spec reach 400uA.
> 
> Signed-off-by: Tony Huang <tonyhuang.sunplus@gmail.com>
> ---
> Changes in v4:
>  - Addressed comments from Arnd Bergmann.
>  - Addressed comments from Greg KH.
> 
>  Documentation/ABI/testing/sysfs-platform-soc@B |  22 ++
>  MAINTAINERS                                    |   2 +
>  drivers/misc/Kconfig                           |  12 +
>  drivers/misc/Makefile                          |   1 +
>  drivers/misc/sunplus_iop.c                     | 496 +++++++++++++++++++++++++
>  5 files changed, 533 insertions(+)
>  create mode 100644 Documentation/ABI/testing/sysfs-platform-soc@B
>  create mode 100644 drivers/misc/sunplus_iop.c
> 
> diff --git a/Documentation/ABI/testing/sysfs-platform-soc@B b/Documentation/ABI/testing/sysfs-platform-soc@B
> new file mode 100644
> index 0000000..17d838e
> --- /dev/null
> +++ b/Documentation/ABI/testing/sysfs-platform-soc@B
> @@ -0,0 +1,22 @@
> +What:		/sys/devices/platform/soc@B/9c000400.iop/sp_iop_state1
> +Date:		December 2021
> +KernelVersion:	5.15
> +Contact:	Tony Huang <tonyhuang.sunplus@gmail.com>
> +Description:
> +		SP7021 has three power states:S0, S1 and S3.
> +		S0:Default domain is on. IOP domain is on. AO domain is on.
> +		S1:Default domain is off. IOP domain is on. AO domain is on.
> +		S3:Default domain is off. IOP domain is off. AO domain is on.
> +		Read sysfs sp_iop_s1mode, system enter S1 mode.
> +
> +What:		/sys/devices/platform/soc@B/9c000400.iop/sp_iop_mode
> +Date:		December 2021
> +KernelVersion:	5.15
> +Contact:	Tony Huang <tonyhuang.sunplus@gmail.com>
> +Description:
> +		Operation mode of IOP is switched to standby mode by writing
> +		"1" to sysfs.
> +		Operation mode of IOP is switched to normal mode by writing
> +		"0" to sysfs.
> +
> +
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 071b5e6..614b7ff 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -17948,7 +17948,9 @@ F:	drivers/net/ethernet/dlink/sundance.c
>  SUNPLUS IOP DRIVER
>  M:	Tony Huang <tonyhuang.sunplus@gmail.com>
>  S:	Maintained
> +F:	Documentation/ABI/testing/sysfs-platform-soc@B
>  F:	Documentation/devicetree/bindings/misc/sunplu-iop.yaml
> +F:	drivers/misc/sunplus_iop.c
>  
>  SUPERH
>  M:	Yoshinori Sato <ysato@users.sourceforge.jp>
> diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> index 0f5a49f..f19533b 100644
> --- a/drivers/misc/Kconfig
> +++ b/drivers/misc/Kconfig
> @@ -470,6 +470,18 @@ config HISI_HIKEY_USB
>  	  switching between the dual-role USB-C port and the USB-A host ports
>  	  using only one USB controller.
>  
> +config SUNPLUS_IOP
> +	tristate "Sunplus IOP support"
> +	default ARCH_SUNPLUS
> +	help
> +	  Sunplus I/O processor (8051) driver.
> +	  Processor for I/O control, RTC wake-up proceduce management,
> +	  and cooperation with CPU&PMC in power management.
> +	  Need Install DQ8051, The DQ8051 bin file generated by keil C.
> +
> +	  This driver can also be built as a module.  If so, the module
> +	  will be called ad525x_dpot.
> +
>  source "drivers/misc/c2port/Kconfig"
>  source "drivers/misc/eeprom/Kconfig"
>  source "drivers/misc/cb710/Kconfig"
> diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
> index a086197..eafeab6 100644
> --- a/drivers/misc/Makefile
> +++ b/drivers/misc/Makefile
> @@ -52,6 +52,7 @@ obj-$(CONFIG_DW_XDATA_PCIE)	+= dw-xdata-pcie.o
>  obj-$(CONFIG_PCI_ENDPOINT_TEST)	+= pci_endpoint_test.o
>  obj-$(CONFIG_OCXL)		+= ocxl/
>  obj-$(CONFIG_BCM_VK)		+= bcm-vk/
> +obj-$(CONFIG_SUNPLUS_IOP)	+= sunplus_iop.o
>  obj-y				+= cardreader/
>  obj-$(CONFIG_PVPANIC)   	+= pvpanic/
>  obj-$(CONFIG_HABANA_AI)		+= habanalabs/
> diff --git a/drivers/misc/sunplus_iop.c b/drivers/misc/sunplus_iop.c
> new file mode 100644
> index 0000000..8c4c870
> --- /dev/null
> +++ b/drivers/misc/sunplus_iop.c
> @@ -0,0 +1,496 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * The IOP driver for Sunplus SP7021
> + *
> + * Copyright (C) 2021 Sunplus Technology Inc.
> + *
> + * All Rights Reserved.
> + */
> +
> +#include <linux/module.h>
> +#include <linux/miscdevice.h>
> +#include <linux/of_platform.h>
> +#include <linux/firmware.h>
> +#include <linux/dma-mapping.h>
> +#include <linux/of_address.h>
> +#include <linux/delay.h>
> +#include <linux/iopoll.h>
> +
> +enum IOP_Status_e {
> +	IOP_SUCCESS,                /* successful */
> +	IOP_ERR_IOP_BUSY,           /* IOP is busy */
> +};
> +
> +struct regs_moon0 {
> +	u32 stamp;         /* 00 */
> +	u32 clken[10];     /* 01~10 */
> +	u32 gclken[10];    /* 11~20 */
> +	u32 reset[10];     /* 21~30 */
> +	u32 sfg_cfg_mode;  /* 31 */
> +};
> +
> +struct regs_iop {
> +	u32 iop_control;/* 00 */
> +	u32 iop_reg1;/* 01 */
> +	u32 iop_bp;/* 02 */
> +	u32 iop_regsel;/* 03 */
> +	u32 iop_regout;/* 04 */
> +	u32 iop_reg5;/* 05 */
> +	u32 iop_resume_pcl;/* 06 */
> +	u32 iop_resume_pch;/* 07 */
> +	u32 iop_data0;/* 08 */
> +	u32 iop_data1;/* 09 */
> +	u32 iop_data2;/* 10 */
> +	u32 iop_data3;/* 11 */
> +	u32 iop_data4;/* 12 */
> +	u32 iop_data5;/* 13 */
> +	u32 iop_data6;/* 14 */
> +	u32 iop_data7;/* 15 */
> +	u32 iop_data8;/* 16 */
> +	u32 iop_data9;/* 17 */
> +	u32 iop_data10;/* 18 */
> +	u32 iop_data11;/* 19 */
> +	u32 iop_base_adr_l;/* 20 */
> +	u32 iop_base_adr_h;/* 21 */
> +	u32 memory_bridge_control;/* 22 */
> +	u32 iop_regmap_adr_l;/* 23 */
> +	u32 iop_regmap_adr_h;/* 24 */
> +	u32 iop_direct_adr;/* 25*/
> +	u32 reserved[6];/* 26~31 */
> +};
> +
> +struct regs_iop_pmc {
> +	u32 PMC_TIMER;/* 00 */
> +	u32 PMC_CTRL;/* 01 */
> +	u32 XTAL27M_PASSWORD_I;/* 02 */
> +	u32 XTAL27M_PASSWORD_II;/* 03 */
> +	u32 XTAL32K_PASSWORD_I;/* 04 */
> +	u32 XTAL32K_PASSWORD_II;/* 05 */
> +	u32 CLK27M_PASSWORD_I;/* 06 */
> +	u32 CLK27M_PASSWORD_II;/* 07 */
> +	u32 PMC_TIMER2;/* 08 */
> +	u32 reserved[23];/* 9~31 */
> +};
> +
> +#define NORMAL_CODE_MAX_SIZE 0X1000
> +#define STANDBY_CODE_MAX_SIZE 0x4000
> +struct sp_iop {
> +	struct miscdevice dev;			// iop device
> +	struct mutex write_lock;
> +	void __iomem *iop_regs;
> +	void __iomem *pmc_regs;
> +	void __iomem *moon0_regs;
> +	int irq;
> +	unsigned char iop_normal_code[NORMAL_CODE_MAX_SIZE];
> +	unsigned char iop_standby_code[STANDBY_CODE_MAX_SIZE];
> +	resource_size_t iop_mem_start;
> +	resource_size_t iop_mem_size;
> +	bool mode;
> +};
> +
> +static void sp_iop_normal_mode(struct sp_iop *iop)
> +{
> +	struct regs_iop *p_iop_reg = (struct regs_iop *)iop->iop_regs;
> +	struct regs_moon0 *p_moon0_reg = (struct regs_moon0 *)iop->moon0_regs;
> +	void __iomem *iop_kernel_base;
> +	unsigned int reg;
> +
> +	iop_kernel_base = ioremap(iop->iop_mem_start, NORMAL_CODE_MAX_SIZE);
> +	memset(iop_kernel_base, 0, NORMAL_CODE_MAX_SIZE);
> +	memcpy(iop_kernel_base, iop->iop_normal_code, NORMAL_CODE_MAX_SIZE);
> +
> +	writel(0x00100010, &p_moon0_reg->clken[0]);
> +
> +	reg = readl(&p_iop_reg->iop_control);
> +	reg |= 0x01;
> +	writel(reg, &p_iop_reg->iop_control);
> +
> +	reg = readl(&p_iop_reg->iop_control);
> +	reg &= ~(0x8000);
> +	writel(reg, &p_iop_reg->iop_control);
> +
> +	reg = readl(&p_iop_reg->iop_control);
> +	reg |= 0x0200;//disable watchdog event reset IOP
> +	writel(reg, &p_iop_reg->iop_control);
> +
> +	reg = (iop->iop_mem_start & 0xFFFF);
> +	writel(reg, &p_iop_reg->iop_base_adr_l);
> +	reg	= (iop->iop_mem_start >> 16);
> +	writel(reg, &p_iop_reg->iop_base_adr_h);
> +
> +	reg = readl(&p_iop_reg->iop_control);
> +	reg &= ~(0x01);
> +	writel(reg, &p_iop_reg->iop_control);
> +	iop->mode = 0;
> +}
> +
> +static void sp_iop_standby_mode(struct sp_iop *iop)
> +{
> +	struct regs_iop *p_iop_reg = (struct regs_iop *)iop->iop_regs;
> +	struct regs_moon0 *p_moon0_reg = (struct regs_moon0 *)iop->moon0_regs;
> +	void __iomem *iop_kernel_base;
> +	unsigned long reg;
> +
> +	iop_kernel_base = ioremap(iop->iop_mem_start, STANDBY_CODE_MAX_SIZE);
> +	memset(iop_kernel_base, 0, STANDBY_CODE_MAX_SIZE);
> +	memcpy(iop_kernel_base, iop->iop_standby_code, STANDBY_CODE_MAX_SIZE);
> +
> +	writel(0x00100010, &p_moon0_reg->clken[0]);
> +
> +	reg = readl(&p_iop_reg->iop_control);
> +	reg |= 0x01;
> +	writel(reg, &p_iop_reg->iop_control);
> +
> +	reg = readl(&p_iop_reg->iop_control);
> +	reg &= ~(0x8000);
> +	writel(reg, &p_iop_reg->iop_control);
> +
> +	reg = readl(&p_iop_reg->iop_control);
> +	reg |= 0x0200;//disable watchdog event reset IOP
> +	writel(reg, &p_iop_reg->iop_control);
> +
> +	reg = (iop->iop_mem_start & 0xFFFF);
> +	writel(reg, &p_iop_reg->iop_base_adr_l);
> +	reg = (iop->iop_mem_start >> 16);
> +	writel(reg, &p_iop_reg->iop_base_adr_h);
> +
> +	reg = readl(&p_iop_reg->iop_control);
> +	reg &= ~(0x01);
> +	writel(reg, &p_iop_reg->iop_control);
> +	iop->mode = 1;
> +}
> +
> +#define IOP_READY	0x4
> +#define RISC_READY	0x8
> +static int sp_iop_shutdown(struct device *dev, struct sp_iop *iop)
> +{
> +	struct regs_iop *p_iop_reg = (struct regs_iop *)iop->iop_regs;
> +	struct regs_moon0 *p_moon0_reg = (struct regs_moon0 *)iop->moon0_regs;
> +	struct regs_iop_pmc *p_iop_pmc_reg = (struct regs_iop_pmc *)iop->pmc_regs;
> +	unsigned int reg;
> +	int ret, value;
> +
> +	writel(0x00100010, &p_moon0_reg->clken[0]);
> +
> +	reg = readl(&p_iop_reg->iop_control);
> +	reg &= ~(0x8000);
> +	writel(reg, &p_iop_reg->iop_control);
> +
> +	reg = readl(&p_iop_reg->iop_control);
> +	reg |= 0x1;
> +	writel(reg, &p_iop_reg->iop_control);
> +
> +	//PMC set
> +	writel(0x00010001, &p_iop_pmc_reg->PMC_TIMER);
> +	reg = readl(&p_iop_pmc_reg->PMC_CTRL);
> +	reg |= 0x23;// disable system reset PMC, enalbe power down 27M, enable gating 27M
> +	writel(reg, &p_iop_pmc_reg->PMC_CTRL);
> +
> +	writel(0x55aa00ff, &p_iop_pmc_reg->XTAL27M_PASSWORD_I);
> +	writel(0x00ff55aa, &p_iop_pmc_reg->XTAL27M_PASSWORD_II);
> +	writel(0xaa00ff55, &p_iop_pmc_reg->XTAL32K_PASSWORD_I);
> +	writel(0xff55aa00, &p_iop_pmc_reg->XTAL32K_PASSWORD_II);
> +	writel(0xaaff0055, &p_iop_pmc_reg->CLK27M_PASSWORD_I);
> +	writel(0x5500aaff, &p_iop_pmc_reg->CLK27M_PASSWORD_II);
> +	writel(0x01000100, &p_iop_pmc_reg->PMC_TIMER2);
> +
> +	//IOP Hardware IP reset
> +	reg = readl(&p_moon0_reg->reset[0]);
> +	reg |= 0x10;
> +	writel(reg, (&p_moon0_reg->reset[0]));
> +	reg &= ~(0x10);
> +	writel(reg, (&p_moon0_reg->reset[0]));
> +
> +	writel(0x00ff0085, (iop->moon0_regs + 32 * 4 * 1 + 4 * 1));
> +
> +	reg = readl(iop->moon0_regs + 32 * 4 * 1 + 4 * 2);
> +	reg |= 0x08000800;
> +	writel(reg, (iop->moon0_regs + 32 * 4 * 1 + 4 * 2));
> +
> +	reg = readl(&p_iop_reg->iop_control);
> +	reg |= 0x0200;//disable watchdog event reset IOP
> +	writel(reg, &p_iop_reg->iop_control);
> +
> +	reg = (iop->iop_mem_start & 0xFFFF);
> +	writel(reg, &p_iop_reg->iop_base_adr_l);
> +	reg = (iop->iop_mem_start >> 16);
> +	writel(reg, &p_iop_reg->iop_base_adr_h);
> +
> +	reg = readl(&p_iop_reg->iop_control);
> +	reg &= ~(0x01);
> +	writel(reg, &p_iop_reg->iop_control);
> +
> +	ret = readl_poll_timeout(&p_iop_reg->iop_data2, value,
> +				 (value & IOP_READY) == IOP_READY, 1000, 10000);
> +	if (ret) {
> +		dev_err(dev, "timed out\n");
> +		return ret;
> +	}
> +
> +	writel(RISC_READY, &p_iop_reg->iop_data2);
> +	writel(0x00, &p_iop_reg->iop_data5);
> +	writel(0x60, &p_iop_reg->iop_data6);
> +
> +	ret = readl_poll_timeout(&p_iop_reg->iop_data7, value,
> +				 value == 0xaaaa, 1000, 10000);
> +	if (ret) {
> +		dev_err(dev, "timed out\n");
> +		return ret;
> +	}
> +
> +	writel(0xdd, &p_iop_reg->iop_data1);//8051 bin file call Ultra low function.
> +	mdelay(10);
> +	return 0;
> +}
> +
> +static int sp_iop_s1mode(struct device *dev, struct sp_iop *iop)
> +{
> +	struct regs_iop *p_iop_reg = (struct regs_iop *)iop->iop_regs;
> +	int ret, value;
> +
> +	ret = readl_poll_timeout(&p_iop_reg->iop_data2, value,
> +				 (value & IOP_READY) == IOP_READY, 1000, 10000);
> +	if (ret) {
> +		dev_err(dev, "timed out\n");
> +		return ret;
> +	}
> +
> +	writel(RISC_READY, &p_iop_reg->iop_data2);
> +	writel(0x00, &p_iop_reg->iop_data5);
> +	writel(0x60, &p_iop_reg->iop_data6);
> +
> +	ret = readl_poll_timeout(&p_iop_reg->iop_data7, value,
> +				 value == 0xaaaa, 1000, 10000);
> +	if (ret) {
> +		dev_err(dev, "timed out\n");
> +		return ret;
> +	}
> +
> +	writel(0xee, &p_iop_reg->iop_data1);//8051 bin file call S1_mode function.
> +	mdelay(10);
> +	return 0;
> +}
> +
> +static ssize_t sp_iop_state1_show(struct device *dev, struct device_attribute *attr, char *buf)
> +{
> +	struct sp_iop *iop = dev_get_drvdata(dev);
> +	ssize_t len = 0;
> +
> +	sp_iop_standby_mode(iop);
> +	mdelay(10);
> +	sp_iop_s1mode(dev, iop);
> +	return len;
> +}

This function is not showing anything.

> +
> +static ssize_t sp_iop_state1_store(struct device *dev, struct device_attribute *attr,
> +				   const char *buf, size_t count)
> +{
> +	ssize_t len = 0;
> +
> +	return len;
> +}

Why do you have an empty store function?

> +
> +static ssize_t sp_iop_mode_show(struct device *dev, struct device_attribute *attr, char *buf)
> +{
> +	struct sp_iop *iop = dev_get_drvdata(dev);
> +	ssize_t len = 0;
> +
> +	if (iop->mode == 0)
> +		dev_info(dev, "iop_normal_mode\n");
> +	else if (iop->mode == 1)
> +		dev_info(dev, "iop_standby_mode\n");
> +	return len;
> +}

Again, this is not returning anything in sysfs.

How was this tested???

> +static ssize_t sp_iop_mode_store(struct device *dev, struct device_attribute *attr,
> +				 const char *buf, size_t count)
> +{
> +	struct sp_iop *iop = dev_get_drvdata(dev);
> +	unsigned char ret = count;
> +
> +	if (buf[0] == '0') {
> +		sp_iop_normal_mode(iop);
> +		dev_info(dev, "Switch to normal mode.\n");
> +	} else if (buf[0] == '1') {
> +		sp_iop_standby_mode(iop);
> +		dev_info(dev, "Switch to standby mode.\n");
> +	} else {
> +		dev_info(dev, "echo 0 or 1 mode\n");
> +		dev_info(dev, "0:normal mode\n");
> +		dev_info(dev, "1:standby mode\n");
> +	}
> +	return ret;
> +}

dev_info() is NOT for stuff like this at all.  You do not display a
"help" file or anything else like that in this way.

Please use sysfs correctly.

Also, there is a function to read 1/0 from sysfs, please use that.

> +
> +static DEVICE_ATTR_RW(sp_iop_state1);
> +static DEVICE_ATTR_RW(sp_iop_mode);

These are not really read/write files, please make them the correct
mode.

> +static int  sp_iop_get_normal_code(struct device *dev, struct sp_iop *iop)
> +{
> +	const struct firmware *fw;
> +	static const char file[] = "normal.bin";
> +	unsigned int err, i;
> +
> +	err = request_firmware(&fw, file, dev);
> +	if (err) {
> +		dev_err(dev, "get bin file error\n");
> +		return err;
> +	}
> +
> +	for (i = 0; i < NORMAL_CODE_MAX_SIZE; i++) {
> +		char temp;
> +
> +		temp = fw->data[i];
> +		iop->iop_normal_code[i] = temp;
> +	}
> +	release_firmware(fw);
> +	return err;
> +}
> +
> +static int  sp_iop_get_standby_code(struct device *dev, struct sp_iop *iop)
> +{
> +	const struct firmware *fw;
> +	static const char file[] = "standby.bin";
> +	unsigned int err, i;
> +
> +	err = request_firmware(&fw, file, dev);
> +	if (err) {
> +		dev_err(dev, "get bin file error\n");
> +		return err;
> +	}
> +
> +	for (i = 0; i < STANDBY_CODE_MAX_SIZE; i++) {
> +		char temp;
> +
> +		temp = fw->data[i];
> +		iop->iop_standby_code[i] = temp;
> +	}
> +	release_firmware(fw);
> +	return err;
> +}
> +
> +static int sp_iop_get_resources(struct platform_device *pdev, struct sp_iop *p_sp_iop_info)
> +{
> +	struct resource *r;
> +
> +	r = platform_get_resource_byname(pdev, IORESOURCE_MEM, "iop");
> +	p_sp_iop_info->iop_regs = devm_ioremap_resource(&pdev->dev, r);
> +	if (IS_ERR(p_sp_iop_info->iop_regs)) {
> +		dev_err(&pdev->dev, "ioremap fail\n");
> +		return PTR_ERR(p_sp_iop_info->iop_regs);
> +	}
> +
> +	r = platform_get_resource_byname(pdev, IORESOURCE_MEM, "iop_pmc");
> +	p_sp_iop_info->pmc_regs = devm_ioremap_resource(&pdev->dev, r);
> +	if (IS_ERR(p_sp_iop_info->pmc_regs)) {
> +		dev_err(&pdev->dev, "ioremap fail\n");
> +		return PTR_ERR(p_sp_iop_info->pmc_regs);
> +	}
> +
> +	r = platform_get_resource_byname(pdev, IORESOURCE_MEM, "moon0");
> +	p_sp_iop_info->moon0_regs = devm_ioremap_resource(&pdev->dev, r);
> +	if (IS_ERR(p_sp_iop_info->moon0_regs)) {
> +		dev_err(&pdev->dev, "ioremap fail\n");
> +		return PTR_ERR(p_sp_iop_info->moon0_regs);
> +	}
> +	return IOP_SUCCESS;
> +}
> +
> +static int sp_iop_platform_driver_probe(struct platform_device *pdev)
> +{
> +	int ret = -ENXIO;
> +	int rc;
> +	struct sp_iop *iop;
> +	struct device_node *memnp;
> +	struct resource mem_res;
> +
> +	iop = devm_kzalloc(&pdev->dev, sizeof(struct sp_iop), GFP_KERNEL);
> +	if (!iop) {
> +		ret	= -ENOMEM;
> +		goto fail_kmalloc;
> +	}
> +	/* init */
> +	mutex_init(&iop->write_lock);
> +	/* register device */
> +	iop->dev.name  = "sp_iop";
> +	iop->dev.minor = MISC_DYNAMIC_MINOR;
> +	ret = misc_register(&iop->dev);

Why do you need a misc device at all?  What are you using it for?  You
do not have any file handling at all.

This driver seems very very odd, are you SURE you are actually using it?

thanks,

greg k-h
