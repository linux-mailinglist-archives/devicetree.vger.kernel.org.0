Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB98773E2F6
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 17:14:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229720AbjFZPOV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 11:14:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229573AbjFZPOU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 11:14:20 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FC67D3
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 08:14:19 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f96d680399so4441982e87.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 08:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1687792457; x=1690384457;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sHPQ5iPvhDY3BGusjB5nG21y0Ckxl3USk0RX0IUeXf4=;
        b=nUCAZpPWcOfmGCZRBGflN4KfQDjnNCFMW0nkjhI2HCXQYwvXsDb7FrZ5Z42N9SMfmu
         glCwaB6pskz3xa8SdKq7xYLNCfGPOhHrXl7Wcp9jTwONfAJlcFKKz9UM5dbYVNbUqqtJ
         1CUjJPWywGFhoP+GsClDJ0uei0pBTsgjYpFN4Q95MKUy0h1JBRuSCQ95Abk1RwP2JrAA
         0Ibo7bJgxK5KBMJOo1e2gww+aHiqf+EgqjWM5qlumoJDMjbO4FAPyYVLXzIOSz6hmePr
         EeQwZqAjtp4/XNMndXbnCVR7qXwxcbfXoDaSPDp7Ax5l1QYNNeTXz6YbZ2Bc7VjUKlul
         RGsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687792457; x=1690384457;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sHPQ5iPvhDY3BGusjB5nG21y0Ckxl3USk0RX0IUeXf4=;
        b=e6rddiHeGBIC1vspxTR9uUtuHGioNtJWGrCHQ9QWO4uuOi/bbsF6u/QGFWc3cSM1a0
         GiuBJrT44I/jdj64LMXBzl8V1ebuQM+AHtAZ3p809pRcXs0WGvkdko1usn6EYhYEAavE
         vqii0Kh6buYwDs55ZBaF0RNZcW0fwAd7J49+0vxepAs552WFTtBoztUOycjhQ8cobCCZ
         /uXR+hGZ94s9DZOpcu2D9rothyaLHJqNtNAA0VxDugBKdTFcsSKKBbeRMlMTgewpkuSo
         zGUcA0KB6gdZsOmHOBbo4m802P+J7mieZpb9gmIizhIDdN7Foy8dJGLOkg01yoaSXiIP
         eWUg==
X-Gm-Message-State: AC+VfDzmtY+vPuTW67bxv9nUROXPYrUq2xekaUbxPZdE5Y6DZ1/D62T4
        iKQLSCGp6bpqWejrjeSbbVkVCw==
X-Google-Smtp-Source: ACHHUZ6mxmDI2Qp25GlQT3n6esNr9Ydz9pNhGlZeEOzNxaLE29RqcZgb67QQ2i221weUCfP2m7J6Jg==
X-Received: by 2002:a19:4f49:0:b0:4f8:58d3:b7ab with SMTP id a9-20020a194f49000000b004f858d3b7abmr17736483lfk.4.1687792457237;
        Mon, 26 Jun 2023 08:14:17 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id z18-20020aa7c652000000b0050dfd7de30dsm2904899edr.94.2023.06.26.08.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jun 2023 08:14:16 -0700 (PDT)
Date:   Mon, 26 Jun 2023 17:14:15 +0200
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     palmer@dabbelt.com, conor@kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Heiko Stuebner <heiko.stuebner@vrull.eu>,
        Evan Green <evan@rivosinc.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/9] RISC-V: don't parse dt/acpi isa string to get
 rv32/rv64
Message-ID: <20230626-e3ea7beb39c584bfbf7ee836@orel>
References: <20230626-provable-angrily-81760e8c3cc6@wendy>
 <20230626-silk-colonize-824390303994@wendy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230626-silk-colonize-824390303994@wendy>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 26, 2023 at 12:19:39PM +0100, Conor Dooley wrote:
> From: Heiko Stuebner <heiko.stuebner@vrull.eu>
> 
> When filling hwcap the kernel already expects the isa string to start with
> rv32 if CONFIG_32BIT and rv64 if CONFIG_64BIT.
> 
> So when recreating the runtime isa-string we can also just go the other way
> to get the correct starting point for it.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@vrull.eu>
> Co-developed-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  arch/riscv/kernel/cpu.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
> index a2fc952318e9..742bb42e7e86 100644
> --- a/arch/riscv/kernel/cpu.c
> +++ b/arch/riscv/kernel/cpu.c
> @@ -253,13 +253,16 @@ static void print_isa_ext(struct seq_file *f)
>   */
>  static const char base_riscv_exts[13] = "imafdqcbkjpvh";
>  
> -static void print_isa(struct seq_file *f, const char *isa)
> +static void print_isa(struct seq_file *f)
>  {
>  	int i;
>  
>  	seq_puts(f, "isa\t\t: ");
> -	/* Print the rv[64/32] part */
> -	seq_write(f, isa, 4);
> +	if (IS_ENABLED(CONFIG_32BIT))
> +		seq_write(f, "rv32", 4);
> +	else
> +		seq_write(f, "rv64", 4);
> +
>  	for (i = 0; i < sizeof(base_riscv_exts); i++) {
>  		if (__riscv_isa_extension_available(NULL, base_riscv_exts[i] - 'a'))
>  			/* Print only enabled the base ISA extensions */
> @@ -316,15 +319,14 @@ static int c_show(struct seq_file *m, void *v)
>  	unsigned long cpu_id = (unsigned long)v - 1;
>  	struct riscv_cpuinfo *ci = per_cpu_ptr(&riscv_cpuinfo, cpu_id);
>  	struct device_node *node;
> -	const char *compat, *isa;
> +	const char *compat;
>  
>  	seq_printf(m, "processor\t: %lu\n", cpu_id);
>  	seq_printf(m, "hart\t\t: %lu\n", cpuid_to_hartid_map(cpu_id));
> +	print_isa(m);
>  
>  	if (acpi_disabled) {
>  		node = of_get_cpu_node(cpu_id, NULL);
> -		if (!of_property_read_string(node, "riscv,isa", &isa))
> -			print_isa(m, isa);
>  
>  		print_mmu(m);
>  		if (!of_property_read_string(node, "compatible", &compat) &&
> @@ -333,8 +335,6 @@ static int c_show(struct seq_file *m, void *v)
>  
>  		of_node_put(node);
>  	} else {
> -		if (!acpi_get_riscv_isa(NULL, cpu_id, &isa))
> -			print_isa(m, isa);
>  

Extra blank line here to remove. Actually the whole 'else' can be removed
because the print_mmu() call can be brought up above the
'if (acpi_disabled)'

>  		print_mmu(m);
>  	}
> -- 
> 2.40.1
>

Otherwise,

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

Thanks,
drew
