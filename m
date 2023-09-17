Return-Path: <devicetree+bounces-917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFC97A3EBB
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 00:46:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 047352813C5
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 22:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FCF8F50B;
	Sun, 17 Sep 2023 22:46:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E384F33DF
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 22:46:34 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 081C4CE6
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 15:45:59 -0700 (PDT)
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 8BD4A3F546
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 22:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1694990758;
	bh=adOo4FRviXb28KWdA8otRonF2VEmbfWYur20KX0COuI=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=DdeFHPC0ciwBzDedf9uroKNRyLPMCx6+WcNih5H3i/ioSZbmc9YEtbG79vLo7Aol6
	 +BNap6W68qNzYEZvmztBXWLWT0BZnmnaMk5fO8e+b9e9yuDWg4DajY3pDN0fkoGWDj
	 HHJ7IUPp+iQyxwhV8f6l3eRrhAQOmg/oOqCGEE/nyeE9goADukKcW9YCSgZNol+FBS
	 LdAflcaknAJNhmk6VhHT4OnYLc00j+PPAUB5j2KIqVd1U1s7JBreKhSY/Hy4MhdRz+
	 ZEof8+tXSQ6/onOUPAsyI1bvc9jJMwZPWCCTxQU2Y8qpA5qXu7mjOb96Eo5NAu8x5M
	 oE9Ti2B/gNbAQ==
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-414bbfbdf37so45923301cf.1
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 15:45:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694990757; x=1695595557;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=adOo4FRviXb28KWdA8otRonF2VEmbfWYur20KX0COuI=;
        b=BNv5vGuL8nryw6FxUB6DF546dToaou8bD7KKreIZ6BVKjPfN59seTZxjfLsAGdNSVt
         6lqLuxyQUnwAFb1P4w7jNCKSjOLP+WXF4C5v+JCD1KPmwusFwFlgHb5fonbfhfLhj/tw
         ypLO0i9BzxyV+155toh1rJKjlGgCG/HzauAo4cYYsYSNnnIIUoaSw3PGC6XE89dQJ/yS
         7xiKMuD9cBqfu9tM4E+CoEREPKNJtlaEcSILabLTSULvLeEo8hH6u8Ko2aVEZ7RxRF+J
         /GVPtObobRxkmz74EDa/OPrkNUPOGexinEeOtVoHGRQDxYlAzdZ/iTYEc1WTP+xhIvZ6
         14vQ==
X-Gm-Message-State: AOJu0YxT+3JaKyf5+BE5UmTgGu5K9hrEIL4soPr+hvtUsql6IrUHbZ4T
	6FmIWvl3zK3PlzQr2cLYaCCaRM5qHiL4oc4SLAnNxuNbrCj39bNU3D/q+s1szV84v/DlYDlioaG
	Mg05E9dUkYqnmGqGMTwrTgCoWvF4t39Z42GMsOxGv+aSUCCs0SLJ6FenidTcg+lU=
X-Received: by 2002:a05:622a:1302:b0:412:2f9c:668a with SMTP id v2-20020a05622a130200b004122f9c668amr10889381qtk.57.1694990757237;
        Sun, 17 Sep 2023 15:45:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHt0cz9k7AF6FAHvF0DVOz8jPCvqc/EGwEO8ffOLxDdkWRjv6xnCIfuk1vyxEcc2JzipFIjyceX/qG9uZwUOuU=
X-Received: by 2002:a05:622a:1302:b0:412:2f9c:668a with SMTP id
 v2-20020a05622a130200b004122f9c668amr10889360qtk.57.1694990756988; Sun, 17
 Sep 2023 15:45:56 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 17 Sep 2023 15:45:56 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20230915102243.59775-8-minda.chen@starfivetech.com>
References: <20230915102243.59775-1-minda.chen@starfivetech.com> <20230915102243.59775-8-minda.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Sun, 17 Sep 2023 15:45:56 -0700
Message-ID: <CAJM55Z-wD4+TUJCsXsbgR49Zux5fuMZQmJ5bXEVW96QVNJbBFQ@mail.gmail.com>
Subject: Re: [PATCH v6 07/19] PCI: plda: Move the setup functions to pcie-plda-host.c
To: Minda Chen <minda.chen@starfivetech.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-pci@vger.kernel.org, 
	=?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mason Huo <mason.huo@starfivetech.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>, 
	Kevin Xie <kevin.xie@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Minda Chen wrote:
> Move setup functions to common pcie-plda-host.c.
>
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  drivers/pci/controller/plda/Kconfig           |  4 +
>  drivers/pci/controller/plda/Makefile          |  1 +
>  .../pci/controller/plda/pcie-microchip-host.c | 59 -------------
>  drivers/pci/controller/plda/pcie-plda-host.c  | 82 +++++++++++++++++++
>  drivers/pci/controller/plda/pcie-plda.h       |  6 ++
>  5 files changed, 93 insertions(+), 59 deletions(-)
>  create mode 100644 drivers/pci/controller/plda/pcie-plda-host.c
>
> diff --git a/drivers/pci/controller/plda/Kconfig b/drivers/pci/controller/plda/Kconfig
> index 5cb3be4fc98c..e54a82ee94f5 100644
> --- a/drivers/pci/controller/plda/Kconfig
> +++ b/drivers/pci/controller/plda/Kconfig
> @@ -3,10 +3,14 @@
>  menu "PLDA-based PCIe controllers"
>  	depends on PCI
>
> +config PCIE_PLDA_HOST
> +	bool
> +
>  config PCIE_MICROCHIP_HOST
>  	tristate "Microchip AXI PCIe controller"
>  	depends on PCI_MSI && OF
>  	select PCI_HOST_COMMON
> +	select PCIE_PLDA_HOST
>  	help
>  	  Say Y here if you want kernel to support the Microchip AXI PCIe
>  	  Host Bridge driver.
> diff --git a/drivers/pci/controller/plda/Makefile b/drivers/pci/controller/plda/Makefile
> index e1a265cbf91c..4340ab007f44 100644
> --- a/drivers/pci/controller/plda/Makefile
> +++ b/drivers/pci/controller/plda/Makefile
> @@ -1,2 +1,3 @@
>  # SPDX-License-Identifier: GPL-2.0
> +obj-$(CONFIG_PCIE_PLDA_HOST) += pcie-plda-host.o
>  obj-$(CONFIG_PCIE_MICROCHIP_HOST) += pcie-microchip-host.o
> diff --git a/drivers/pci/controller/plda/pcie-microchip-host.c b/drivers/pci/controller/plda/pcie-microchip-host.c
> index 1d253acd6bc2..ac7126b0bacf 100644
> --- a/drivers/pci/controller/plda/pcie-microchip-host.c
> +++ b/drivers/pci/controller/plda/pcie-microchip-host.c
> @@ -837,65 +837,6 @@ static int mc_pcie_init_irq_domains(struct plda_pcie_rp *port)
>  	return mc_allocate_msi_domains(port);
>  }
>
> -static void plda_pcie_setup_window(void __iomem *bridge_base_addr, u32 index,
> -				   phys_addr_t axi_addr, phys_addr_t pci_addr,
> -				   size_t size)
> -{
> -	u32 atr_sz = ilog2(size) - 1;
> -	u32 val;
> -
> -	if (index == 0)
> -		val = PCIE_CONFIG_INTERFACE;
> -	else
> -		val = PCIE_TX_RX_INTERFACE;
> -
> -	writel(val, bridge_base_addr + (index * ATR_ENTRY_SIZE) +
> -	       ATR0_AXI4_SLV0_TRSL_PARAM);
> -
> -	val = lower_32_bits(axi_addr) | (atr_sz << ATR_SIZE_SHIFT) |
> -			    ATR_IMPL_ENABLE;
> -	writel(val, bridge_base_addr + (index * ATR_ENTRY_SIZE) +
> -	       ATR0_AXI4_SLV0_SRCADDR_PARAM);
> -
> -	val = upper_32_bits(axi_addr);
> -	writel(val, bridge_base_addr + (index * ATR_ENTRY_SIZE) +
> -	       ATR0_AXI4_SLV0_SRC_ADDR);
> -
> -	val = lower_32_bits(pci_addr);
> -	writel(val, bridge_base_addr + (index * ATR_ENTRY_SIZE) +
> -	       ATR0_AXI4_SLV0_TRSL_ADDR_LSB);
> -
> -	val = upper_32_bits(pci_addr);
> -	writel(val, bridge_base_addr + (index * ATR_ENTRY_SIZE) +
> -	       ATR0_AXI4_SLV0_TRSL_ADDR_UDW);
> -
> -	val = readl(bridge_base_addr + ATR0_PCIE_WIN0_SRCADDR_PARAM);
> -	val |= (ATR0_PCIE_ATR_SIZE << ATR0_PCIE_ATR_SIZE_SHIFT);
> -	writel(val, bridge_base_addr + ATR0_PCIE_WIN0_SRCADDR_PARAM);
> -	writel(0, bridge_base_addr + ATR0_PCIE_WIN0_SRC_ADDR);
> -}
> -
> -static int plda_pcie_setup_iomems(struct pci_host_bridge *bridge,
> -				  struct plda_pcie_rp *port)
> -{
> -	void __iomem *bridge_base_addr = port->bridge_addr;
> -	struct resource_entry *entry;
> -	u64 pci_addr;
> -	u32 index = 1;
> -
> -	resource_list_for_each_entry(entry, &bridge->windows) {
> -		if (resource_type(entry->res) == IORESOURCE_MEM) {
> -			pci_addr = entry->res->start - entry->offset;
> -			plda_pcie_setup_window(bridge_base_addr, index,
> -					       entry->res->start, pci_addr,
> -					       resource_size(entry->res));
> -			index++;
> -		}
> -	}
> -
> -	return 0;
> -}
> -
>  static inline void mc_clear_secs(struct mc_pcie *port)
>  {
>  	void __iomem *ctrl_base_addr = port->axi_base_addr + MC_PCIE_CTRL_ADDR;
> diff --git a/drivers/pci/controller/plda/pcie-plda-host.c b/drivers/pci/controller/plda/pcie-plda-host.c
> new file mode 100644
> index 000000000000..f0c7636f1f64
> --- /dev/null
> +++ b/drivers/pci/controller/plda/pcie-plda-host.c
> @@ -0,0 +1,82 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * PLDA PCIe XpressRich host controller driver
> + *
> + * Copyright (C) 2023 Microchip Co. Ltd
> + *		      StarFive Co. Ltd.
> + *
> + * Author: Daire McNamara <daire.mcnamara@microchip.com>
> + * Author: Minda Chen <minda.chen@starfivetech.com>
> + */
> +
> +#include <linux/irqchip/chained_irq.h>
> +#include <linux/irqdomain.h>
> +#include <linux/msi.h>
> +#include <linux/of_address.h>
> +#include <linux/of_pci.h>
> +#include <linux/pci_regs.h>
> +#include <linux/pci-ecam.h>
> +#include <linux/platform_device.h>
> +
> +#include "pcie-plda.h"
> +
> +void plda_pcie_setup_window(void __iomem *bridge_base_addr, u32 index,
> +			    phys_addr_t axi_addr, phys_addr_t pci_addr,
> +			    size_t size)
> +{
> +	u32 atr_sz = ilog2(size) - 1;
> +	u32 val;
> +
> +	if (index == 0)
> +		val = PCIE_CONFIG_INTERFACE;
> +	else
> +		val = PCIE_TX_RX_INTERFACE;
> +
> +	writel(val, bridge_base_addr + (index * ATR_ENTRY_SIZE) +
> +	       ATR0_AXI4_SLV0_TRSL_PARAM);
> +
> +	val = lower_32_bits(axi_addr) | (atr_sz << ATR_SIZE_SHIFT) |
> +			    ATR_IMPL_ENABLE;
> +	writel(val, bridge_base_addr + (index * ATR_ENTRY_SIZE) +
> +	       ATR0_AXI4_SLV0_SRCADDR_PARAM);
> +
> +	val = upper_32_bits(axi_addr);
> +	writel(val, bridge_base_addr + (index * ATR_ENTRY_SIZE) +
> +	       ATR0_AXI4_SLV0_SRC_ADDR);
> +
> +	val = lower_32_bits(pci_addr);
> +	writel(val, bridge_base_addr + (index * ATR_ENTRY_SIZE) +
> +	       ATR0_AXI4_SLV0_TRSL_ADDR_LSB);
> +
> +	val = upper_32_bits(pci_addr);
> +	writel(val, bridge_base_addr + (index * ATR_ENTRY_SIZE) +
> +	       ATR0_AXI4_SLV0_TRSL_ADDR_UDW);
> +
> +	val = readl(bridge_base_addr + ATR0_PCIE_WIN0_SRCADDR_PARAM);
> +	val |= (ATR0_PCIE_ATR_SIZE << ATR0_PCIE_ATR_SIZE_SHIFT);

I know this code is just a straight copy, but for future cleanups are we
guaranteed that this field is always zero?

Otherwise it looks a little suspicious to do read-modify-write, but just
set the (0x25 << 1) bits without clearing the field first.

> +	writel(val, bridge_base_addr + ATR0_PCIE_WIN0_SRCADDR_PARAM);
> +	writel(0, bridge_base_addr + ATR0_PCIE_WIN0_SRC_ADDR);
> +}
> +EXPORT_SYMBOL_GPL(plda_pcie_setup_window);
> +
> +int plda_pcie_setup_iomems(struct pci_host_bridge *bridge,
> +			   struct plda_pcie_rp *port)
> +{
> +	void __iomem *bridge_base_addr = port->bridge_addr;
> +	struct resource_entry *entry;
> +	u64 pci_addr;
> +	u32 index = 1;
> +
> +	resource_list_for_each_entry(entry, &bridge->windows) {
> +		if (resource_type(entry->res) == IORESOURCE_MEM) {
> +			pci_addr = entry->res->start - entry->offset;
> +			plda_pcie_setup_window(bridge_base_addr, index,
> +					       entry->res->start, pci_addr,
> +					       resource_size(entry->res));
> +			index++;
> +		}
> +	}
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(plda_pcie_setup_iomems);
> diff --git a/drivers/pci/controller/plda/pcie-plda.h b/drivers/pci/controller/plda/pcie-plda.h
> index d04a571404b9..3deefd35fa5a 100644
> --- a/drivers/pci/controller/plda/pcie-plda.h
> +++ b/drivers/pci/controller/plda/pcie-plda.h
> @@ -119,4 +119,10 @@ struct plda_pcie_rp {
>  	struct plda_msi msi;
>  	void __iomem *bridge_addr;
>  };
> +
> +void plda_pcie_setup_window(void __iomem *bridge_base_addr, u32 index,
> +			    phys_addr_t axi_addr, phys_addr_t pci_addr,
> +			    size_t size);
> +int plda_pcie_setup_iomems(struct pci_host_bridge *bridge,
> +			   struct plda_pcie_rp *port);
>  #endif
> --
> 2.17.1

