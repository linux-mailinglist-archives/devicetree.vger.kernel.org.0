Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86FCE69196F
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 08:58:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231379AbjBJH6X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 02:58:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231377AbjBJH6W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 02:58:22 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 765B0367D8
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 23:58:21 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id qb15so11522305ejc.1
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 23:58:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PVwvLPdoCG9Eqj6NqnBPjX2qD9B50cXR8ttDSJSuM4A=;
        b=E54giWET6EZ//rnbVLCk30jHwlkvwBQTSRrKzWxqC+Dh6I7jwRkUuOeD33TKOW84N+
         HSjXBJcigaAkSHJNXcG3ArSe16CRpP78pNFkEKbw7AvEJS6+k92zhsWL95lpfKHn6iKs
         V4BdmkzPUHwX+rSCo3mXCYGfFOI4u/vYzRRN+g0gEnBYFCZg0cHZ8gNbEh8r/JB4Y3Kk
         sCd2fsDHefJuMqZy2BUNJZLozJU3TFo3SoRb8ke7opEBIFLKCsnUiN2BSw0nxEhGPHKm
         hSSJOOEWtAwVwCONnPwtqGYxK/swhMP3vFLcnB00OY4L3eSHP9oRWnT+RJ3J3F/69FPO
         OlKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PVwvLPdoCG9Eqj6NqnBPjX2qD9B50cXR8ttDSJSuM4A=;
        b=w7G3Orc5r1/G4hdsCSQ5I0V72e88Og3KWnDKNmkn5XeDPJ+wsOQWmEFaMzzLLGXJjB
         u/cz6laipIB3f8gF3WFXtLdiupr25XzzEtjIV9auucoGqGVVjg9AZA+8NnY3iNlQULJY
         sp+uD0/CjVsf8Bbrx1LwrAEENhBRLSGp/6177RvRIQ8fSZaOl4WUht3eRg0LFJ3RFZRc
         xCYNhKHqVoc7vNvqtGH0LUIgUe46KkRyl3+Dt1d9pciswNU7ykXkf6r/R6aYkRqv3Wrg
         kZRp4z/9zaji/pvD0bn65F2SMMgFDDhP+zWUWucPRCe0tvV4GDLOHSrc/qL1kszMXJmm
         GDxg==
X-Gm-Message-State: AO0yUKXCsYkAUxDop/AghA/GkqLsqgA4xIQs3/rMKZAsGZN9yyJ9blh7
        69OMIbY/sOmnkjfr38wCOQbGfNLFa3Qg/vPx
X-Google-Smtp-Source: AK7set/pSgw0sSEPaDn8vw6CqyxZeGxDr7nF3C2NkVx7d7q6Hx9lxU+IbrZm1BkKwVQiHeukXBoE7w==
X-Received: by 2002:a17:906:9494:b0:878:5f35:b8d6 with SMTP id t20-20020a170906949400b008785f35b8d6mr12555289ejx.51.1676015900046;
        Thu, 09 Feb 2023 23:58:20 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id 23-20020a170906101700b008aedc51fc02sm2048340ejm.210.2023.02.09.23.58.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 23:58:19 -0800 (PST)
Date:   Fri, 10 Feb 2023 08:58:18 +0100
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Conor Dooley <conor@kernel.org>
Cc:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Rob Herring ' <robh@kernel.org>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Conor Dooley ' <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 5/8] RISC-V: cpufeature: Put vendor_id to work
Message-ID: <20230210075818.chh5myc2tmcvjplc@orel>
References: <20230209152628.129914-1-ajones@ventanamicro.com>
 <20230209152628.129914-6-ajones@ventanamicro.com>
 <Y+VD2/owMIvqzOx8@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y+VD2/owMIvqzOx8@spud>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 09, 2023 at 07:04:59PM +0000, Conor Dooley wrote:
> Hey Drew,
> 
> On Thu, Feb 09, 2023 at 04:26:25PM +0100, Andrew Jones wrote:
> > When [ab]using alternatives as cpufeature "static keys", which can
> > be used in assembly, also put vendor_id to work as application-
> > specific data. This will be initially used in Zicboz's application to
> > clear_page(), as Zicboz's block size must also be considered. In that
> > case, vendor_id's role will be to convey the maximum block size which
> > the Zicboz clear_page() implementation supports.
> > 
> > cpufeature alternative applications which need to check for the
> > existence or absence of other cpufeatures may also be able to make
> > use of this.
> > 
> > Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> > ---
> >  arch/riscv/kernel/cpufeature.c | 10 ++++++++--
> >  1 file changed, 8 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> > index 0d2db03cf167..74736b4f0624 100644
> > --- a/arch/riscv/kernel/cpufeature.c
> > +++ b/arch/riscv/kernel/cpufeature.c
> > @@ -278,6 +278,11 @@ void __init riscv_fill_hwcap(void)
> >  }
> >  
> >  #ifdef CONFIG_RISCV_ALTERNATIVE
> 
> I think a comment here about what "application check" means would be
> nice.
> That wording just feels clunky & the meaning is not immediately
> graspable?
> 
> /*
>  * riscv_cpufeature_application_check() - Check if a cpufeature applies.
>  * The presence of a cpufeature does not mean it is necessarily
>  * useable. This function is used to apply the alternative on a
>  * case-by-case basis.
>  */
> 
> Dunno, does something like that convey the intent?

Indeed, a comment would be helpful. I'll put something similar to what you
propose in the next version.

> 
> > +static bool riscv_cpufeature_application_check(u32 feature, u16 data)
> > +{
> > +	return data == 0;
> > +}
> > +
> >  void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *begin,
> >  						  struct alt_entry *end,
> >  						  unsigned int stage)
> > @@ -289,8 +294,6 @@ void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *begin,
> >  		return;
> >  
> >  	for (alt = begin; alt < end; alt++) {
> > -		if (alt->vendor_id != 0)
> > -			continue;
> 
> Can you remind me what makes this "safe"?
> My understanding was that a vendor_id of zero was safe, as zero is
> reserved in JEDEC.
> What is stopping someone stuffing this with a given value and
> colliding with a real vendor's errata?
> 
> 	for (alt = begin; alt < end; alt++) {
> 		if (alt->vendor_id != A_VENDOR_ID)
> 			continue;
> 		if (alt->errata_id >= ERRATA_A_NUMBER)
> 			continue;
> 
> 		tmp = (1U << alt->errata_id);
> 		if (cpu_req_errata & tmp) {
> 			oldptr = ALT_OLD_PTR(alt);
> 			altptr = ALT_ALT_PTR(alt);
> 
> 			/* On vm-alternatives, the mmu isn't running yet */
> 			if (stage == RISCV_ALTERNATIVES_EARLY_BOOT)
> 				memcpy((void *)__pa_symbol(oldptr),
> 				       (void *)__pa_symbol(altptr),
> 				       alt->alt_len);
> 			else
> 				patch_text_nosync(oldptr, altptr, alt->alt_len);
> 		}
> 	}
> 
> I've probably just missing something, my brain swapped out alternatives
> the other week. Hopefully whatever I missed isn't embarrassingly obvious!

You're right. I was assuming the errata_id space for errata didn't overlap
with the errata_id space for cpufeatures. It doesn't, atm, but by luck,
not design. I could try to ensure that somehow, but probably the better
approach would be to use the upper bits of errata_id for the application
data and to leave vendor_id alone. Thanks for catching my oversight!

Thanks,
drew


> 
> Cheers,
> Conor.
> 
> >  		if (alt->errata_id >= RISCV_ISA_EXT_MAX) {
> >  			WARN(1, "This extension id:%d is not in ISA extension list",
> >  				alt->errata_id);
> > @@ -300,6 +303,9 @@ void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *begin,
> >  		if (!__riscv_isa_extension_available(NULL, alt->errata_id))
> >  			continue;
> >  
> > +		if (!riscv_cpufeature_application_check(alt->errata_id, alt->vendor_id))
> > +			continue;
> > +
> >  		oldptr = ALT_OLD_PTR(alt);
> >  		altptr = ALT_ALT_PTR(alt);
> >  		patch_text_nosync(oldptr, altptr, alt->alt_len);
> > -- 
> > 2.39.1
> > 


