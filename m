Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 043FB6A08F9
	for <lists+devicetree@lfdr.de>; Thu, 23 Feb 2023 13:53:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233346AbjBWMxV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Feb 2023 07:53:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232420AbjBWMxM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Feb 2023 07:53:12 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A508497D1
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 04:53:11 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id k37so5788053wms.0
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 04:53:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/FvmpoFfP+6tUBA7y7H71sCgjkL+kidP+/CqI/VdtvQ=;
        b=Sy1T+eNVldcEfJbVgrVeoPAxr7YjBUUlIDW6fInf1xOmu7p/xjzPKFg41ykXq/ZPGy
         2r75oe0JRN3yNKlhXth62uqEFeBN5ZU4xwkmZYX2ZmnVn2W/49i6OHXTS2V3AGfDpl00
         4OmOhelC7jmCbDXm9q7WWAMJseXPcM6/4zpLPA32gj4nTjwbZ/MEETgquCjb3niTWkA7
         yF6M5C9zvkIHuUHXwIfI3/rBfTM/zCN7ylpktkkJvYTFK+r9KtOa+rkraQxo0kumPxJi
         V/rvAzh3K1orfCnx8Vsbft27WHYt6zhhyMfDQ0JCVaEUr+Dqkq3WK0gv7OlPzMKaiSKe
         K29w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/FvmpoFfP+6tUBA7y7H71sCgjkL+kidP+/CqI/VdtvQ=;
        b=sgwQnMAvkQ2z/PDt5Li8HJaUhAdlImScNobj5IkekTDO3C170G2QBaTwKKXojqxoTd
         35khKSonOqtIQW+qF2QLBg9XGiHwwnm/6AZOuFFSwu2If7KDykiAXyYWqf/TgOp3Nqj7
         bgCzpFXhaHfJK+HuILJkkT5haI/O/E2BIlBR8T+9kQ9PtG1YpuMPxrYVH4JPaO6rRurU
         UepLdD6cnKDq8YIrxl/LCcGuinbb4nKOv71MhkGR4O2NUBNNT2WocTvIflDTUesXhMvC
         Ldf/p6q3lGIRHI/XCM/7210WYWCk02z0fTFWLfdXZUDACuDfpJSKr5WruBXYOxqEm61Y
         PI4A==
X-Gm-Message-State: AO0yUKWZTxhLjelExvdQp8s14Tx6hwrgYZaufbtkOsN19kbGvpWH7f0m
        eYz2lS1JsneVoXLxJg8+xlAK3Tu6MZ3Z2F4j
X-Google-Smtp-Source: AK7set/nBH+egrzpQF7SYDPVDZrSkZOXC+6YXUPs5juU6fLKtnNXfMjPxU9USn8Upw7ApWo3FqGM9A==
X-Received: by 2002:a05:600c:3b14:b0:3e8:f27b:a92c with SMTP id m20-20020a05600c3b1400b003e8f27ba92cmr4378018wms.32.1677156789410;
        Thu, 23 Feb 2023 04:53:09 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id o18-20020a05600c4fd200b003e9ded91c27sm4045312wmq.4.2023.02.23.04.53.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Feb 2023 04:53:08 -0800 (PST)
Date:   Thu, 23 Feb 2023 13:53:07 +0100
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Conor Dooley <conor@kernel.org>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        kvm-riscv@lists.infradead.org, 'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Conor Dooley ' <conor.dooley@microchip.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Ben Dooks ' <ben.dooks@codethink.co.uk>,
        'Atish Patra ' <atishp@rivosinc.com>
Subject: Re: [PATCH v5 5/8] riscv: cpufeatures: Put the upper 16 bits of
 patch ID to work
Message-ID: <20230223125307.5jumkavjnnddvdtp@orel>
References: <20230221190916.572454-1-ajones@ventanamicro.com>
 <20230221190916.572454-6-ajones@ventanamicro.com>
 <Y/ZQk0ifXPEnenoe@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y/ZQk0ifXPEnenoe@spud>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 22, 2023 at 05:27:47PM +0000, Conor Dooley wrote:
> On Tue, Feb 21, 2023 at 08:09:13PM +0100, Andrew Jones wrote:
> > cpufeature IDs are consecutive integers starting at 26, so a 32-bit
> > patch ID allows an aircraft carrier load of feature IDs. Repurposing
> > the upper 16 bits still leaves a boat load of feature IDs and gains
> > 16 bits which may be used to control patching on a per patch-site
> > basis.
> > 
> > This will be initially used in Zicboz's application to clear_page(),
> > as Zicboz's block size must also be considered. In that case, the
> > upper 16-bit value's role will be to convey the maximum block size
> > which the Zicboz clear_page() implementation supports.
> > 
> > cpufeature patch sites which need to check for the existence or
> > absence of other cpufeatures may also be able to make use of this.
> > 
> > Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> > ---
> >  arch/riscv/include/asm/alternative.h |  3 +++
> >  arch/riscv/kernel/cpufeature.c       | 37 +++++++++++++++++++++++++---
> >  2 files changed, 36 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/riscv/include/asm/alternative.h b/arch/riscv/include/asm/alternative.h
> > index 8f39d4e8598d..f2cb543b0bd2 100644
> > --- a/arch/riscv/include/asm/alternative.h
> > +++ b/arch/riscv/include/asm/alternative.h
> > @@ -17,6 +17,9 @@
> >  #include <linux/stddef.h>
> >  #include <asm/hwcap.h>
> >  
> > +#define PATCH_ID_CPUFEATURE_ID(p)		((u16)((u32)(p) & 0xffff))
> > +#define PATCH_ID_CPUFEATURE_VALUE(p)		((u16)(((u32)(p) >> 16) & 0xffff))
> 
> I was just fiddling around a bit with macros, I think these do the same
> thing:
> #define PATCH_ID_CPUFEATURE_ID(p)		((p) & GENMASK(15, 0))
> #define PATCH_ID_CPUFEATURE_VALUE(p)		FIELD_GET(GENMASK(31, 16), (p))
> Although without the same care about types - is there a specific reason
> you were casting like that?

Just to be pedantic, but I just remembered we already have
upper/lower_16_bits() in linux/kernel.h. I'll use those.

> 
> Either way, I think I prefer this approach to the vendor_id stuffing!
> If we do end up needing to fit an aircraft carrier, we can come back and
> revisit another parameter in the alternatives I suppose...
> 
> I don't really know if the macros do anything to help with
> understandability, so with or without trying to use macros:
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
drew

> 
> Thanks,
> Conor.
> 
> >  #define RISCV_ALTERNATIVES_BOOT		0 /* alternatives applied during regular boot */
> >  #define RISCV_ALTERNATIVES_MODULE	1 /* alternatives applied during module-init */
> >  #define RISCV_ALTERNATIVES_EARLY_BOOT	2 /* alternatives applied before mmu start */
> > diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> > index 6102b6bb5db3..0594989ead63 100644
> > --- a/arch/riscv/kernel/cpufeature.c
> > +++ b/arch/riscv/kernel/cpufeature.c
> > @@ -273,12 +273,35 @@ void __init riscv_fill_hwcap(void)
> >  }
> >  
> >  #ifdef CONFIG_RISCV_ALTERNATIVE
> > +/*
> > + * Alternative patch sites consider 48 bits when determining when to patch
> > + * the old instruction sequence with the new. These bits are broken into a
> > + * 16-bit vendor ID and a 32-bit patch ID. A non-zero vendor ID means the
> > + * patch site is for an erratum, identified by the 32-bit patch ID. When
> > + * the vendor ID is zero, the patch site is for a cpufeature. cpufeatures
> > + * further break down patch ID into two 16-bit numbers. The lower 16 bits
> > + * are the cpufeature ID and the upper 16 bits are used for a value specific
> > + * to the cpufeature and patch site. If the upper 16 bits are zero, then it
> > + * implies no specific value is specified. cpufeatures that want to control
> > + * patching on a per-site basis will provide non-zero values and implement
> > + * checks here. The checks return true when patching should be done, and
> > + * false otherwise.
> > + */
> > +static bool riscv_cpufeature_patch_check(u16 id, u16 value)
> > +{
> > +	if (!value)
> > +		return true;
> > +
> > +	return false;
> > +}
> > +
> >  void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *begin,
> >  						  struct alt_entry *end,
> >  						  unsigned int stage)
> >  {
> >  	struct alt_entry *alt;
> >  	void *oldptr, *altptr;
> > +	u16 id, value;
> >  
> >  	if (stage == RISCV_ALTERNATIVES_EARLY_BOOT)
> >  		return;
> > @@ -286,13 +309,19 @@ void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *begin,
> >  	for (alt = begin; alt < end; alt++) {
> >  		if (alt->vendor_id != 0)
> >  			continue;
> > -		if (alt->patch_id >= RISCV_ISA_EXT_MAX) {
> > -			WARN(1, "This extension id:%d is not in ISA extension list",
> > -				alt->patch_id);
> > +
> > +		id = PATCH_ID_CPUFEATURE_ID(alt->patch_id);
> > +
> > +		if (id >= RISCV_ISA_EXT_MAX) {
> > +			WARN(1, "This extension id:%d is not in ISA extension list", id);
> >  			continue;
> >  		}
> >  
> > -		if (!__riscv_isa_extension_available(NULL, alt->patch_id))
> > +		if (!__riscv_isa_extension_available(NULL, id))
> > +			continue;
> > +
> > +		value = PATCH_ID_CPUFEATURE_VALUE(alt->patch_id);
> > +		if (!riscv_cpufeature_patch_check(id, value))
> >  			continue;
> >  
> >  		oldptr = ALT_OLD_PTR(alt);
> > -- 
> > 2.39.1
> > 


