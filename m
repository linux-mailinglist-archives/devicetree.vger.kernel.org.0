Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA21643FEE4
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 17:01:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229728AbhJ2PD5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Oct 2021 11:03:57 -0400
Received: from foss.arm.com ([217.140.110.172]:39128 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229635AbhJ2PD5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 29 Oct 2021 11:03:57 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 793851FB;
        Fri, 29 Oct 2021 08:01:28 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AC1353F73D;
        Fri, 29 Oct 2021 08:01:27 -0700 (PDT)
Date:   Fri, 29 Oct 2021 16:01:25 +0100
From:   Mark Rutland <mark.rutland@arm.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: Simplify checking for populated DT
Message-ID: <20211029150125.GE24060@lakrids.cambridge.arm.com>
References: <20211029144055.2365814-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211029144055.2365814-1-robh@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 29, 2021 at 09:40:55AM -0500, Rob Herring wrote:
> Use of the of_scan_flat_dt() function predates libfdt and is discouraged
> as libfdt provides a nicer set of APIs. Rework dt_scan_depth1_nodes to
> use libfdt calls directly, and rename it to dt_is_stub() to reflect
> exactly what it checking.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

Thanks for reworking this; it looks good to me:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

> ---
> v2:
>  - Keep checking for only stub nodes
> 
>  arch/arm64/kernel/acpi.c | 35 ++++++++++++++---------------------
>  1 file changed, 14 insertions(+), 21 deletions(-)
> 
> diff --git a/arch/arm64/kernel/acpi.c b/arch/arm64/kernel/acpi.c
> index 1c9c2f7a1c04..7df733427e04 100644
> --- a/arch/arm64/kernel/acpi.c
> +++ b/arch/arm64/kernel/acpi.c
> @@ -22,6 +22,7 @@
>  #include <linux/irq_work.h>
>  #include <linux/memblock.h>
>  #include <linux/of_fdt.h>
> +#include <linux/libfdt.h>
>  #include <linux/smp.h>
>  #include <linux/serial_core.h>
>  #include <linux/pgtable.h>
> @@ -62,29 +63,22 @@ static int __init parse_acpi(char *arg)
>  }
>  early_param("acpi", parse_acpi);
>  
> -static int __init dt_scan_depth1_nodes(unsigned long node,
> -				       const char *uname, int depth,
> -				       void *data)
> +static bool __init dt_is_stub(void)
>  {
> -	/*
> -	 * Ignore anything not directly under the root node; we'll
> -	 * catch its parent instead.
> -	 */
> -	if (depth != 1)
> -		return 0;
> +	int node;
>  
> -	if (strcmp(uname, "chosen") == 0)
> -		return 0;
> +	fdt_for_each_subnode(node, initial_boot_params, 0) {
> +		const char *name = fdt_get_name(initial_boot_params, node, NULL);
> +		if (strcmp(name, "chosen") == 0)
> +			continue;
> +		if (strcmp(name, "hypervisor") == 0 &&
> +		    of_flat_dt_is_compatible(node, "xen,xen"))
> +			continue;
>  
> -	if (strcmp(uname, "hypervisor") == 0 &&
> -	    of_flat_dt_is_compatible(node, "xen,xen"))
> -		return 0;
> +		return false;
> +	}
>  
> -	/*
> -	 * This node at depth 1 is neither a chosen node nor a xen node,
> -	 * which we do not expect.
> -	 */
> -	return 1;
> +	return true;
>  }
>  
>  /*
> @@ -205,8 +199,7 @@ void __init acpi_boot_table_init(void)
>  	 *   and ACPI has not been [force] enabled (acpi=on|force)
>  	 */
>  	if (param_acpi_off ||
> -	    (!param_acpi_on && !param_acpi_force &&
> -	     of_scan_flat_dt(dt_scan_depth1_nodes, NULL)))
> +	    (!param_acpi_on && !param_acpi_force && !dt_is_stub()))
>  		goto done;
>  
>  	/*
> -- 
> 2.32.0
> 
