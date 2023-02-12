Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16398693873
	for <lists+devicetree@lfdr.de>; Sun, 12 Feb 2023 17:26:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229481AbjBLQ0d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Feb 2023 11:26:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229477AbjBLQ0c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Feb 2023 11:26:32 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36CED11164
        for <devicetree@vger.kernel.org>; Sun, 12 Feb 2023 08:26:31 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id eq11so9986832edb.6
        for <devicetree@vger.kernel.org>; Sun, 12 Feb 2023 08:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3PCYy6Wbh7GsA27zvT/r5W62MOOvZT1L4mCL8SLtH5Y=;
        b=FjcwRHU/TfAzQU0y6k9Qnc5WV+05vgp/eF+XzNlZO0UrGQT+a0ShpXhneDxozggAHT
         xjo9triMvt6QUQN0hJY+ukUpVLzgshbOx1DCj4zg6RCY0C4R1fpUCRwqM0L3UpCmaDtV
         ApMEdoS+Oz9NtZW9Qs+fwwF99N55C8Qic5dGCVXhHTBiMDcS9oTIgLn0lxLNeobZTGYQ
         MFRk0M312Who+wBXtzW3bwsDE9BkpiBE38gqmp9/40k/FgUaFe0v3PXrzmhxFwx8LjZD
         T62lhV2nEKzL/MwA1alcbNfLryI8z+t77UPJnaf2IlV5DpZnHMzzTHxnDNdTCZumjUUW
         d/Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3PCYy6Wbh7GsA27zvT/r5W62MOOvZT1L4mCL8SLtH5Y=;
        b=J6aoZw9ouXBQEpWYj0gIz5yGMua8GNFZL2xYDJw9wRnyBfWqQTsIvMVramW3i813J2
         A2xwfl+pWclYUHEZv6F62tL+qTxO1aVB7bnW5yF2+6Js+Js+SYeWf1HNppaQnZ3rlsPK
         dCdHsJQgx/aiD4mo6xPv35OVuU5TfyuikwKALnu3dhV7aJUpQhIbI2EBQSDy4HfwZoZ2
         96+aPtZmGqdnbXlwTnSvDc4WwFpZv8Ew8bnEIlG3rUFhZGoRBc3DaFvpw4LyE2CYb8Cg
         K1o54dqKfWU3cEggd/QdI9idp9SRNhTQp7GHdxOQtdxkl6VKE5OLP2uRd1J7nvnRYsj3
         nPng==
X-Gm-Message-State: AO0yUKUJU1c3YCSA3PlTe1kGoH7vV5zCFUbWOMClOj/cBH/AUTAehJYY
        tJ1ErOb968NclFyZXIiZQk/Rkg==
X-Google-Smtp-Source: AK7set9ZPfY01Ct3ZIJaSAiXOKv2Api9L0ewq9QnDS38whEHPPbgFxAwFAtPcgJDTdZ1UKAn2rDazg==
X-Received: by 2002:a50:8d1d:0:b0:4ac:c4ed:f1d5 with SMTP id s29-20020a508d1d000000b004acc4edf1d5mr1694361eds.1.1676219189631;
        Sun, 12 Feb 2023 08:26:29 -0800 (PST)
Received: from localhost ([145.224.109.44])
        by smtp.gmail.com with ESMTPSA id z16-20020a5096d0000000b004aad0a9144fsm5395432eda.51.2023.02.12.08.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Feb 2023 08:26:29 -0800 (PST)
Date:   Sun, 12 Feb 2023 17:26:27 +0100
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
Message-ID: <20230212162627.4k76d7y3b3rgezkw@orel>
References: <20230209152628.129914-1-ajones@ventanamicro.com>
 <20230209152628.129914-6-ajones@ventanamicro.com>
 <Y+VD2/owMIvqzOx8@spud>
 <20230210075818.chh5myc2tmcvjplc@orel>
 <Y+apG/nVSLJY8nsN@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y+apG/nVSLJY8nsN@spud>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 10, 2023 at 08:29:15PM +0000, Conor Dooley wrote:
> On Fri, Feb 10, 2023 at 08:58:18AM +0100, Andrew Jones wrote:
> > On Thu, Feb 09, 2023 at 07:04:59PM +0000, Conor Dooley wrote:
> > > On Thu, Feb 09, 2023 at 04:26:25PM +0100, Andrew Jones wrote:
> 
> > > > +static bool riscv_cpufeature_application_check(u32 feature, u16 data)
> > > > +{
> > > > +	return data == 0;
> > > > +}
> > > > +
> > > >  void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *begin,
> > > >  						  struct alt_entry *end,
> > > >  						  unsigned int stage)
> > > > @@ -289,8 +294,6 @@ void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *begin,
> > > >  		return;
> > > >  
> > > >  	for (alt = begin; alt < end; alt++) {
> > > > -		if (alt->vendor_id != 0)
> > > > -			continue;
> > > 
> > > Can you remind me what makes this "safe"?
> > > My understanding was that a vendor_id of zero was safe, as zero is
> > > reserved in JEDEC.
> > > What is stopping someone stuffing this with a given value and
> > > colliding with a real vendor's errata?
> > > 
> > > 	for (alt = begin; alt < end; alt++) {
> > > 		if (alt->vendor_id != A_VENDOR_ID)
> > > 			continue;
> > > 		if (alt->errata_id >= ERRATA_A_NUMBER)
> > > 			continue;
> > > 
> > > 		tmp = (1U << alt->errata_id);
> > > 		if (cpu_req_errata & tmp) {
> > > 			oldptr = ALT_OLD_PTR(alt);
> > > 			altptr = ALT_ALT_PTR(alt);
> > > 
> > > 			/* On vm-alternatives, the mmu isn't running yet */
> > > 			if (stage == RISCV_ALTERNATIVES_EARLY_BOOT)
> > > 				memcpy((void *)__pa_symbol(oldptr),
> > > 				       (void *)__pa_symbol(altptr),
> > > 				       alt->alt_len);
> > > 			else
> > > 				patch_text_nosync(oldptr, altptr, alt->alt_len);
> > > 		}
> > > 	}
> > > 
> > > I've probably just missing something, my brain swapped out alternatives
> > > the other week. Hopefully whatever I missed isn't embarrassingly obvious!
> > 
> > You're right. I was assuming the errata_id space for errata didn't overlap
> > with the errata_id space for cpufeatures. It doesn't, atm, but by luck,
> > not design. I could try to ensure that somehow, but probably the better
> > approach would be to use the upper bits of errata_id for the application
> > data and to leave vendor_id alone. Thanks for catching my oversight!
> 
> Sounds like a better idea at least.
> I suppose the ideal would be to add another arg and not abuse things,
> but maybe that's one for the future, idk.

We could add another arg without too much trouble and even use some macro
trickier to only pass it when it's needed. OTOH, the errata_id is 32-bits,
which is overkill, since errata are assigned increasing integers from
zero, and I don't want to over-bloat this structure. Maybe I can split
errata_id into two 16-bit parameters to avoid completely adding yet
another.

> Is this somewhere that an assertion should be used to make sure that
> we don't grow the list of extensions such that the regions collide?

It's probably best to split errata_id for the application data and not
worry about collisions.

Thanks,
drew
