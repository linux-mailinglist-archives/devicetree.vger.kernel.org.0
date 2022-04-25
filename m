Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BB6B50E202
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 15:36:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232570AbiDYNjY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 09:39:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229658AbiDYNjX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 09:39:23 -0400
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B797BF77
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 06:36:19 -0700 (PDT)
Received: by mail-qk1-f169.google.com with SMTP id d19so10745790qko.3
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 06:36:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PzcuAypNSBrA4FzOmCGUdXDr2QqOvBWfChPUdUSxH4Y=;
        b=D1tOpMNcPcCxMDoXQHrWg3HiW8YVioICv89+DwtnG5SWGN+ZTtr7+4ofXVRZFlE9HE
         6FeJdflOswM0iK1JrbdK1FVha3oVi9S47Fqwj3aEwt/1ohu21ysznSAs7Ob2z2ryjEKN
         7nloN2eihtlSCLAe3SyDWCrHbuw+mN7woNZ1KHtr18RgKLce6hzV6GVYN3QugeD72WDT
         FPVraFCzizUcIX7tD3UrTuNpUd/cX5SZM8CGNSMSKRx/3UQVFC080XiSOEyUp6mGtgjF
         PFEUBhAynJBikF73rQkx0NlbWJ8GNuyQCRCZ4hU+qjbOzAsU7ST3P++bfXAsIERgDXjx
         PUMg==
X-Gm-Message-State: AOAM531Yw9H0WgLJ8rSYSBH+M80cxyE9PfD2/1uM9RA7SsddrDStaC8B
        l5VWGF6uCVHUrdTWPPCRkRGmNi681kX6dg==
X-Google-Smtp-Source: ABdhPJyBx/3EYIWdayRRfBiEOwuui0xwKrdQNEcEv2nvCXXpLDkKpZjCfWHLZHmdNK2PiWnbRqNHUA==
X-Received: by 2002:a05:620a:410c:b0:69f:4772:cbea with SMTP id j12-20020a05620a410c00b0069f4772cbeamr3819998qko.457.1650893778383;
        Mon, 25 Apr 2022 06:36:18 -0700 (PDT)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com. [209.85.128.180])
        by smtp.gmail.com with ESMTPSA id k123-20020a378881000000b0069f60a8fcf8sm1237724qkd.56.2022.04.25.06.36.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 06:36:18 -0700 (PDT)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-2f7d7e3b5bfso34932347b3.5
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 06:36:17 -0700 (PDT)
X-Received: by 2002:a81:8489:0:b0:2f7:edff:239f with SMTP id
 u131-20020a818489000000b002f7edff239fmr4168152ywf.256.1650893777557; Mon, 25
 Apr 2022 06:36:17 -0700 (PDT)
MIME-Version: 1.0
References: <20220422211055.9278-1-palmer@rivosinc.com> <CAMuHMdV7d4XfStMiSmU3eZBb3mdHdsvqJZff358Rf3Cb-Kzx+Q@mail.gmail.com>
 <CAK9=C2WTY8+-98XuxRYTaRe4aVJufaB5wr35KRoTKEttUM7JzQ@mail.gmail.com>
In-Reply-To: <CAK9=C2WTY8+-98XuxRYTaRe4aVJufaB5wr35KRoTKEttUM7JzQ@mail.gmail.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Mon, 25 Apr 2022 15:36:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV4aZ1U2CGjSOSvFsq-rHKq34wyS-TMvR=7kX68YQHFjQ@mail.gmail.com>
Message-ID: <CAMuHMdV4aZ1U2CGjSOSvFsq-rHKq34wyS-TMvR=7kX68YQHFjQ@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Allow the used to downgrade to sv48 when HW
 supports sv57
To:     Anup Patel <apatel@ventanamicro.com>
Cc:     Palmer Dabbelt <palmer@rivosinc.com>,
        Alexandre Ghiti <alexandre.ghiti@canonical.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Anup,

On Mon, Apr 25, 2022 at 3:14 PM Anup Patel <apatel@ventanamicro.com> wrote:
> On Mon, Apr 25, 2022 at 6:12 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Fri, Apr 22, 2022 at 11:42 PM Palmer Dabbelt <palmer@rivosinc.com> wrote:
> > > Similar to the previous patch, this allows a dt-selected downgrade to
> > > sv48 on systems that support sv57 in case users don't need the extra VA
> > > bits and want to save memory or improve performance.
> > >
> > > Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
> > > ---
> > > This is on top of the patches from Alex's set that I dropped.
> >
> > You mean "[PATCH v3 13/13] riscv: Allow user to downgrade to sv39
> > when hw supports sv48 if !KASAN"?
> > 20211206104657.433304-14-alexandre.ghiti@canonical.com
> >
> > For both: "DT describes hardware, not software policy"?
>
> It is possible that HW is designed to support both Sv48 and Sv39 but
> there is some errata due to which Sv48 does not work correctly ?

In that case, I assume the software has to disable Sv48 on its own?
Fixed hardware should use a different compatible value, so software
will know when the issue is fixed, and the feature can be used.
How else is DTB backwards-compatibility supposed to work?

> We should allow users to downgrade the MMU mode, due to
> their own reasons. In fact, users can also disable an extension
> by not showing it in the DT ISA string.

That sounds like a software policy, too.
What is wrong with a kernel command line option?
If you want it in your DTB, you can add it to chosen/bootargs.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
