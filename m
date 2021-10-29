Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B462C43FA0C
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 11:38:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231485AbhJ2JlV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Oct 2021 05:41:21 -0400
Received: from foss.arm.com ([217.140.110.172]:36412 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229927AbhJ2JlV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 29 Oct 2021 05:41:21 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 038C61FB;
        Fri, 29 Oct 2021 02:38:53 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2F5583F5A1;
        Fri, 29 Oct 2021 02:38:52 -0700 (PDT)
Date:   Fri, 29 Oct 2021 10:38:50 +0100
From:   Mark Rutland <mark.rutland@arm.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: Simplify checking for populated DT
Message-ID: <20211029093849.GB24060@lakrids.cambridge.arm.com>
References: <20211028183355.360731-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211028183355.360731-1-robh@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Thu, Oct 28, 2021 at 01:33:55PM -0500, Rob Herring wrote:
> Use of of_scan_flat_dt() function predates libfdt and is discouraged as
> libfdt provides a nicer set of APIs. Rework dt_scan_depth1_nodes to use
> libfdt calls directly. Rather than searching for any node not /chosen or
> /hypervisor, let's just check for something always required which is the
> arch timer.

The reason for checking for /chosen and /hypervisor specifically was
that we specifically permit a "stub" DT which only contains those nodes
and nothing more. This is also mentioned in the comment block in
acpi_boot_table_init().

I'm not keen on this change because it opens the door for people to
place arbitrary things in the DT as long as they don't add a timer node,
and I'd prefer that we continue to check for /chosen and /hypervisor
specifically.

Can we re-implement the existing logic using libfdt calls? e.g. using
fdt_for_each_subnode() on the root node?

Thanks,
Mark.

> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  arch/arm64/kernel/acpi.c | 29 ++++++-----------------------
>  1 file changed, 6 insertions(+), 23 deletions(-)
> 
> diff --git a/arch/arm64/kernel/acpi.c b/arch/arm64/kernel/acpi.c
> index 1c9c2f7a1c04..f1bb0fb4a604 100644
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
> @@ -62,29 +63,12 @@ static int __init parse_acpi(char *arg)
>  }
>  early_param("acpi", parse_acpi);
>  
> -static int __init dt_scan_depth1_nodes(unsigned long node,
> -				       const char *uname, int depth,
> -				       void *data)
> +static bool __init dt_is_populated(void)
>  {
> -	/*
> -	 * Ignore anything not directly under the root node; we'll
> -	 * catch its parent instead.
> -	 */
> -	if (depth != 1)
> -		return 0;
> -
> -	if (strcmp(uname, "chosen") == 0)
> -		return 0;
> +	const void *fdt = initial_boot_params;
> +	int node = fdt_node_offset_by_compatible(fdt, -1, "arm,armv8-timer");
>  
> -	if (strcmp(uname, "hypervisor") == 0 &&
> -	    of_flat_dt_is_compatible(node, "xen,xen"))
> -		return 0;
> -
> -	/*
> -	 * This node at depth 1 is neither a chosen node nor a xen node,
> -	 * which we do not expect.
> -	 */
> -	return 1;
> +	return node > 0 ? true : false;
>  }
>  
>  /*
> @@ -205,8 +189,7 @@ void __init acpi_boot_table_init(void)
>  	 *   and ACPI has not been [force] enabled (acpi=on|force)
>  	 */
>  	if (param_acpi_off ||
> -	    (!param_acpi_on && !param_acpi_force &&
> -	     of_scan_flat_dt(dt_scan_depth1_nodes, NULL)))
> +	    (!param_acpi_on && !param_acpi_force && dt_is_populated()))
>  		goto done;
>  
>  	/*
> -- 
> 2.32.0
> 
