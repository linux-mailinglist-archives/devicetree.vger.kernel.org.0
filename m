Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 244DC63C64F
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 18:19:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235803AbiK2RT6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 12:19:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235518AbiK2RT4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 12:19:56 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2A635CD3C
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 09:19:54 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id ho10so35506299ejc.1
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 09:19:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rcfNJDB/SPFar05tRAQ4XbFIBs41bTotwtAiczfQytA=;
        b=pKfr46NivMRoazFYCmMgGr86P0DCpWLWIZq54gg7bYNcUwAnUKIpE8Uh5dMxrOsXND
         Jh1GEnDD1tVjdgQiLrQWYgOGDn2szQYeRgKLhdiGaWnGt87ha4lG5iAZ8+2vTQkikk7A
         ydlz405bXk/FZiGtcbJbSzwzIKjgWjIt48Zp6A0rOWxO+VIyrCsum5BN8tvkGVTGtN8u
         ZItmq/k3qNdFSaukLi0EAAo96AHOxbuESBOqskkbQEWDhW6rfb9RWkb8NdiUR+O8YB6D
         bDyUTAj3t/VO8j0MHqP1X/340B/PFIu5rC34XIPHj7k3s3GxcumMI4eq49/Jg+C5mWIL
         O5iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rcfNJDB/SPFar05tRAQ4XbFIBs41bTotwtAiczfQytA=;
        b=KvVWywG6pXvLpLk7E1rqQiUWY03AfvQSBC6zaAYOBJzoOkkZgvfv77W/1GnYh1z9Id
         +Zubldch9BgyQDW8mzZDTEvj14xUMkU5QU3H7UUXV7msxp0Rm3gypxgHDCAs/Jpra+jB
         C2rNa4syHj5NhJfF7lqgxXLGVJAieVZqnBSU9M1IlJHWs1DDL+vZB5AkkPTDRO8y0AWD
         X2DThUwKzaC8FHxfdreiRz7urvf/gVtkqT6SBBW49KNRNE7dZmf19pE03DI6lArPyP5e
         sAxD/mTrLxKXvV7mpDFxubPdrl81eIFmi1W/RKI3PzC2dDDyvX8wowmR30QqiY7jE1uG
         2AKg==
X-Gm-Message-State: ANoB5pnmYL52YlUNoOFsZDIevTEqXwgHRkpZpdv0SAIBrpTAOmc5/rK2
        IlzSA6kKOxHFQlMpZHZ00+qewg==
X-Google-Smtp-Source: AA0mqf5fK0juVQzXx7vLs2lrbZZ3iyStH9xvDM2YhCQfNv3ohLBkWAHl1/ZYl9thPwx3ZmDYFwVleg==
X-Received: by 2002:a17:906:7f96:b0:7b2:b782:73 with SMTP id f22-20020a1709067f9600b007b2b7820073mr33042080ejr.641.1669742393483;
        Tue, 29 Nov 2022 09:19:53 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-748-2a9a-a2a6-1362.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:748:2a9a:a2a6:1362])
        by smtp.gmail.com with ESMTPSA id g18-20020a17090670d200b00773f3ccd989sm6366572ejk.68.2022.11.29.09.19.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Nov 2022 09:19:53 -0800 (PST)
Date:   Tue, 29 Nov 2022 18:19:51 +0100
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Conor Dooley <conor@kernel.org>
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
        devicetree@vger.kernel.org, guoren@kernel.org, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
        palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org
Subject: Re: [RFC 1/2] RISC-V: clarify ISA string ordering rules in cpu.c
Message-ID: <20221129171951.6kvvleeny5e2x2nk@kamzik>
References: <Y4XvnHIPw8ZuBZEk@wendy>
 <20221129144742.2935581-2-conor.dooley@microchip.com>
 <20221129161223.gelsvctfnqg7pdwb@kamzik>
 <Y4Y5O83NCNr1TOAy@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y4Y5O83NCNr1TOAy@spud>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 29, 2022 at 04:54:19PM +0000, Conor Dooley wrote:
> On Tue, Nov 29, 2022 at 05:12:23PM +0100, Andrew Jones wrote:
> > On Tue, Nov 29, 2022 at 02:47:42PM +0000, Conor Dooley wrote:
> > > While the list of rules may have been accurate when created, it now
> > > lacks some clarity in the face of isa-manual updates. Specifically:
> > > 
> > > - there is no mention here of a distinction between regular 'Z'
> > >   extensions which are "Additional Standard Extensions" and "Zxm"
> > >   extensions which are "Standard Machine-Level Extensions"
> > > 
> > > - there is also no explicit mention of where either should be sorted in
> > >   the list
> > > 
> > > - underscores are only required between two *multi-letter* extensions but
> > >   the list of rules implies that this is required between a multi-letter
> > >   extension and any other extension. IOW "rv64imafdzicsr_zifencei" is a
> > >   valid string
> > > 
> > > Attempt to clean up the list of rules, by adding information on the
> > > above & sprinkling in some white space for readability.
> > > 
> > > Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> > > ---
> > >  arch/riscv/kernel/cpu.c | 22 +++++++++++++++++-----
> > >  1 file changed, 17 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
> > > index 852ecccd8920..5e42c92a8456 100644
> > > --- a/arch/riscv/kernel/cpu.c
> > > +++ b/arch/riscv/kernel/cpu.c
> > > @@ -120,20 +120,32 @@ device_initcall(riscv_cpuinfo_init);
> > >  		.uprop = #UPROP,				\
> > >  		.isa_ext_id = EXTID,				\
> > >  	}
> > > +
> > >  /*
> > >   * Here are the ordering rules of extension naming defined by RISC-V
> > >   * specification :
> > > - * 1. All extensions should be separated from other multi-letter extensions
> > > - *    by an underscore.
> > > + *
> > > + * 1. All multi-letter extensions should be separated from other multi-letter
> > > + *    extensions by an underscore.
> > > + *
> > >   * 2. The first letter following the 'Z' conventionally indicates the most
> > >   *    closely related alphabetical extension category, IMAFDQLCBKJTPVH.
> > > - *    If multiple 'Z' extensions are named, they should be ordered first
> > > - *    by category, then alphabetically within a category.
> > > + *    'Z' extensions should be sorted after single-letter extensions and before
> > > + *    any higher-privileged extensions.
> > > + *    If multiple 'Z' extensions are named, they should be ordered first by
> > > + *    category, then alphabetically within a category.
> > > + *
> > >   * 3. Standard supervisor-level extensions (starts with 'S') should be
> > >   *    listed after standard unprivileged extensions.  If multiple
> > >   *    supervisor-level extensions are listed, they should be ordered
> > >   *    alphabetically.
> > > - * 4. Non-standard extensions (starts with 'X') must be listed after all
> > > + *
> > > + * 4  Standard machine-level extensions (starts with 'Zxm') should be
> > > + *    listed after any lower-privileged, standard extensions.  If multiple
> > > + *    machine-level extensions are listed, they should be ordered
> > > + *    alphabetically.
> > > + *
> > > + * 5. Non-standard extensions (starts with 'X') must be listed after all
> > >   *    standard extensions. They must be separated from other multi-letter
> > >   *    extensions by an underscore.
> > >   */
> > > -- 
> > > 2.38.1
> > >
> > 
> > Alternatively, we could change the comment to just point out the spec
> > chapter and provide an example, e.g.
> 
> IDK, maybe add the reference & the example but keep the summary?

It risks needing to synchronize the comment with the spec. Also, the
comment doesn't need to reproduce the flexible specifications, since
Linux has a single implementation (it always puts an underscore between
single-letter extensions and the first multi-letter extension, for
example). So, rather than paraphrase too much of the spec, we could just
point out Linux's specific implementation (with the help of an example).

I don't feel that strongly about it though, so we can keep the text
the spec paraphrasing too.

Thanks,
drew

> 
> > /*
> >  * The canonical order of ISA extension names in the ISA string is defined in
> >  * chapter 27 of the unprivileged spec. An example string following the
> >  * order is
> >  *
> >  *   rv64imadc_zifoo_zigoo_zafoo_sbar_scar_zxmbaz_xqux_xrux
> >  *
> >  * Notice how Z-extensions are first sorted by category using the canonical
> >  * order of the first letter following the Z. Extension groups are in the
> >  * order specified in chapter 27. Extensions within each group are sorted
> >  * alphabetically.
> >  */
> > 
> > 
> > Thanks,
> > drew
