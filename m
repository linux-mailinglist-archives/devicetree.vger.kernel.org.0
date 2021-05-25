Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77C7139091F
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 20:41:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230499AbhEYSn2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 May 2021 14:43:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230105AbhEYSn2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 May 2021 14:43:28 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2CF3C061574
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 11:41:56 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id l11-20020a05600c4f0bb029017a7cd488f5so10756138wmq.0
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 11:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snejp.pl; s=gmail;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=uA8zy8FMFOfbUuugs0P0F3l39RYnpQwCDdJbsxFoBTI=;
        b=AfETKzCfYnpqwmxs4oM7m4JogaxlXXgr5SdBL5nyCsmwp4GFOvrSnArzR8BCONT9sR
         Ko2myp/YeGR+nB2ftHfgMMOCUgZgmc1CkY44r1W3IhkFvuJYhSltKEqExkDNlfUY6lRr
         pujOw7vc5djCRRU0Mu6Jjb0ox3Z1iI7wdy+yZiFElI9tI4HNAeFbbyAwS7zJzfRnnUcV
         p4NgepHT5NtHbdaq7cvckZu1iXFI/ZwYMZDR6hQohm7k0T48PdAEcI5gKMoJFx7vi1SN
         2U1DC6i7bHqeSwR8KsDOk8We6YVGYbcKVOuN8UJwvFHS2JDZUNZL3pM5vusaHNxOIFM2
         Pg2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=uA8zy8FMFOfbUuugs0P0F3l39RYnpQwCDdJbsxFoBTI=;
        b=HuNoXoezm8uUHh2NlYMSR/MlNVrsIAAHFAI7ZycmO+auHytBnmDEZ5ytky7vEut6Hr
         drYittnilPv6VkhJbbOI1UE2UVF9fjz5HPK8nqjak0+ZKm7gA7vpdoyLa+fW0zu+VawZ
         FXeFuTSR6TR+tO/RjU9oNHX/TgtA25FZmqf3sIEVB6ji33Ox21S0C/xIhBbffgSlM3WY
         fmDvUsjFnehl7Dju7du+YvTNZ90zkK954B4MOUv4LBWuc+68RB6mSimD7tLlqbbhydYw
         NoFQJ8DMiNxfp1PE3UP2vDiPlRKIIHLgAo2k8oowMcNxjhTuoqpBybSx24INmcnbMoCU
         ek5Q==
X-Gm-Message-State: AOAM533sE/7KrD0kz+tINfasX+Sz11Tabnkb/iHLz9+epQ7d8Xi8YYHh
        Iraj5eiqVXlzuMYGO6CURvFplQ==
X-Google-Smtp-Source: ABdhPJz9UBTRCNLv5q13a+UC8+jySNwiA5n/OC1n2KousY/xWSpRFiV/wbtBLYxSGjEmJlOeD2A5dQ==
X-Received: by 2002:a05:600c:3542:: with SMTP id i2mr23107352wmq.124.1621968115511;
        Tue, 25 May 2021 11:41:55 -0700 (PDT)
Received: from PackardBell (public-gprs171801.centertel.pl. [46.134.10.90])
        by smtp.googlemail.com with ESMTPSA id g10sm17381448wrq.12.2021.05.25.11.41.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 May 2021 11:41:54 -0700 (PDT)
Received: from localhost (PackardBell [local])
        by PackardBell (OpenSMTPD) with ESMTPA id d3d72a31;
        Tue, 25 May 2021 18:41:51 +0000 (UTC)
Date:   Tue, 25 May 2021 20:41:51 +0200
From:   Bartosz Dudziak <bartosz.dudziak@snejp.pl>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Russell King <linux@armlinux.org.uk>,
        David Sterba <dsterba@suse.com>, Jens Axboe <axboe@kernel.dk>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Kumar Gala <galak@codeaurora.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm: qcom: Add SMP support for Cortex-A7
Message-ID: <20210525184151.GA1543@PackardBell>
References: <20210513153442.52941-1-bartosz.dudziak@snejp.pl>
 <20210513153442.52941-3-bartosz.dudziak@snejp.pl>
 <YKzrq8V4c2HScgP4@gerhold.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YKzrq8V4c2HScgP4@gerhold.net>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 25, 2021 at 02:20:59PM +0200, Stephan Gerhold wrote:
> Hi,
> 
> On Thu, May 13, 2021 at 05:34:42PM +0200, Bartosz Dudziak wrote:
> > Implement support for Cortex-A7 CPU release sequence.
> > 
> > Signed-off-by: Bartosz Dudziak <bartosz.dudziak@snejp.pl>
> > ---
> >  arch/arm/mach-qcom/platsmp.c | 72 ++++++++++++++++++++++++++++++++++++
> >  1 file changed, 72 insertions(+)
> > 
> > diff --git a/arch/arm/mach-qcom/platsmp.c b/arch/arm/mach-qcom/platsmp.c
> > index 630a038f45..10780bf14a 100644
> > --- a/arch/arm/mach-qcom/platsmp.c
> > +++ b/arch/arm/mach-qcom/platsmp.c
> > @@ -29,6 +29,7 @@
> >  #define COREPOR_RST		BIT(5)
> >  #define CORE_RST		BIT(4)
> >  #define L2DT_SLP		BIT(3)
> > +#define CORE_MEM_CLAMP		BIT(1)
> >  #define CLAMP			BIT(0)
> >  
> >  #define APC_PWR_GATE_CTL	0x14
> > @@ -75,6 +76,63 @@ static int scss_release_secondary(unsigned int cpu)
> >  	return 0;
> >  }
> >  
> > +static int cortex_a7_release_secondary(unsigned int cpu)
> > +{
> > +	int ret = 0;
> > +	void __iomem *reg;
> > +	struct device_node *cpu_node, *acc_node;
> > +	u32 reg_val;
> > +
> > +	cpu_node = of_get_cpu_node(cpu, NULL);
> > +	if (!cpu_node)
> > +		return -ENODEV;
> > +
> > +	acc_node = of_parse_phandle(cpu_node, "qcom,acc", 0);
> > +	if (!acc_node) {
> > +		ret = -ENODEV;
> > +		goto out_acc;
> > +	}
> > +
> > +	reg = of_iomap(acc_node, 0);
> > +	if (!reg) {
> > +		ret = -ENOMEM;
> > +		goto out_acc_map;
> > +	}
> > +
> > +	/* Put the CPU into reset. */
> > +	reg_val = CORE_RST | COREPOR_RST | CLAMP | CORE_MEM_CLAMP;
> > +	writel(reg_val, reg + APCS_CPU_PWR_CTL);
> > +
> > +	/* Turn on the BHS, set the BHS_CNT to 16 XO clock cycles */
> > +	writel(BHS_EN | (0x10 << BHS_CNT_SHIFT), reg + APC_PWR_GATE_CTL);
> > +	/* Wait for the BHS to settle */
> > +	udelay(2);
> > +
> > +	reg_val &= ~CORE_MEM_CLAMP;
> > +	writel(reg_val, reg + APCS_CPU_PWR_CTL);
> > +
> > +	reg_val |= L2DT_SLP;
> > +	writel(reg_val, reg + APCS_CPU_PWR_CTL);
> > +	udelay(2);
> > +
> > +	reg_val = (reg_val | BIT(17)) & ~CLAMP;
> > +	writel(reg_val, reg + APCS_CPU_PWR_CTL);
> > +	udelay(2);
> > +
> > +	/* Release CPU out of reset and bring it to life. */
> > +	reg_val &= ~(CORE_RST | COREPOR_RST);
> > +	writel(reg_val, reg + APCS_CPU_PWR_CTL);
> > +	reg_val |= CORE_PWRD_UP;
> > +	writel(reg_val, reg + APCS_CPU_PWR_CTL);
> > +
> 
> I think you forgot to add
> 
> 	iounmap(reg);
> 
> here :)
> 

Thank you, i have missed it.

> > +out_acc_map:
> > +	of_node_put(acc_node);
> > +out_acc:
> > +	of_node_put(cpu_node);
> > +
> > +	return ret;
> > +}
> > +
> >  static int kpssv1_release_secondary(unsigned int cpu)
> >  {
> >  	int ret = 0;
> > @@ -281,6 +339,11 @@ static int msm8660_boot_secondary(unsigned int cpu, struct task_struct *idle)
> >  	return qcom_boot_secondary(cpu, scss_release_secondary);
> >  }
> >  
> > +static int cortex_a7_boot_secondary(unsigned int cpu, struct task_struct *idle)
> > +{
> > +	return qcom_boot_secondary(cpu, cortex_a7_release_secondary);
> > +}
> > +
> >  static int kpssv1_boot_secondary(unsigned int cpu, struct task_struct *idle)
> >  {
> >  	return qcom_boot_secondary(cpu, kpssv1_release_secondary);
> > @@ -315,6 +378,15 @@ static const struct smp_operations smp_msm8660_ops __initconst = {
> >  };
> >  CPU_METHOD_OF_DECLARE(qcom_smp, "qcom,gcc-msm8660", &smp_msm8660_ops);
> >  
> > +static const struct smp_operations qcom_smp_cortex_a7_ops __initconst = {
> > +	.smp_prepare_cpus	= qcom_smp_prepare_cpus,
> > +	.smp_boot_secondary	= cortex_a7_boot_secondary,
> > +#ifdef CONFIG_HOTPLUG_CPU
> > +	.cpu_die		= qcom_cpu_die,
> > +#endif
> > +};
> > +CPU_METHOD_OF_DECLARE(qcom_smp_cortex_a7, "qcom,cpss-acc", &qcom_smp_cortex_a7_ops);
> > +
> 
> I'm a bit curious about the name "CPSS". Is that something you came up
> with yourself similar to KPSS? There is a slight naming collision here
> with the "Chip peripheral subsystem" (CPSS) on APQ8064E (Snapdragon 600),
> see https://developer.qualcomm.com/download/sd600/snapdragon-600-device-spec.pdf
> 
> Thanks,
> Stephan

Yes, the "CPSS" is something i came up with when i was looking at KPSS bindings.
Sorry that i did not check for a naming collision. I will think about a better
name and send a v2 patch on the weekend with iounmap() included.

Thanks for the review,
Bartosz
