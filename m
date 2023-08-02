Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50F1176D4CD
	for <lists+devicetree@lfdr.de>; Wed,  2 Aug 2023 19:11:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232539AbjHBRLn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Aug 2023 13:11:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232503AbjHBRLe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Aug 2023 13:11:34 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 992A130EB
        for <devicetree@vger.kernel.org>; Wed,  2 Aug 2023 10:11:27 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b9cdbf682eso90748091fa.2
        for <devicetree@vger.kernel.org>; Wed, 02 Aug 2023 10:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690996285; x=1691601085;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=34DA9pMD4wBr+3unRCRsGzYfKr+oDTUZCNzA3gcsoxs=;
        b=LRUrWxuBaIRsURDjLJM4SRP8xKsxtj7NFVGfHMMjZlmHpy/DXrj6Dk1TKVlUhXJ+0n
         HUoeDfvKYFX2eTiR7Qlmld1cZPgJwLyrZtfwGz+5LHOY+TF2Nu+ONvnjMZDY5P/X0Btb
         3FnM9Fg24Htkyxy1d6fxhVJpB7YtOw8he3duwebDXBvrYgIpKfMKBxrCtnN/UZr/UW9j
         6MihSTH1F99/EWJFhvsVj0R3mzUcs52+IiNPcBlPsCFTkmo4j5QmcYmB8a+4XN1PTlyj
         pcC35eU0DxlQhZnc/LdhyczrYknrerJFWygJK2Vpbh5UBchsUMlwvQtLFM2DW+ogIKVc
         bgmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690996285; x=1691601085;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=34DA9pMD4wBr+3unRCRsGzYfKr+oDTUZCNzA3gcsoxs=;
        b=hYdRqDAhNNZCOyELJFzzBoDAnx9CEIlyCg1CwxwBFv6+QG04/KREUnIO8s6QNy0DXU
         +1nvVuo98nwkewLqQrpobNubi2UX+jfvjklCk+C346sgjvra2Sw/P9ZWlz1YQHK9mIye
         bfqxFieuh5TZ/OXv8nnk9CIxAidMoEHFk2YfAi46zkq/k1wGKaCYfmtAE+e4+ICtcRQk
         2x5f0UX9iYyaRL4LNWWg0v24CNa4p0A7oNHgGv/0dVJyFKu5Z6V0DJOMxp6DTRuAH1H4
         k8DAhVby2DMJRgae1WbsrVg12eWclsnfy6zYm4xb95TKicxRs2hGRKbm4A0GsriNN7W3
         06Gg==
X-Gm-Message-State: ABy/qLYqy3FxyKgKu95/a9ejzgCJ6DxLzAhFpTHq6HYDS65yAdWSOuRi
        hWIpoRXPfp56T1UHz32HlEHeIw==
X-Google-Smtp-Source: APBJJlGI44p7qA5sPeEuLWaWIN0vPKpkAyJPhnm6zEsb/fEBmKfWARUlL1Pf67z+zh5XUS3xoQVt/Q==
X-Received: by 2002:a2e:9f52:0:b0:2b6:d7d1:95c0 with SMTP id v18-20020a2e9f52000000b002b6d7d195c0mr5400787ljk.11.1690996285320;
        Wed, 02 Aug 2023 10:11:25 -0700 (PDT)
Received: from localhost (212-5-140-29.ip.btc-net.bg. [212.5.140.29])
        by smtp.gmail.com with ESMTPSA id y9-20020a170906470900b0099bc8db97bcsm9323600ejq.131.2023.08.02.10.11.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Aug 2023 10:11:24 -0700 (PDT)
Date:   Wed, 2 Aug 2023 20:09:18 +0300
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Anup Patel <apatel@ventanamicro.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Atish Patra <atishp@atishpatra.org>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Saravana Kannan <saravanak@google.com>,
        Anup Patel <anup@brainfault.org>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v7 01/15] RISC-V: Add riscv_get_intc_hartid() function
Message-ID: <20230802-b0c478839e55890385d98f31@orel>
References: <20230802150018.327079-1-apatel@ventanamicro.com>
 <20230802150018.327079-2-apatel@ventanamicro.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230802150018.327079-2-apatel@ventanamicro.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 02, 2023 at 08:30:04PM +0530, Anup Patel wrote:
> We add a common riscv_get_intc_hartid() which help device drivers to
> get hartid of the HART associated with a INTC (i.e. local interrupt
> controller) fwnode. This new function is more generic compared to
> the existing riscv_of_parent_hartid() function hence we also replace
> use of riscv_of_parent_hartid() with riscv_get_intc_hartid().
> 
> Also, while we are here let us update riscv_of_parent_hartid() to
> always return the hartid irrespective whether the CPU/HART DT node
> is disabled or not.

This change should probably be a separate patch with its own
justification in its commit message.

> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  arch/riscv/include/asm/processor.h |  4 +++-
>  arch/riscv/kernel/cpu.c            | 26 ++++++++++++++++++++------
>  drivers/irqchip/irq-riscv-intc.c   |  2 +-
>  drivers/irqchip/irq-sifive-plic.c  |  3 ++-
>  4 files changed, 26 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
> index c950a8d9edef..662da1e112dd 100644
> --- a/arch/riscv/include/asm/processor.h
> +++ b/arch/riscv/include/asm/processor.h
> @@ -79,7 +79,9 @@ static inline void wait_for_interrupt(void)
>  struct device_node;
>  int riscv_of_processor_hartid(struct device_node *node, unsigned long *hartid);
>  int riscv_early_of_processor_hartid(struct device_node *node, unsigned long *hartid);
> -int riscv_of_parent_hartid(struct device_node *node, unsigned long *hartid);
> +
> +struct fwnode_handle;
> +int riscv_get_intc_hartid(struct fwnode_handle *node, unsigned long *hartid);

Do we want a function that is named in a way that appears to be
intc-specific in processor.h?

>  
>  extern void riscv_fill_hwcap(void);
>  extern int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src);
> diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
> index a2fc952318e9..c3eaa8a55bbe 100644
> --- a/arch/riscv/kernel/cpu.c
> +++ b/arch/riscv/kernel/cpu.c
> @@ -81,21 +81,35 @@ int riscv_early_of_processor_hartid(struct device_node *node, unsigned long *har
>   * To achieve this, we walk up the DT tree until we find an active
>   * RISC-V core (HART) node and extract the cpuid from it.
>   */
> -int riscv_of_parent_hartid(struct device_node *node, unsigned long *hartid)
> +static int riscv_of_parent_hartid(struct device_node *node,
> +				  unsigned long *hartid)
>  {
> -	int rc;
> -
>  	for (; node; node = node->parent) {
>  		if (of_device_is_compatible(node, "riscv")) {
> -			rc = riscv_of_processor_hartid(node, hartid);
> -			if (!rc)
> -				return 0;
> +			*hartid = (unsigned long)of_get_cpu_hwid(node, 0);

Shouldn't we still do something like

   if (*hartid == ~0UL) {
       pr_warn_once("Found CPU without hart ID\n");
       return -ENODEV;
   }

> +			return 0;
>  		}
>  	}
>  
>  	return -1;
>  }
>  
> +/* Find hart ID of the INTC fwnode. */
> +int riscv_get_intc_hartid(struct fwnode_handle *node, unsigned long *hartid)
> +{
> +	int rc;
> +	u64 temp;
> +
> +	if (!is_of_node(node)) {
> +		rc = fwnode_property_read_u64_array(node, "hartid", &temp, 1);

This fwnode property read call seems premature, since we don't have any
way to know that "hartid" will be a property of the intc since it's not a
property documented in the DT binding. (I know Sunil has a series in
progress which will introduce "hartid" for ACPI, but, even then, it seems
like we need some documentation to point at that says '"hartid" is the
name to use'.

> +		if (!rc)
> +			*hartid = temp;
> +	} else
> +		rc = riscv_of_parent_hartid(to_of_node(node), hartid);
> +
> +	return rc;
> +}
> +
>  DEFINE_PER_CPU(struct riscv_cpuinfo, riscv_cpuinfo);
>  
>  unsigned long riscv_cached_mvendorid(unsigned int cpu_id)
> diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv-intc.c
> index 4adeee1bc391..65f4a2afb381 100644
> --- a/drivers/irqchip/irq-riscv-intc.c
> +++ b/drivers/irqchip/irq-riscv-intc.c
> @@ -143,7 +143,7 @@ static int __init riscv_intc_init(struct device_node *node,
>  	int rc;
>  	unsigned long hartid;
>  
> -	rc = riscv_of_parent_hartid(node, &hartid);
> +	rc = riscv_get_intc_hartid(of_fwnode_handle(node), &hartid);
>  	if (rc < 0) {
>  		pr_warn("unable to find hart id for %pOF\n", node);
>  		return 0;
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> index e1484905b7bd..56b0544b1f27 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -477,7 +477,8 @@ static int __init __plic_init(struct device_node *node,
>  			continue;
>  		}
>  
> -		error = riscv_of_parent_hartid(parent.np, &hartid);
> +		error = riscv_get_intc_hartid(of_fwnode_handle(parent.np),
> +					      &hartid);
>  		if (error < 0) {
>  			pr_warn("failed to parse hart ID for context %d.\n", i);
>  			continue;
> -- 
> 2.34.1
>

Thanks,
drew
