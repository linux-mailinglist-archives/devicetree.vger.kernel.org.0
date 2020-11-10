Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82FC22AD64A
	for <lists+devicetree@lfdr.de>; Tue, 10 Nov 2020 13:33:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729604AbgKJMde (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Nov 2020 07:33:34 -0500
Received: from relay12.mail.gandi.net ([217.70.178.232]:40035 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726706AbgKJMde (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Nov 2020 07:33:34 -0500
Received: from localhost (lfbn-lyo-1-997-19.w86-194.abo.wanadoo.fr [86.194.74.19])
        (Authenticated sender: alexandre.belloni@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id 1023F200002;
        Tue, 10 Nov 2020 12:33:31 +0000 (UTC)
Date:   Tue, 10 Nov 2020 13:33:31 +0100
From:   Alexandre Belloni <alexandre.belloni@bootlin.com>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-mips@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Lars Povlsen <lars.povlsen@microchip.com>,
        Steen.Hegelund@microchip.com
Subject: Re: [PATCH v2 7/9] MIPS: mscc: build FIT image for Luton
Message-ID: <20201110123331.GK1769536@piout.net>
References: <20201110114508.1197652-1-gregory.clement@bootlin.com>
 <20201110114508.1197652-8-gregory.clement@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201110114508.1197652-8-gregory.clement@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/11/2020 12:45:06+0100, Gregory CLEMENT wrote:
> Luton now has already an u-boot port so let's build FIT images.
> 
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  arch/mips/generic/Kconfig           |  8 ++++++++
>  arch/mips/generic/Platform          |  1 +
>  arch/mips/generic/board-luton.its.S | 23 +++++++++++++++++++++++
>  3 files changed, 32 insertions(+)
>  create mode 100644 arch/mips/generic/board-luton.its.S
> 
> diff --git a/arch/mips/generic/Kconfig b/arch/mips/generic/Kconfig
> index eb2a3fa9fcd7..e5a7a1314e71 100644
> --- a/arch/mips/generic/Kconfig
> +++ b/arch/mips/generic/Kconfig
> @@ -78,6 +78,14 @@ config FIT_IMAGE_FDT_OCELOT
>  	  from Microsemi in the FIT kernel image.
>  	  This requires u-boot on the platform.
>  
> +config FIT_IMAGE_FDT_LUTON
> +	bool "Include FDT for Microsemi Luton development platforms"
> +	select SOC_VCOREIII
> +	help
> +	  Enable this to include the FDT for the Luton development platforms
> +	  from Microsemi in the FIT kernel image.
> +	  This requires u-boot on the platform.
> +
>  config BOARD_INGENIC
>  	bool "Support boards based on Ingenic SoCs"
>  	select MACH_INGENIC_GENERIC
> diff --git a/arch/mips/generic/Platform b/arch/mips/generic/Platform
> index f8ef2f9d107e..4b6905daa39c 100644
> --- a/arch/mips/generic/Platform
> +++ b/arch/mips/generic/Platform
> @@ -20,4 +20,5 @@ its-y					:= vmlinux.its.S
>  its-$(CONFIG_FIT_IMAGE_FDT_BOSTON)	+= board-boston.its.S
>  its-$(CONFIG_FIT_IMAGE_FDT_NI169445)	+= board-ni169445.its.S
>  its-$(CONFIG_FIT_IMAGE_FDT_OCELOT)	+= board-ocelot.its.S
> +its-$(CONFIG_FIT_IMAGE_FDT_LUTON)	+= board-luton.its.S
>  its-$(CONFIG_FIT_IMAGE_FDT_XILFPGA)	+= board-xilfpga.its.S
> diff --git a/arch/mips/generic/board-luton.its.S b/arch/mips/generic/board-luton.its.S
> new file mode 100644
> index 000000000000..39a543f62f25
> --- /dev/null
> +++ b/arch/mips/generic/board-luton.its.S
> @@ -0,0 +1,23 @@
> +/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
> +/ {
> +	images {
> +		fdt@luton_pcb091 {
> +			description = "MSCC Luton PCB091 Device Tree";
> +			data = /incbin/("boot/dts/mscc/luton_pcb091.dtb");
> +			type = "flat_dt";
> +			arch = "mips";
> +			compression = "none";
> +			hash@0 {
> +				algo = "sha1";
> +			};
> +		};
> +	};
> +
> +	configurations {
> +		pcb091 {
> +			description = "Luton Linux kernel";
> +			kernel = "kernel@0";
> +			fdt = "fdt@luton_pcb091";
> +		};
> +	};
> +};
> -- 
> 2.28.0
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
