Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D09E6919C1
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 09:06:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231409AbjBJIG1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 03:06:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231837AbjBJIFu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 03:05:50 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F43476D1F
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 00:05:25 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id m2so13601596ejb.8
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 00:05:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YmDT4zBOv7f5zRYd/LGifmvLvDTU12OHORT99G1LfOU=;
        b=Y9zpKSImEri04j45mKwlwM/eZAqNEzxYls5b0gDiTbUkhmHKXlUzSnJAcc5CQWEr1y
         Gvxk6Rn8WpZDY1RCzcyXg0pGMkFBcxINtHSMZddcKPjXhYD/5P9Vwx0B36agZT1hFOdK
         Tk+l2ypqlkeKXymvELryxGdGfP8SU7yMZ7mtkQWwAWyA4HjkRBjK9GimVT15ktAd7/Oh
         aeQm352qT3lkhQBbvoy3mHbFadvAjOtuWoiy//uiv87Phz1YA8rfk3jO+7mHXoMxKSmE
         4yKgJLHbveUe+iYTefT9cqX41+4+/1w3RqLyz4NibTN5cNtR8aeUux//zDuSnBsvyW7k
         vNEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YmDT4zBOv7f5zRYd/LGifmvLvDTU12OHORT99G1LfOU=;
        b=brJMycuKOWSpLyZrKRLzI4MDnFIv4psYbboeyaYsGy02dtrXc/EDGABuC+SVIDRPCP
         tO3xlEGss/lNhXIqAvwMcnLyxKgM3neVdrSMHOEMIaD0te6C0l/jQq2sc5UkK0P1ar3h
         n/SMm99e0nI9S1KUlNT5QlpRUHwgeDA4tJkuvVtC39i5AyoKgBv0gXp3OxGI+M1w4yng
         IENuQBpNkPKcRs97q9HI9HE61V0EfgJkceDskkxfzN+QOOY4cJZZZIbgXA0MUD9tZozU
         BDzeQ/nrlPj0BsmdPv2UlUNkBhGHzARbHGfvFgES9/v+u5lrOUvZSgr5URCkyQ1Fx+2i
         4akQ==
X-Gm-Message-State: AO0yUKUMqauVYjb1iybWRGerDfXIM10Hr05riupqo2Lj0Oy5N/f8TfKN
        //3PmoP0Lk0yxNfJ5Wf+iKn+nQ==
X-Google-Smtp-Source: AK7set/GmZ7x5k7vkcggDqpyfSq4+49rR67zA9Au4+fWjYyYJduZ7NpbIFaApG4e7v1zNQg0P0/Okw==
X-Received: by 2002:a17:906:edbb:b0:887:2248:efd5 with SMTP id sa27-20020a170906edbb00b008872248efd5mr16697995ejb.77.1676016316810;
        Fri, 10 Feb 2023 00:05:16 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id o12-20020a170906768c00b007bff9fb211fsm2031989ejm.57.2023.02.10.00.05.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 00:05:16 -0800 (PST)
Date:   Fri, 10 Feb 2023 09:05:15 +0100
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
Subject: Re: [PATCH v4 6/8] RISC-V: Use Zicboz in clear_page when available
Message-ID: <20230210080515.lbguxxg4efxudjzg@orel>
References: <20230209152628.129914-1-ajones@ventanamicro.com>
 <20230209152628.129914-7-ajones@ventanamicro.com>
 <Y+VFAUZ2smkKO0EZ@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y+VFAUZ2smkKO0EZ@spud>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 09, 2023 at 07:09:53PM +0000, Conor Dooley wrote:
> On Thu, Feb 09, 2023 at 04:26:26PM +0100, Andrew Jones wrote:
> > Using memset() to zero a 4K page takes 563 total instructions, where
> > 20 are branches. clear_page(), with Zicboz and a 64 byte block size,
> > takes 169 total instructions, where 4 are branches and 33 are nops.
> > Even though the block size is a variable, thanks to alternatives, we
> > can still implement a Duff device without having to do any preliminary
> > calculations. This is achieved by taking advantage of 'vendor_id'
> > being used as application-specific data for alternatives, enabling us
> > to stop patching / unrolling when 4K bytes have been zeroed (we would
> > loop and continue after 4K if the page size would be larger)
> > 
> > For 4K pages, unrolling 16 times allows block sizes of 64 and 128 to
> > only loop a few times and larger block sizes to not loop at all. Since
> > cbo.zero doesn't take an offset, we also need an 'add' after each
> > instruction, making the loop body 112 to 160 bytes. Hopefully this
> > is small enough to not cause icache misses.
> > 
> > Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> 
> > diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> > index 74736b4f0624..42246bbfa532 100644
> > --- a/arch/riscv/kernel/cpufeature.c
> > +++ b/arch/riscv/kernel/cpufeature.c
> > @@ -280,6 +280,17 @@ void __init riscv_fill_hwcap(void)
> >  #ifdef CONFIG_RISCV_ALTERNATIVE
> >  static bool riscv_cpufeature_application_check(u32 feature, u16 data)
> >  {
> > +	switch (feature) {
> > +	case RISCV_ISA_EXT_ZICBOZ:
> > +		/*
> > +		 * Zicboz alternative applications provide the maximum
> 
> I like the comment, rather than this being some wizardry.
> I find the word "applications" to be a little unclear, perhaps, iff this
> series needs a respin, this would work better as "Users of the Zicboz
> alternative provide..." (or s/Users/Callers)?

Right, "applications" is an overloaded word. "users" is probably a better
choice. "callers" isn't quite right, to me, since it's a code patching
"application" / "use". Do you think the function name should change as
well?

Thanks,
drew

> 
> > +		 * supported block size order, or zero when it doesn't
> > +		 * matter. If the current block size exceeds the maximum,
> > +		 * then the alternative cannot be applied.
> > +		 */
> > +		return data == 0 || riscv_cboz_block_size <= (1U << data);
> > +	}
> > +
> >  	return data == 0;
> >  }


